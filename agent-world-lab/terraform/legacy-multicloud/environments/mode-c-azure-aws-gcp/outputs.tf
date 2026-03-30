output "mode" {
  value = "mode-c-azure-aws-gcp"
}

output "azure_name_prefix" {
  value = local.azure_name_prefix
}

output "aws_name_prefix" {
  value = local.aws_name_prefix
}

output "gcp_name_prefix" {
  value = local.gcp_name_prefix
}

output "azure_plan" {
  value = module.azure_core.planned_resources
}

output "aws_plan" {
  value = module.aws_core.planned_resources
}

output "gcp_plan" {
  value = module.gcp_core.planned_resources
}

output "feature_flags" {
  value = module.cost_guardrails.effective_flags
}
