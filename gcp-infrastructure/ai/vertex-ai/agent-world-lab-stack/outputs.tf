output "mode" {
  value = "gcp-vertex-ai-agent-world-lab"
}

output "gcp_name_prefix" {
  value = local.gcp_name_prefix
}

output "gcp_plan" {
  value = module.gcp_core.planned_resources
}

output "feature_flags" {
  value = module.cost_guardrails.effective_flags
}
