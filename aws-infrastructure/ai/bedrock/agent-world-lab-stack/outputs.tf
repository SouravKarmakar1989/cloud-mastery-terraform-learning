output "mode" {
  value = "aws-bedrock-agent-world-lab"
}

output "aws_name_prefix" {
  value = local.aws_name_prefix
}

output "aws_plan" {
  value = module.aws_core.planned_resources
}

output "feature_flags" {
  value = module.cost_guardrails.effective_flags
}
