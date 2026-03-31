output "key_ids" {
  description = "Map of logical key name → KMS Key ID"
  value       = { for k, key in aws_kms_key.this : k => key.key_id }
}

output "key_arns" {
  description = "Map of logical key name → KMS Key ARN"
  value       = { for k, key in aws_kms_key.this : k => key.arn }
}

output "key_aliases" {
  description = "Map of logical key name → KMS alias name"
  value       = { for k, alias in aws_kms_alias.this : k => alias.name }
}

output "s3_key_arn" {
  description = "ARN of the S3 CMK (shortcut output)"
  value       = try(aws_kms_key.this["s3"].arn, null)
}

output "rds_key_arn" {
  description = "ARN of the RDS CMK (shortcut output)"
  value       = try(aws_kms_key.this["rds"].arn, null)
}

output "secrets_key_arn" {
  description = "ARN of the Secrets Manager CMK (shortcut output)"
  value       = try(aws_kms_key.this["secrets"].arn, null)
}

output "ebs_key_arn" {
  description = "ARN of the EBS CMK (shortcut output)"
  value       = try(aws_kms_key.this["ebs"].arn, null)
}

output "logs_key_arn" {
  description = "ARN of the CloudWatch Logs CMK (shortcut output)"
  value       = try(aws_kms_key.this["logs"].arn, null)
}

output "account_id" {
  description = "AWS account ID"
  value       = data.aws_caller_identity.current.account_id
}
