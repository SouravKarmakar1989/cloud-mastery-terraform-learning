locals {
  azure_region_short = replace(lower(var.azure_location), " ", "")
  aws_region_short   = replace(lower(var.aws_region), "-", "")
  gcp_region_short   = replace(lower(var.gcp_region), "-", "")

  azure_name_prefix = "${lower(var.platform_short)}-az-core-${lower(var.environment)}-${local.azure_region_short}"
  aws_name_prefix   = "${lower(var.platform_short)}-aws-tools-${lower(var.environment)}-${local.aws_region_short}"
  gcp_name_prefix   = "${lower(var.platform_short)}-gcp-tools-${lower(var.environment)}-${local.gcp_region_short}"

  shared_tags = {
    platform    = lower(var.project_name)
    env         = lower(var.environment)
    owner       = lower(var.owner)
    cost_center = lower(var.cost_center)
    data_class  = lower(var.data_class)
    managed_by  = "terraform"
  }

  azure_tags = merge(local.shared_tags, { cloud = "azure" })
  aws_tags   = merge(local.shared_tags, { cloud = "aws" })

  gcp_labels = {
    platform    = lower(replace(var.project_name, " ", "-"))
    env         = lower(var.environment)
    owner       = lower(replace(var.owner, " ", "-"))
    cost_center = lower(replace(var.cost_center, " ", "-"))
    data_class  = lower(var.data_class)
    managed_by  = "terraform"
    cloud       = "gcp"
  }
}
