output "backup_vault_name" {
  description = "Backup vault name"
  value       = try(aws_backup_vault.this[0].name, null)
}

output "backup_plan_id" {
  description = "Backup plan ID"
  value       = try(aws_backup_plan.this[0].id, null)
}