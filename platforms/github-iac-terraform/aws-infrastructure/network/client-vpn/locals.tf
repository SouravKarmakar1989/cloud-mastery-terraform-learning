locals {
  prefix = "${var.project}-${var.environment}"

  common_tags = {
    project     = var.project
    environment = var.environment
    module      = "client-vpn"
    managed_by  = "terraform"
    repo        = "github-iac-terraform"
  }
}
