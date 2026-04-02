output "resource_group_arn" {
  description = "Resource group ARN"
  value       = try(aws_resourcegroups_group.this[0].arn, null)
}