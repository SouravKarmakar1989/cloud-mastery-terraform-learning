locals {
  prefix = "-"

  common_tags = {
    project     = var.project
    environment = var.environment
    managed_by  = "terraform"
    component   = "compute-ops-ssm-ec2-profile"
  }
}
