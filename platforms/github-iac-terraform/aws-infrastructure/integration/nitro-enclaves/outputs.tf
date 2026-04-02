output "service_log_group_name" {
  description = "CloudWatch log group for nitro-enclaves"
  value       = try(aws_cloudwatch_log_group.service[0].name, null)
}

output "service_policy_arn" {
  description = "IAM policy ARN for nitro-enclaves"
  value       = try(aws_iam_policy.service_access[0].arn, null)
}