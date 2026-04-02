resource "aws_backup_vault" "this" {
  count       = var.enabled ? 1 : 0
  name        = "${local.prefix}-backup-vault"
  kms_key_arn = var.kms_key_arn
  tags        = merge(local.common_tags, var.tags)
}

resource "aws_backup_plan" "this" {
  count = var.enabled ? 1 : 0
  name  = "${local.prefix}-backup-plan"

  rule {
    rule_name         = "daily"
    target_vault_name = aws_backup_vault.this[0].name
    schedule          = "cron(0 3 * * ? *)"

    lifecycle {
      delete_after = 30
    }
  }

  tags = merge(local.common_tags, var.tags)
}