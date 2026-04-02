resource "aws_redshift_subnet_group" "this" {
  count      = var.enabled && length(var.subnet_ids) > 0 ? 1 : 0
  name       = "${local.prefix}-${var.subnet_group_name}"
  subnet_ids = var.subnet_ids
  tags       = merge(local.common_tags, var.tags)
}

resource "aws_redshift_cluster" "this" {
  count                     = var.enabled && length(var.subnet_ids) > 0 ? 1 : 0
  cluster_identifier        = "${local.prefix}-${var.cluster_identifier}"
  database_name             = var.database_name
  master_username           = var.master_username
  master_password           = var.master_password
  node_type                 = var.node_type
  cluster_type              = var.cluster_type
  number_of_nodes           = var.number_of_nodes
  skip_final_snapshot       = true
  cluster_subnet_group_name = aws_redshift_subnet_group.this[0].name

  tags = merge(local.common_tags, var.tags)
}