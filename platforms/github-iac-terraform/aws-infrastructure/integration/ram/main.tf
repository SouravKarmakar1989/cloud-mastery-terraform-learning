resource "aws_ram_resource_share" "this" {
  count                     = var.enabled ? 1 : 0
  name                      = "${local.prefix}-share"
  allow_external_principals = var.allow_external_principals
  tags                      = merge(local.common_tags, var.tags)
}