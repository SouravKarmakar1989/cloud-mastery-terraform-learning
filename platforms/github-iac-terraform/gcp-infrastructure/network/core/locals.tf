locals {
  name_prefix = "${var.prefix}-${var.environment}"
  vpc_name    = var.vpc_name != "" ? var.vpc_name : "${local.name_prefix}-vpc"

  common_labels = {
    environment = var.environment
    managed_by  = "terraform"
    repo        = "github-iac-terraform"
    module      = "network/core"
  }
}
