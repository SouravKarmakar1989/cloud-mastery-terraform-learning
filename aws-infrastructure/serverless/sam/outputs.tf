output "artifact_bucket_name" {
  description = "Name of the S3 bucket SAM uses to upload packaged artifacts"
  value       = aws_s3_bucket.artifacts.bucket
}

output "artifact_bucket_arn" {
  description = "ARN of the SAM artifact S3 bucket"
  value       = aws_s3_bucket.artifacts.arn
}

output "cfn_execution_role_arn" {
  description = "ARN of the CloudFormation execution role — pass to 'sam deploy --role-arn'"
  value       = aws_iam_role.cfn_execution.arn
}

output "sam_deploy_command" {
  description = "Ready-to-use sam deploy command for this environment"
  value       = <<-CMD
    sam deploy \
      --s3-bucket   ${aws_s3_bucket.artifacts.bucket} \
      --role-arn    ${aws_iam_role.cfn_execution.arn} \
      --stack-name  ${local.prefix}-app \
      --region      ${var.region} \
      --capabilities CAPABILITY_IAM CAPABILITY_AUTO_EXPAND \
      --no-confirm-changeset
  CMD
}

output "ssm_bucket_param" {
  description = "SSM Parameter path storing the artifact bucket name"
  value       = aws_ssm_parameter.artifact_bucket.name
}

output "ssm_role_param" {
  description = "SSM Parameter path storing the CFN role ARN"
  value       = aws_ssm_parameter.cfn_role_arn.name
}

output "account_id" {
  description = "AWS account ID where resources were created"
  value       = data.aws_caller_identity.current.account_id
}

output "region" {
  description = "AWS region where resources were created"
  value       = var.region
}
