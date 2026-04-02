locals {
  prefix = "${var.project}-${var.environment}"

  common_tags = {
    project     = var.project
    environment = var.environment
    module      = "glacier"
    managed_by  = "terraform"
    repo        = "github-iac-terraform"
  }
}
