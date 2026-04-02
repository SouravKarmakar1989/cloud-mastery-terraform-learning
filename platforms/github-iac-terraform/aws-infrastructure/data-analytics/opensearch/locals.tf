locals {
  prefix = "${var.project}-${var.environment}"

  common_tags = {
    project     = var.project
    environment = var.environment
    module      = "opensearch"
    managed_by  = "terraform"
    repo        = "github-iac-terraform"
  }
}