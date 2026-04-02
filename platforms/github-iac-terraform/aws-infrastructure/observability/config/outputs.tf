output "config_recorder_name" {
  description = "AWS Config recorder name"
  value       = aws_config_configuration_recorder.this.name
}

output "config_delivery_bucket" {
  description = "S3 bucket used for Config snapshots"
  value       = aws_s3_bucket.this.id
}

output "config_role_arn" {
  description = "IAM role ARN for AWS Config"
  value       = aws_iam_role.config.arn
}
