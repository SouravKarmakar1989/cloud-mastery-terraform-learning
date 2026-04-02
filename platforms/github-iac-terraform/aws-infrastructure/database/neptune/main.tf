resource "aws_neptune_subnet_group" "this" {
  name       = "${local.prefix}-neptune-subnets"
  subnet_ids = var.subnet_ids
  tags       = local.common_tags
}

resource "aws_neptune_cluster" "this" {
  cluster_identifier        = "${local.prefix}-neptune"
  neptune_subnet_group_name = aws_neptune_subnet_group.this.name
  vpc_security_group_ids    = var.security_group_ids
  skip_final_snapshot       = var.environment != "prod"
  backup_retention_period   = var.environment == "prod" ? 14 : 3
  tags                      = local.common_tags
}

resource "aws_neptune_cluster_instance" "this" {
  cluster_identifier = aws_neptune_cluster.this.id
  instance_class     = var.instance_class
  identifier         = "${local.prefix}-neptune-1"
  tags               = local.common_tags
}
