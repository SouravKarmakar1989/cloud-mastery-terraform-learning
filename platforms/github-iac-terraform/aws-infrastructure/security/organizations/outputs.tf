output "organization_id" {
  description = "AWS Organizations ID"
  value       = data.aws_organizations_organization.this.id
}

output "root_id" {
  description = "Root OU ID of the organization"
  value       = data.aws_organizations_organization.this.roots[0].id
}

output "top_level_ou_ids" {
  description = "Map of top-level OU name → ID"
  value       = { for k, ou in aws_organizations_organizational_unit.top_level : k => ou.id }
}

output "nested_ou_ids" {
  description = "Map of nested OU name → ID"
  value       = { for k, ou in aws_organizations_organizational_unit.nested : k => ou.id }
}

output "scp_arns" {
  description = "Map of SCP logical name → policy ARN"
  value       = { for k, scp in aws_organizations_policy.scp : k => scp.arn }
}

output "management_account_id" {
  description = "AWS management account ID"
  value       = data.aws_caller_identity.current.account_id
}
