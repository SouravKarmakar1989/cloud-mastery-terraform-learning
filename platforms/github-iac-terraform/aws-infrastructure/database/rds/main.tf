resource "aws_db_subnet_group" "this" {
  name       = "${local.prefix}-rds-subnets"
  subnet_ids = var.subnet_ids
  tags       = local.common_tags
}

resource "aws_db_instance" "this" {
  identifier              = "${local.prefix}-${var.identifier}"
  engine                  = var.engine
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  allocated_storage       = var.allocated_storage
  db_name                 = var.db_name
  username                = var.username
  password                = var.password
  db_subnet_group_name    = aws_db_subnet_group.this.name
  vpc_security_group_ids  = var.security_group_ids
  skip_final_snapshot     = var.environment != "prod"
  publicly_accessible     = false
  deletion_protection     = var.environment == "prod"
  backup_retention_period = var.environment == "prod" ? 14 : 3
  tags                    = local.common_tags
}
