resource "aws_timestreamwrite_database" "this" {
  database_name = "${local.prefix}-${var.database_name}"
  tags          = local.common_tags
}

resource "aws_timestreamwrite_table" "this" {
  database_name = aws_timestreamwrite_database.this.database_name
  table_name    = "${local.prefix}-${var.table_name}"

  retention_properties {
    memory_store_retention_period_in_hours  = var.memory_store_retention_hours
    magnetic_store_retention_period_in_days = var.magnetic_store_retention_days
  }

  tags = local.common_tags
}
