output "templates_bucket" { value = aws_s3_bucket.templates.bucket }
output "templates_bucket_arn" { value = aws_s3_bucket.templates.arn }
output "cloudformation_execution_role_arn" { value = aws_iam_role.cloudformation_execution.arn }
