# =============================================================================
# SAA-C03 Task 1.3 – Determine appropriate data security controls
# Covers: encrypting data at rest (KMS CMK), secrets rotation, access policies,
#         TLS enforcement (deny non-HTTPS), resource-based policies, lifecycle
# =============================================================================

# -----------------------------------------------------------------------------
# Secrets Manager Secrets
# Each secret is encrypted with the provided KMS CMK (data at rest encryption).
# Recovery window prevents accidental permanent deletion.
# -----------------------------------------------------------------------------
resource "aws_secretsmanager_secret" "this" {
  for_each = var.secrets

  name        = "${local.prefix}-${each.key}"
  description = each.value.description

  # Encrypt at rest with a customer-managed KMS key (Task 1.3 – data encryption)
  kms_key_id = var.kms_key_arn != "" ? var.kms_key_arn : null

  # Soft-delete window — secrets are recoverable within this period
  recovery_window_in_days = each.value.recovery_window_in_days

  tags = merge(local.common_tags, { secret_name = each.key })
}

# -----------------------------------------------------------------------------
# Initial Secret Versions
# Stores a placeholder JSON value that must be replaced on first deployment.
# Only created for secrets that do NOT use Lambda rotation (rotation manages its
# own versioning once enabled).
# -----------------------------------------------------------------------------
resource "aws_secretsmanager_secret_version" "this" {
  for_each = { for k, v in var.secrets : k => v if !v.enable_rotation || v.rotation_lambda_arn == "" }

  secret_id     = aws_secretsmanager_secret.this[each.key].id
  secret_string = each.value.initial_value_json
}

# -----------------------------------------------------------------------------
# Automatic Rotation
# Task 1.3: Secrets should be rotated on a schedule to reduce exposure window.
# Requires a Lambda function ARN that performs the rotation logic.
# Only created when both enable_rotation = true AND rotation_lambda_arn is set.
# -----------------------------------------------------------------------------
resource "aws_secretsmanager_secret_rotation" "this" {
  for_each = {
    for k, v in var.secrets : k => v
    if v.enable_rotation && v.rotation_lambda_arn != ""
  }

  secret_id           = aws_secretsmanager_secret.this[each.key].id
  rotation_lambda_arn = each.value.rotation_lambda_arn

  rotation_rules {
    # Rotate on this schedule (days between rotations)
    automatically_after_days = each.value.rotation_days
  }
}

# -----------------------------------------------------------------------------
# Resource-Based Policies
# Task 1.3: Enforce least-privilege access and deny non-TLS requests.
# - If allowed_principal_arns is set → grant those principals GetSecretValue
# - Always deny GetSecretValue unless SecureTransport (HTTPS) — prevents
#   accidental exposure over plaintext connections
# -----------------------------------------------------------------------------
resource "aws_secretsmanager_secret_policy" "this" {
  for_each = var.secrets

  secret_arn = aws_secretsmanager_secret.this[each.key].arn

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = concat(
      # Conditional: grant specific IAM principals read access
      length(each.value.allowed_principal_arns) > 0 ? [
        {
          Sid    = "AllowSecretRead"
          Effect = "Allow"
          Principal = {
            AWS = each.value.allowed_principal_arns
          }
          Action   = ["secretsmanager:GetSecretValue", "secretsmanager:DescribeSecret"]
          Resource = "*"
        }
      ] : [],
      # Always enforce TLS — deny any request not using HTTPS
      [
        {
          Sid    = "DenyNonTLS"
          Effect = "Deny"
          Principal = {
            AWS = "*"
          }
          Action   = "secretsmanager:*"
          Resource = "*"
          Condition = {
            Bool = {
              "aws:SecureTransport" = "false"
            }
          }
        }
      ]
    )
  })
}
