locals {
  naming = {
    platform_short = lower(var.platform_short)
    environment    = lower(var.environment)
  }

  required_tags = {
    platform    = lower(var.project_name)
    env         = lower(var.environment)
    owner       = lower(var.owner)
    cost_center = lower(var.cost_center)
    data_class  = lower(var.data_class)
    managed_by  = "terraform"
  }

  azure_tags = merge(local.required_tags, {
    cloud = "azure"
  })

  aws_tags = merge(local.required_tags, {
    cloud = "aws"
  })

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
