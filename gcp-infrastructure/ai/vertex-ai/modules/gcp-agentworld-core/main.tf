module "naming" {
  source = "../shared-labels"

  platform_short = var.platform_short
  cloud_short    = "gcp"
  workload       = "tools"
  environment    = var.environment
  region_short   = replace(lower(var.region), "-", "")
  extra_tags     = var.labels
}

locals {
  planned_resources = {
    cloud_run_service_prefix = "${module.naming.name_prefix}-run"
    storage_bucket_prefix    = "${module.naming.name_prefix}-gcs"
    optional_firestore       = "${module.naming.name_prefix}-fs"
    gcp_advanced_enabled     = var.feature_flags.enable_gcp_advanced
  }
}
