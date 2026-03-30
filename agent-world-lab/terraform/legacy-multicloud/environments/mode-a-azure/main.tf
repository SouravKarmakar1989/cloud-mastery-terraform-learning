module "cost_guardrails" {
  source = "../../modules/shared-cost-guardrails"

  feature_flags = var.feature_flags
}

module "azure_core" {
  source = "../../modules/azure-agentworld-core"

  platform_short = var.platform_short
  environment    = var.environment
  location       = var.azure_location
  feature_flags  = module.cost_guardrails.effective_flags
  tags           = local.tags
}

module "optional_observability" {
  source = "../../modules/platform-observability-optional"

  environment   = var.environment
  feature_flags = module.cost_guardrails.effective_flags
}
