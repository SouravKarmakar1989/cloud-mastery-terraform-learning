locals {
  region_short = replace(lower(var.azure_location), " ", "")
  name_prefix  = "${lower(var.platform_short)}-az-core-${lower(var.environment)}-${local.region_short}"

  tags = {
    platform    = lower(var.project_name)
    env         = lower(var.environment)
    owner       = lower(var.owner)
    cost_center = lower(var.cost_center)
    data_class  = lower(var.data_class)
    cloud       = "azure"
    managed_by  = "terraform"
  }
}
