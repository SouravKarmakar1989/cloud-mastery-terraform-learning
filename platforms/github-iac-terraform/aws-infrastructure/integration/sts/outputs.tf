output "sts_assumable_role_arn" {
  description = "IAM role ARN assumable via STS"
  value       = try(aws_iam_role.sts_assumable[0].arn, null)
}