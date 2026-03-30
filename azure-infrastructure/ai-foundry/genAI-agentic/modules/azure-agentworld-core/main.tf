module "naming" {
  source = "../shared-labels"

  platform_short = var.platform_short
  cloud_short    = "az"
  workload       = "core"
  environment    = var.environment
  region_short   = replace(lower(var.location), " ", "")
  extra_tags     = var.tags
}

locals {
  planned_resources = {
    resource_group_name          = "${module.naming.name_prefix}-rg"
    container_apps_env_name      = "${module.naming.name_prefix}-cae"
    api_container_app_name       = "${module.naming.name_prefix}-api"
    web_container_app_name       = "${module.naming.name_prefix}-web"
    storage_account_name_pattern = "${replace(module.naming.name_prefix, "-", "")}st"
  }
}
