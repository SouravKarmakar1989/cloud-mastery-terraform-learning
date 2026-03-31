locals {
  prefix = "${var.project}-${var.environment}"

  common_tags = {
    project     = var.project
    environment = var.environment
    module      = "acm"
    managed_by  = "terraform"
    repo        = "github-iac-terraform"
  }
}
