locals {
  name_prefix = "${var.prefix}-${var.environment}"

  common_labels = {
    environment = var.environment
    managed_by  = "terraform"
    repo        = "github-iac-terraform"
    module      = "network/armor"
  }
}
