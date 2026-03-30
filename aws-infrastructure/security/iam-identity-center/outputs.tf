output "permission_set_arns" {
  description = "Map of permission set name → ARN"
  value       = { for k, ps in aws_ssoadmin_permission_set.this : k => ps.arn }
}

output "group_ids" {
  description = "Map of group logical name → Identity Store group ID"
  value       = { for k, g in aws_identitystore_group.this : k => g.group_id }
}

output "account_assignment_ids" {
  description = "Map of assignment key → resource ID for all account assignments"
  value       = { for k, a in aws_ssoadmin_account_assignment.this : k => a.id }
}

output "account_id" {
  description = "AWS account ID"
  value       = data.aws_caller_identity.current.account_id
}
