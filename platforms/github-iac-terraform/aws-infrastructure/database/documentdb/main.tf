resource "aws_docdb_subnet_group" "this" {
  name       = "${local.prefix}-docdb-subnets"
  subnet_ids = var.subnet_ids
  tags       = local.common_tags
}

resource "aws_docdb_cluster" "this" {
  cluster_identifier      = "${local.prefix}-docdb"
  master_username         = var.master_username
  master_password         = var.master_password
  db_subnet_group_name    = aws_docdb_subnet_group.this.name
  vpc_security_group_ids  = var.security_group_ids
  skip_final_snapshot     = var.environment != "prod"
  backup_retention_period = var.environment == "prod" ? 14 : 3
  tags                    = local.common_tags
}

resource "aws_docdb_cluster_instance" "this" {
  identifier         = "${local.prefix}-docdb-1"
  cluster_identifier = aws_docdb_cluster.this.id
  instance_class     = var.instance_class
  tags               = local.common_tags
}
