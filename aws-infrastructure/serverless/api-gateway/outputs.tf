output "api_id" {
  description = "ID of the REST API"
  value       = aws_api_gateway_rest_api.main.id
}

output "api_arn" {
  description = "ARN of the REST API"
  value       = aws_api_gateway_rest_api.main.arn
}

output "execution_arn" {
  description = "Execution ARN used to form Lambda permission source ARNs"
  value       = aws_api_gateway_rest_api.main.execution_arn
}

output "stage_name" {
  description = "Deployed stage name"
  value       = aws_api_gateway_stage.main.stage_name
}

output "invoke_url" {
  description = "Base URL for the deployed API stage"
  value       = aws_api_gateway_stage.main.invoke_url
}

output "region" {
  description = "AWS region where resources were created"
  value       = var.region
}
