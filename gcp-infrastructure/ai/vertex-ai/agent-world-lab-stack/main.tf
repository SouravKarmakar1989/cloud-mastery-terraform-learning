module "cost_guardrails" {
  source = "../modules/shared-cost-guardrails"

  feature_flags = var.feature_flags
}

module "gcp_core" {
  source = "../modules/gcp-agentworld-core"

  platform_short = var.platform_short
  environment    = var.environment
  project_id     = var.gcp_project_id
  region         = var.gcp_region
  feature_flags  = module.cost_guardrails.effective_flags
  labels         = local.gcp_labels
}

module "optional_observability" {
  source = "../modules/platform-observability-optional"

  environment   = var.environment
  feature_flags = module.cost_guardrails.effective_flags
}
