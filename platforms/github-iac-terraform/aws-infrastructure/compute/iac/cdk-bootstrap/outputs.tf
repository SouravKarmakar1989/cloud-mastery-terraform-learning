output "assets_bucket" { value = aws_s3_bucket.assets.bucket }
output "cdk_deploy_role_arn" { value = aws_iam_role.cdk_deploy.arn }
