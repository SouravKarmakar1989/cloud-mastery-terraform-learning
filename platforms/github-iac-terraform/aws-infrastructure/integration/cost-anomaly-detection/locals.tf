locals {
  prefix = "${var.project}-${var.environment}"

  common_tags = {
    project     = var.project
    environment = var.environment
    module      = "cost-anomaly-detection"
    managed_by  = "terraform"
    repo        = "github-iac-terraform"
  }
}