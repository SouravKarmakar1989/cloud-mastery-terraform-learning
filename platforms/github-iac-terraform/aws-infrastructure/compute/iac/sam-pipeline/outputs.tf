output "artifacts_bucket" { value = aws_s3_bucket.artifacts.bucket }
output "artifacts_bucket_arn" { value = aws_s3_bucket.artifacts.arn }
output "sam_pipeline_role_arn" { value = aws_iam_role.sam_pipeline.arn }
