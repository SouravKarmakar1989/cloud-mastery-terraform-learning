resource "aws_servicecatalog_portfolio" "this" {
  count         = var.enabled ? 1 : 0
  name          = "${local.prefix}-portfolio"
  provider_name = var.provider_name
  description   = "Service Catalog portfolio managed by Terraform"

  tags = merge(local.common_tags, var.tags)
}