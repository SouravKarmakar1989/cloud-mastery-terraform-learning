# ---------------------------------------------------------------------------
# security/iam — IAM baseline for Domain 1: Secure Access
#
# Implements:
#   • Account password policy (complexity, rotation, reuse prevention)
#   • IAM groups with managed policy attachments
#   • IAM users with group membership and console/programmatic access flags
#   • MFA-enforcement deny policy attached to all human groups
#   • Cross-account assume-role with STS (role switching / federation)
#   • Workload EC2/ECS instance role + instance profile
#   • OIDC provider for GitHub Actions (keyless CI/CD — principle of least privilege)
# ---------------------------------------------------------------------------

data "aws_caller_identity" "current" {}
data "aws_partition" "current" {}

# ── Account Password Policy ───────────────────────────────────────────────────
# SAA-C03: applying AWS security best practices for IAM users

resource "aws_iam_account_password_policy" "strict" {
  minimum_password_length        = var.password_minimum_length
  require_uppercase_characters   = true
  require_lowercase_characters   = true
  require_numbers                = true
  require_symbols                = true
  allow_users_to_change_password = true
  hard_expiry                    = false
  max_password_age               = var.max_password_age
  password_reuse_prevention      = var.password_reuse_prevention
}

# ── MFA Enforcement Policy ────────────────────────────────────────────────────
# Denies all actions except MFA self-management when no MFA session is active.
# Attached to human groups when var.force_mfa_on_console = true.

resource "aws_iam_policy" "require_mfa" {
  count = var.force_mfa_on_console ? 1 : 0

  name        = "${local.prefix}-require-mfa"
  description = "Deny all actions (except IAM self-service) unless MFA is active"
  path        = "/security/"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "AllowViewAccountInfo"
        Effect = "Allow"
        Action = [
          "iam:GetAccountPasswordPolicy",
          "iam:ListVirtualMFADevices"
        ]
        Resource = "*"
      },
      {
        Sid    = "AllowManageOwnMFA"
        Effect = "Allow"
        Action = [
          "iam:CreateVirtualMFADevice",
          "iam:EnableMFADevice",
          "iam:GetUser",
          "iam:ListMFADevices",
          "iam:ResyncMFADevice"
        ]
        Resource = [
          "arn:${data.aws_partition.current.partition}:iam::${data.aws_caller_identity.current.account_id}:mfa/$${aws:username}",
          "arn:${data.aws_partition.current.partition}:iam::${data.aws_caller_identity.current.account_id}:user/$${aws:username}"
        ]
      },
      {
        Sid    = "DenyAllExceptListedIfNoMFA"
        Effect = "Deny"
        NotAction = [
          "iam:CreateVirtualMFADevice",
          "iam:EnableMFADevice",
          "iam:GetUser",
          "iam:ListMFADevices",
          "iam:ListVirtualMFADevices",
          "iam:ResyncMFADevice",
          "sts:GetSessionToken"
        ]
        Resource = "*"
        Condition = {
          BoolIfExists = {
            "aws:MultiFactorAuthPresent" = "false"
          }
        }
      }
    ]
  })

  tags = local.common_tags
}

# ── IAM Groups ────────────────────────────────────────────────────────────────

resource "aws_iam_group" "this" {
  for_each = var.iam_groups

  name = "${local.prefix}-${each.key}"
  path = "/groups/"
}

resource "aws_iam_group_policy_attachment" "managed" {
  for_each = {
    for item in flatten([
      for group_name, policies in var.iam_groups : [
        for policy_arn in policies : {
          key        = "${group_name}-${basename(policy_arn)}"
          group      = "${local.prefix}-${group_name}"
          policy_arn = policy_arn
        }
      ]
    ]) : item.key => item
  }

  group      = aws_iam_group.this[split("-", each.value.group)[length(split("-", each.value.group)) - 1]].name
  policy_arn = each.value.policy_arn

  depends_on = [aws_iam_group.this]
}

resource "aws_iam_group_policy_attachment" "mfa_enforcement" {
  for_each = var.force_mfa_on_console ? var.iam_groups : {}

  group      = aws_iam_group.this[each.key].name
  policy_arn = aws_iam_policy.require_mfa[0].arn

  depends_on = [aws_iam_group.this, aws_iam_policy.require_mfa]
}

# ── IAM Users ─────────────────────────────────────────────────────────────────

resource "aws_iam_user" "this" {
  for_each = var.iam_users

  name          = each.key
  path          = "/users/"
  force_destroy = var.environment != "prod"

  tags = merge(local.common_tags, { Name = each.key })
}

resource "aws_iam_user_group_membership" "this" {
  for_each = var.iam_users

  user   = aws_iam_user.this[each.key].name
  groups = [for g in each.value : aws_iam_group.this[g].name]

  depends_on = [aws_iam_user.this, aws_iam_group.this]
}

# ── Cross-Account Role (STS / Role Switching) ─────────────────────────────────
# Allows trusted external account principals to assume this role.
# Models the cross-account access pattern: Account A → sts:AssumeRole → Account B

resource "aws_iam_role" "cross_account_read" {
  count = length(var.cross_account_role_arns) > 0 ? 1 : 0

  name        = "${local.prefix}-cross-account-read"
  description = "Allows trusted accounts to assume read-only access via STS"
  path        = "/cross-account/"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "AllowCrossAccountAssume"
        Effect = "Allow"
        Principal = {
          AWS = var.cross_account_role_arns
        }
        Action = "sts:AssumeRole"
        Condition = {
          Bool = {
            "aws:MultiFactorAuthPresent" = "true"
          }
        }
      }
    ]
  })

  tags = local.common_tags
}

resource "aws_iam_role_policy_attachment" "cross_account_read" {
  count = length(var.cross_account_role_arns) > 0 ? 1 : 0

  role       = aws_iam_role.cross_account_read[0].name
  policy_arn = "arn:${data.aws_partition.current.partition}:iam::aws:policy/ReadOnlyAccess"
}

# ── Workload Role (EC2 / ECS Instance Profile) ────────────────────────────────
# Principle of least privilege: workloads never use long-lived credentials.

resource "aws_iam_role" "workload" {
  name        = "${local.prefix}-${var.workload_role_name}"
  description = "Role assumed by EC2 instances / ECS tasks — no persistent access keys"
  path        = "/workload/"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "AllowEC2Assume"
        Effect = "Allow"
        Principal = {
          Service = [
            "ec2.amazonaws.com",
            "ecs-tasks.amazonaws.com"
          ]
        }
        Action = "sts:AssumeRole"
      }
    ]
  })

  tags = local.common_tags
}

resource "aws_iam_role_policy_attachment" "workload" {
  for_each = toset(var.workload_managed_policies)

  role       = aws_iam_role.workload.name
  policy_arn = each.value
}

resource "aws_iam_instance_profile" "workload" {
  name = "${local.prefix}-${var.workload_role_name}-profile"
  role = aws_iam_role.workload.name
  path = "/workload/"

  tags = local.common_tags
}

# ── GitHub Actions OIDC Provider ──────────────────────────────────────────────
# Enables keyless CI/CD: GitHub Actions assumes an IAM role via OIDC federation
# instead of storing static AWS access keys in GitHub secrets.

resource "aws_iam_openid_connect_provider" "github_actions" {
  url = "https://token.actions.githubusercontent.com"

  client_id_list = ["sts.amazonaws.com"]

  # GitHub's OIDC thumbprint list (rotated periodically)
  thumbprint_list = [
    "6938fd4d98bab03faadb97b34396831e3780aea1",
    "1c58a3a8518e8759bf075b76b750d4f2df264fcd"
  ]

  tags = local.common_tags
}

resource "aws_iam_role" "github_actions" {
  name        = "${local.prefix}-github-actions-deploy"
  description = "Assumed by GitHub Actions via OIDC — no static credentials"
  path        = "/cicd/"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "GitHubOIDC"
        Effect = "Allow"
        Principal = {
          Federated = aws_iam_openid_connect_provider.github_actions.arn
        }
        Action = "sts:AssumeRoleWithWebIdentity"
        Condition = {
          StringEquals = {
            "token.actions.githubusercontent.com:aud" = "sts.amazonaws.com"
          }
          StringLike = {
            "token.actions.githubusercontent.com:sub" = "repo:*:*"
          }
        }
      }
    ]
  })

  tags = local.common_tags
}

resource "aws_iam_role_policy_attachment" "github_actions_deploy" {
  role       = aws_iam_role.github_actions.name
  policy_arn = "arn:${data.aws_partition.current.partition}:iam::aws:policy/ReadOnlyAccess"
}
