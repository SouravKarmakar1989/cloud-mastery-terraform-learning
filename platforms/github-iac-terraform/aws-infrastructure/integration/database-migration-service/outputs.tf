output "dms_subnet_group_id" {
  description = "DMS replication subnet group ID"
  value       = try(aws_dms_replication_subnet_group.this[0].id, null)
}