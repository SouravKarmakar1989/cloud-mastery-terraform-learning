locals {
  prefix = "${var.project}-${var.environment}"
  azs    = [for az in keys(var.public_subnets) : "${var.region}${az}"]

  nat_count = var.single_nat_gateway ? 1 : length(var.public_subnets)

  common_tags = {
    project     = var.project
    environment = var.environment
    module      = "vpc-secure"
    managed_by  = "terraform"
    repo        = "github-iac-terraform"
  }
}
