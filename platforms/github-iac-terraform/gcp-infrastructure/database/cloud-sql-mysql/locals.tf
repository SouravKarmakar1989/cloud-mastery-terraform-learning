locals {
  name_prefix   = "${var.prefix}-${var.environment}"
  instance_name = "${local.name_prefix}-mysqldb"

  common_labels = {
    environment = var.environment
    managed_by  = "terraform"
    repo        = "github-iac-terraform"
    module      = "database/cloud-sql-mysql"
  }
}
