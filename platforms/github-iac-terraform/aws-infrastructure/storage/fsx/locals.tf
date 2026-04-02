locals {
  prefix = "${var.project}-${var.environment}"

  common_tags = {
    project     = var.project
    environment = var.environment
    module      = "fsx"
    managed_by  = "terraform"
    repo        = "github-iac-terraform"
  }
}
