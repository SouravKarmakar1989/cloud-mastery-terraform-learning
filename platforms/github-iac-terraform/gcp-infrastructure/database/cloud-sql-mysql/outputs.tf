output "instance_name" { value = google_sql_database_instance.mysql.name }
output "connection_name" { value = google_sql_database_instance.mysql.connection_name }
output "private_ip" { value = google_sql_database_instance.mysql.private_ip_address }
output "database_name" { value = google_sql_database.db.name }
