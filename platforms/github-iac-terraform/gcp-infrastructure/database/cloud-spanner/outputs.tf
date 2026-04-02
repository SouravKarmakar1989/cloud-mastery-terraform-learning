output "spanner_instance_id" { value = google_spanner_instance.main.name }
output "database_name" { value = google_spanner_database.db.name }
output "spanner_state" { value = google_spanner_instance.main.state }
