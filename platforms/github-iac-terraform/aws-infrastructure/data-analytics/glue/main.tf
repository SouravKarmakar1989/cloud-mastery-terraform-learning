resource "aws_glue_catalog_database" "this" {
  count = var.enabled ? 1 : 0
  name  = "${replace(local.prefix, "-", "_")}_${var.database_name}"
}