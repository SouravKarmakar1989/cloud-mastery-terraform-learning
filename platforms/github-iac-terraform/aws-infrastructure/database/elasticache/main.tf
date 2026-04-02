resource "aws_elasticache_subnet_group" "this" {
  name       = "${local.prefix}-cache-subnets"
  subnet_ids = var.subnet_ids
}

resource "aws_elasticache_replication_group" "this" {
  replication_group_id       = "${local.prefix}-redis"
  description                = "${local.prefix} redis"
  node_type                  = var.node_type
  engine                     = "redis"
  engine_version             = var.engine_version
  port                       = 6379
  subnet_group_name          = aws_elasticache_subnet_group.this.name
  security_group_ids         = var.security_group_ids
  num_cache_clusters         = var.num_cache_clusters
  automatic_failover_enabled = var.num_cache_clusters > 1
  at_rest_encryption_enabled = true
  transit_encryption_enabled = true
  tags                       = local.common_tags
}
