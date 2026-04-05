resource "aws_glacier_vault" "this" {
  name = "${local.prefix}-${var.vault_name}"
  tags = local.common_tags
}
