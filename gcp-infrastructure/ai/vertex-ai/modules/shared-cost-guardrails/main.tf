locals {
  effective = var.feature_flags

  advanced_capabilities_enabled = anytrue([
    local.effective.enable_azure_foundry,
    local.effective.enable_bedrock_agentcore,
    local.effective.enable_gcp_advanced,
    local.effective.enable_vector_store,
    local.effective.enable_observability_stack
  ])
}
