module "shared_labels" {
  source = "./modules/shared-labels"

  platform_short = var.platform_short
  workload       = "platform"
  environment    = var.environment
  region_short   = "global"
  cloud_short    = "core"
  extra_tags     = local.required_tags
}

module "shared_cost_guardrails" {
  source = "./modules/shared-cost-guardrails"

  feature_flags = var.feature_flags
}
