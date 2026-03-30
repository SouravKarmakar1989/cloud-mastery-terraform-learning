output "state_machine_arn" {
  description = "ARN of the certification workflow state machine"
  value       = aws_sfn_state_machine.certification_workflow.arn
}

output "state_machine_name" {
  description = "Name of the certification workflow state machine"
  value       = aws_sfn_state_machine.certification_workflow.name
}

output "execution_role_arn" {
  description = "ARN of the Step Functions IAM execution role"
  value       = aws_iam_role.execution.arn
}

output "log_group_name" {
  description = "Name of the CloudWatch log group for execution logs"
  value       = aws_cloudwatch_log_group.state_machine.name
}

output "account_id" {
  description = "AWS account ID where resources were created"
  value       = data.aws_caller_identity.current.account_id
}

output "region" {
  description = "AWS region where resources were created"
  value       = var.region
}
