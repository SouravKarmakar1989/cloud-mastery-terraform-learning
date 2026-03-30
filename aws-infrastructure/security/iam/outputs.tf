output "password_policy_id" {
  description = "ID of the account password policy resource"
  value       = aws_iam_account_password_policy.strict.id
}

output "mfa_policy_arn" {
  description = "ARN of the MFA enforcement IAM policy"
  value       = var.force_mfa_on_console ? aws_iam_policy.require_mfa[0].arn : null
}

output "group_arns" {
  description = "Map of group name → ARN for all created IAM groups"
  value       = { for k, g in aws_iam_group.this : k => g.arn }
}

output "user_arns" {
  description = "Map of username → ARN for all created IAM users"
  value       = { for k, u in aws_iam_user.this : k => u.arn }
}

output "cross_account_role_arn" {
  description = "ARN of the cross-account read role (for STS assume-role)"
  value       = length(var.cross_account_role_arns) > 0 ? aws_iam_role.cross_account_read[0].arn : null
}

output "workload_role_arn" {
  description = "ARN of the workload EC2/ECS IAM role"
  value       = aws_iam_role.workload.arn
}

output "workload_instance_profile_arn" {
  description = "ARN of the EC2 instance profile"
  value       = aws_iam_instance_profile.workload.arn
}

output "github_actions_role_arn" {
  description = "ARN of the GitHub Actions OIDC deploy role"
  value       = aws_iam_role.github_actions.arn
}

output "github_oidc_provider_arn" {
  description = "ARN of the GitHub Actions OIDC identity provider"
  value       = aws_iam_openid_connect_provider.github_actions.arn
}

output "account_id" {
  description = "AWS account ID"
  value       = data.aws_caller_identity.current.account_id
}
