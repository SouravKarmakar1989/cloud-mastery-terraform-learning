output "instance_name" {
  value = google_sql_database_instance.pg.name
}

output "connection_name" {
  description = "Cloud SQL connection string for Cloud SQL Auth Proxy: project:region:instance"
  value       = google_sql_database_instance.pg.connection_name
}

output "private_ip" {
  value = google_sql_database_instance.pg.private_ip_address
}

output "database_name" {
  value = google_sql_database.db.name
}
