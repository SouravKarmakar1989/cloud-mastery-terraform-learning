locals {
  aws_region_short = replace(lower(var.aws_region), "-", "")

  aws_name_prefix = "${lower(var.platform_short)}-aws-tools-${lower(var.environment)}-${local.aws_region_short}"

  shared_tags = {
    platform    = lower(var.project_name)
    env         = lower(var.environment)
    owner       = lower(var.owner)
    cost_center = lower(var.cost_center)
    data_class  = lower(var.data_class)
    managed_by  = "terraform"
  }

  aws_tags = merge(local.shared_tags, { cloud = "aws" })
}
