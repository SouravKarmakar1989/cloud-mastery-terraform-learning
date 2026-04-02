output "trail_arn" {
  description = "CloudTrail ARN"
  value       = aws_cloudtrail.this.arn
}

output "trail_id" {
  description = "CloudTrail ID"
  value       = aws_cloudtrail.this.id
}

output "log_bucket_id" {
  description = "CloudTrail S3 bucket ID"
  value       = aws_s3_bucket.this.id
}

output "cloudwatch_log_group_name" {
  description = "CloudWatch log group name for CloudTrail"
  value       = aws_cloudwatch_log_group.this.name
}
