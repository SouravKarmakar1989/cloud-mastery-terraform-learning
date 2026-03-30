output "mode" {
  value = "mode-a-azure"
}

output "name_prefix" {
  value = local.name_prefix
}

output "azure_plan" {
  value = module.azure_core.planned_resources
}

output "feature_flags" {
  value = module.cost_guardrails.effective_flags
}

output "observability_plan" {
  value = module.optional_observability.plan
}
