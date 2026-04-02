resource "aws_memorydb_subnet_group" "this" {
  name       = "${local.prefix}-memorydb-subnets"
  subnet_ids = var.subnet_ids
}

resource "aws_memorydb_cluster" "this" {
  name               = "${local.prefix}-memorydb"
  acl_name           = "open-access"
  node_type          = var.node_type
  num_shards         = var.num_shards
  subnet_group_name  = aws_memorydb_subnet_group.this.name
  security_group_ids = var.security_group_ids
  tls_enabled        = true
  tags               = local.common_tags
}
