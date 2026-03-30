locals {
  gcp_region_short = replace(lower(var.gcp_region), "-", "")

  gcp_name_prefix = "${lower(var.platform_short)}-gcp-tools-${lower(var.environment)}-${local.gcp_region_short}"

  shared_tags = {
    platform    = lower(var.project_name)
    env         = lower(var.environment)
    owner       = lower(var.owner)
    cost_center = lower(var.cost_center)
    data_class  = lower(var.data_class)
    managed_by  = "terraform"
  }

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
