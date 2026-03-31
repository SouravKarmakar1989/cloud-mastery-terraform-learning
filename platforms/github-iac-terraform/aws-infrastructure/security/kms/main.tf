# ---------------------------------------------------------------------------
# security/kms — AWS KMS Customer Managed Keys (CMKs)
#
# Implements (Task 1.3 – Data Security Controls):
#   • CMKs for S3, RDS, EBS, Secrets Manager, CloudWatch Logs
#   • Key policies using least-privilege principle:
#       - Account root has full key administration (emergency access)
#       - Explicit admin principals (Terraform deployer role)
#       - Explicit user principals (services consuming the key)
#       - No wildcard grants — all access scoped to specific principals
#   • Automatic annual key rotation enabled by default
#   • Key aliases for human-readable references
#   • Deletion protection via configurable pending-deletion window
#
# SAA-C03 mapping:
#   • Encrypting data at rest (KMS) — Task 1.3
#   • Implementing access policies for encryption keys — Task 1.3
#   • Rotating encryption keys — Task 1.3
#   • Aligning AWS technologies to meet compliance requirements — Task 1.3
# ---------------------------------------------------------------------------

data "aws_caller_identity" "current" {}
data "aws_partition" "current" {}

# ── Customer Managed Keys ─────────────────────────────────────────────────────

resource "aws_kms_key" "this" {
  for_each = var.customer_managed_keys

  description              = each.value.description
  key_usage                = each.value.key_usage
  enable_key_rotation      = each.value.enable_rotation
  deletion_window_in_days  = each.value.deletion_window
  multi_region             = each.value.multi_region
  is_enabled               = true

  # Key Policy: least-privilege with explicit admin and user separation
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = concat(
      [
        # Root account emergency access (required to prevent key lockout)
        {
          Sid    = "EnableRootAccountAccess"
          Effect = "Allow"
          Principal = {
            AWS = "arn:${data.aws_partition.current.partition}:iam::${data.aws_caller_identity.current.account_id}:root"
          }
          Action   = "kms:*"
          Resource = "*"
        },
        # Terraform deploy role / CI-CD — key administration
        {
          Sid    = "AllowKeyAdministration"
          Effect = "Allow"
          Principal = {
            AWS = concat(
              ["arn:${data.aws_partition.current.partition}:iam::${data.aws_caller_identity.current.account_id}:root"],
              each.value.additional_admins
            )
          }
          Action = [
            "kms:Create*",
            "kms:Describe*",
            "kms:Enable*",
            "kms:List*",
            "kms:Put*",
            "kms:Update*",
            "kms:Revoke*",
            "kms:Disable*",
            "kms:Get*",
            "kms:Delete*",
            "kms:TagResource",
            "kms:UntagResource",
            "kms:ScheduleKeyDeletion",
            "kms:CancelKeyDeletion",
            "kms:RotateKeyOnDemand"
          ]
          Resource = "*"
        },
        # AWS services: allow use via service-linked roles
        {
          Sid    = "AllowAWSServicesUse"
          Effect = "Allow"
          Principal = {
            Service = [
              "logs.${var.region}.amazonaws.com",
              "s3.amazonaws.com",
              "secretsmanager.amazonaws.com",
              "sns.amazonaws.com",
              "sqs.amazonaws.com",
              "cloudtrail.amazonaws.com",
              "config.amazonaws.com"
            ]
          }
          Action = [
            "kms:GenerateDataKey*",
            "kms:Decrypt",
            "kms:DescribeKey"
          ]
          Resource = "*"
          Condition = {
            StringEquals = {
              "kms:CallerAccount" = data.aws_caller_identity.current.account_id
            }
          }
        }
      ],
      # Additional explicit user principals
      length(each.value.additional_users) > 0 ? [
        {
          Sid    = "AllowKeyUsers"
          Effect = "Allow"
          Principal = {
            AWS = each.value.additional_users
          }
          Action = [
            "kms:Encrypt",
            "kms:Decrypt",
            "kms:ReEncrypt*",
            "kms:GenerateDataKey*",
            "kms:DescribeKey"
          ]
          Resource = "*"
        }
      ] : []
    )
  })

  tags = merge(local.common_tags, {
    Name    = "${local.prefix}-cmk-${each.key}"
    KeyName = each.key
  })
}

# ── Key Aliases ───────────────────────────────────────────────────────────────

resource "aws_kms_alias" "this" {
  for_each = var.customer_managed_keys

  name          = "alias/${local.prefix}-${each.key}"
  target_key_id = aws_kms_key.this[each.key].key_id
}
