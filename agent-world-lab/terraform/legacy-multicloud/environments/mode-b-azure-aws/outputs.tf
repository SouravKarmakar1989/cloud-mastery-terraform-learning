output "mode" {
  value = "mode-b-azure-aws"
}

output "azure_name_prefix" {
  value = local.azure_name_prefix
}

output "aws_name_prefix" {
  value = local.aws_name_prefix
}

output "azure_plan" {
  value = module.azure_core.planned_resources
}

output "aws_plan" {
  value = module.aws_core.planned_resources
}

output "feature_flags" {
  value = module.cost_guardrails.effective_flags
}
