output "execution_role_arn" {
  description = "ARN of the shared Lambda execution IAM role"
  value       = aws_iam_role.execution.arn
}

output "common_layer_arn" {
  description = "ARN of the common Lambda layer (including version)"
  value       = aws_lambda_layer_version.common.arn
}

# Individual function ARNs — consumed by api-gateway, step-functions, and appsync modules

output "list_students_arn" {
  description = "ARN of the ListStudents Lambda function"
  value       = aws_lambda_function.functions["list_students"].arn
}

output "get_student_arn" {
  description = "ARN of the GetStudent Lambda function"
  value       = aws_lambda_function.functions["get_student"].arn
}

output "create_student_arn" {
  description = "ARN of the CreateStudent Lambda function"
  value       = aws_lambda_function.functions["create_student"].arn
}

output "update_student_arn" {
  description = "ARN of the UpdateStudent Lambda function"
  value       = aws_lambda_function.functions["update_student"].arn
}

output "delete_student_arn" {
  description = "ARN of the DeleteStudent Lambda function"
  value       = aws_lambda_function.functions["delete_student"].arn
}

output "start_certification_arn" {
  description = "ARN of the StartCertification Lambda function"
  value       = aws_lambda_function.functions["start_certification"].arn
}

output "get_certification_status_arn" {
  description = "ARN of the GetCertificationStatus Lambda function"
  value       = aws_lambda_function.functions["get_certification_status"].arn
}

output "validate_student_arn" {
  description = "ARN of the ValidateStudent Lambda function (Step Functions task)"
  value       = aws_lambda_function.functions["validate_student"].arn
}

output "check_eligibility_arn" {
  description = "ARN of the CheckEligibility Lambda function (Step Functions task)"
  value       = aws_lambda_function.functions["check_eligibility"].arn
}

output "mark_certification_arn" {
  description = "ARN of the MarkCertification Lambda function (Step Functions task)"
  value       = aws_lambda_function.functions["mark_certification"].arn
}

output "persist_workflow_result_arn" {
  description = "ARN of the PersistWorkflowResult Lambda function (Step Functions task)"
  value       = aws_lambda_function.functions["persist_workflow_result"].arn
}

output "publish_status_arn" {
  description = "ARN of the PublishStatus Lambda function (Step Functions task)"
  value       = aws_lambda_function.functions["publish_status"].arn
}

output "appsync_resolver_arn" {
  description = "ARN of the AppSyncResolver Lambda function"
  value       = aws_lambda_function.functions["appsync_resolver"].arn
}

output "function_names" {
  description = "Map of logical name → function name for all deployed functions"
  value       = { for k, fn in aws_lambda_function.functions : k => fn.function_name }
}

output "function_arns" {
  description = "Map of logical name → function ARN for all deployed functions"
  value       = { for k, fn in aws_lambda_function.functions : k => fn.arn }
}

output "account_id" {
  description = "AWS account ID where resources were created"
  value       = data.aws_caller_identity.current.account_id
}

output "region" {
  description = "AWS region where resources were created"
  value       = var.region
}
