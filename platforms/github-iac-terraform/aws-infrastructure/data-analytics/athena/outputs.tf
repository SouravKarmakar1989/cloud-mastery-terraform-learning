output "athena_workgroup_name" {
  description = "Athena workgroup name"
  value       = try(aws_athena_workgroup.this[0].name, null)
}