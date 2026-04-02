resource "aws_db_subnet_group" "this" {
  name       = "${local.prefix}-aurora-subnets"
  subnet_ids = var.subnet_ids
  tags       = local.common_tags
}

resource "aws_rds_cluster" "this" {
  cluster_identifier      = "${local.prefix}-aurora"
  engine                  = var.engine
  engine_version          = var.engine_version
  database_name           = var.db_name
  master_username         = var.master_username
  master_password         = var.master_password
  db_subnet_group_name    = aws_db_subnet_group.this.name
  vpc_security_group_ids  = var.security_group_ids
  skip_final_snapshot     = var.environment != "prod"
  backup_retention_period = var.environment == "prod" ? 14 : 3
  tags                    = local.common_tags
}

resource "aws_rds_cluster_instance" "this" {
  count                = var.instance_count
  identifier           = "${local.prefix}-aurora-${count.index + 1}"
  cluster_identifier   = aws_rds_cluster.this.id
  instance_class       = var.instance_class
  engine               = aws_rds_cluster.this.engine
  engine_version       = aws_rds_cluster.this.engine_version
  db_subnet_group_name = aws_db_subnet_group.this.name
  tags                 = local.common_tags
}
