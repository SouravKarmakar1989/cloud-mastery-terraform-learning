# ---------------------------------------------------------------------------
# security/organizations — AWS Organizations + Service Control Policies (SCPs)
#
# Implements:
#   • Organizational Unit (OU) hierarchy: Security / Workloads (Dev|Staging|Prod) / Sandbox
#   • SCPs for guardrails applied to OUs:
#       - DenyRootUserActions     (Task 1.1 – principle of least privilege)
#       - DenyLeaveOrganization   (Task 1.1 – multi-account governance)
#       - DenyDisableCloudTrail   (Task 1.3 – data governance / audit trail)
#       - DenyNonApprovedRegions  (Task 1.1 – data residency control)
#       - RequireIMDSv2           (Task 1.2 – secure workload configuration)
#
# NOTE: Requires execution from the management (root) AWS account.
#       AWS Organizations must already be enabled in the account.
# ---------------------------------------------------------------------------

data "aws_caller_identity" "current" {}
data "aws_organizations_organization" "this" {}

# ── Root OU reference ─────────────────────────────────────────────────────────

locals {
  root_id = data.aws_organizations_organization.this.roots[0].id

  # Separate top-level OUs from nested ones
  top_level_ous = {
    for name, parent in var.organizational_units : name => parent
    if parent == "root"
  }

  nested_ous = {
    for name, parent in var.organizational_units : name => parent
    if parent != "root"
  }

  # Build combined SCP map: policy_name → policy document
  enabled_scps = merge(
    var.deny_root_user_actions ? { DenyRootUserActions = local.scp_deny_root } : {},
    var.deny_leave_organization ? { DenyLeaveOrganization = local.scp_deny_leave_org } : {},
    var.deny_disable_cloudtrail ? { DenyDisableCloudTrail = local.scp_deny_disable_cloudtrail } : {},
    length(var.deny_non_approved_regions) > 0 ? { DenyNonApprovedRegions = local.scp_deny_non_approved_regions } : {},
    var.require_imdsv2 ? { RequireIMDSv2 = local.scp_require_imdsv2 } : {}
  )
}

# ── SCP Policy Documents ──────────────────────────────────────────────────────

locals {
  scp_deny_root = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "DenyRootUser"
        Effect    = "Deny"
        Action    = "*"
        Resource  = "*"
        Condition = {
          StringLike = {
            "aws:PrincipalArn" = [
              "arn:aws:iam::*:root"
            ]
          }
        }
      }
    ]
  })

  scp_deny_leave_org = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid      = "DenyLeaveOrganization"
        Effect   = "Deny"
        Action   = "organizations:LeaveOrganization"
        Resource = "*"
      }
    ]
  })

  scp_deny_disable_cloudtrail = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "DenyCloudTrailModification"
        Effect = "Deny"
        Action = [
          "cloudtrail:DeleteTrail",
          "cloudtrail:StopLogging",
          "cloudtrail:UpdateTrail",
          "cloudtrail:PutEventSelectors"
        ]
        Resource = "*"
      }
    ]
  })

  scp_deny_non_approved_regions = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "DenyNonApprovedRegions"
        Effect = "Deny"
        NotAction = [
          # Global services that are region-agnostic
          "cloudfront:*",
          "iam:*",
          "route53:*",
          "support:*",
          "sts:*",
          "organizations:*",
          "health:*",
          "wafv2:*",
          "shield:*"
        ]
        Resource = "*"
        Condition = {
          StringNotEquals = {
            "aws:RequestedRegion" = var.deny_non_approved_regions
          }
        }
      }
    ]
  })

  scp_require_imdsv2 = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "RequireIMDSv2"
        Effect = "Deny"
        Action = "ec2:RunInstances"
        Resource = [
          "arn:aws:ec2:*:*:instance/*"
        ]
        Condition = {
          StringNotEquals = {
            "ec2:MetadataHttpTokens" = "required"
          }
        }
      },
      {
        Sid    = "DenyIMDSv1Modification"
        Effect = "Deny"
        Action = "ec2:ModifyInstanceMetadataOptions"
        Resource = "*"
        Condition = {
          StringEquals = {
            "ec2:MetadataHttpTokens" = "optional"
          }
        }
      }
    ]
  })
}

# ── Organizational Units — Top Level ─────────────────────────────────────────

resource "aws_organizations_organizational_unit" "top_level" {
  for_each = local.top_level_ous

  name      = each.key
  parent_id = local.root_id
}

# ── Organizational Units — Nested ────────────────────────────────────────────

resource "aws_organizations_organizational_unit" "nested" {
  for_each = local.nested_ous

  name      = each.key
  parent_id = aws_organizations_organizational_unit.top_level[each.value].id

  depends_on = [aws_organizations_organizational_unit.top_level]
}

# ── Service Control Policies ──────────────────────────────────────────────────

resource "aws_organizations_policy" "scp" {
  for_each = local.enabled_scps

  name        = "${local.prefix}-scp-${lower(replace(each.key, "/([A-Z])/", "-$1"))}"
  description = "SCP: ${each.key} — managed by Terraform"
  type        = "SERVICE_CONTROL_POLICY"
  content     = each.value

  tags = local.common_tags
}

# ── Attach SCPs to Target OUs ────────────────────────────────────────────────
# Creates a cross-product of (enabled SCPs × target OUs)

locals {
  scp_ou_attachments = flatten([
    for scp_name, scp_policy in aws_organizations_policy.scp : [
      for ou_name in var.scp_target_ou_names : {
        key      = "${scp_name}-${ou_name}"
        scp_name = scp_name
        ou_name  = ou_name
      }
    ]
  ])
}

resource "aws_organizations_policy_attachment" "scp_to_ou" {
  for_each = { for a in local.scp_ou_attachments : a.key => a }

  policy_id = aws_organizations_policy.scp[each.value.scp_name].id

  # Resolve target OU ID: check top-level first, then nested
  target_id = (
    contains(keys(aws_organizations_organizational_unit.top_level), each.value.ou_name)
    ? aws_organizations_organizational_unit.top_level[each.value.ou_name].id
    : aws_organizations_organizational_unit.nested[each.value.ou_name].id
  )

  depends_on = [
    aws_organizations_organizational_unit.top_level,
    aws_organizations_organizational_unit.nested,
    aws_organizations_policy.scp
  ]
}
