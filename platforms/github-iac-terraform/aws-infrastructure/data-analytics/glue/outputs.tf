output "glue_catalog_database_name" {
  description = "Glue catalog database name"
  value       = try(aws_glue_catalog_database.this[0].name, null)
}