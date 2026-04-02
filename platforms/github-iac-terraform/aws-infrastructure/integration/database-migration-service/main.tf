resource "aws_dms_replication_subnet_group" "this" {
  count                                = var.enabled && length(var.subnet_ids) > 0 ? 1 : 0
  replication_subnet_group_id          = "${replace(local.prefix, "_", "-")}-dms-subnets"
  replication_subnet_group_description = "DMS subnet group for ${local.prefix}"
  subnet_ids                           = var.subnet_ids

  tags = merge(local.common_tags, var.tags)
}