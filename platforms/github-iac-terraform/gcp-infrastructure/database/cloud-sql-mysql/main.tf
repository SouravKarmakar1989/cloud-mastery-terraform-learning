# database/cloud-sql-mysql — Cloud SQL for MySQL
#
# GCP equivalent of Azure Database for MySQL Flexible Server.
# Managed MySQL 8.0 with automatic backups, HA (regional), and read replicas.
#
# Cost:
#   - db-f1-micro: ~$7/month (shared vCPU, 0.6 GB RAM)
#   - db-g1-small: ~$25/month (shared vCPU, 1.7 GB RAM)
#   - Storage: $0.17/GB/month SSD

resource "google_sql_database_instance" "mysql" {
  name                = local.instance_name
  database_version    = var.mysql_version
  region              = var.region
  project             = var.project_id
  deletion_protection = var.deletion_protection

  settings {
    tier              = var.tier
    availability_type = var.environment == "prod" ? "REGIONAL" : "ZONAL"
    disk_size         = var.disk_size_gb
    disk_type         = "PD_SSD"
    disk_autoresize   = true

    backup_configuration {
      enabled            = true
      binary_log_enabled = true # Required for read replicas
      start_time         = "02:00"
    }

    ip_configuration {
      ipv4_enabled = false
    }

    user_labels = local.common_labels
  }
}

resource "google_sql_database" "db" {
  name     = var.database_name
  instance = google_sql_database_instance.mysql.name
  project  = var.project_id
}

resource "google_sql_user" "admin" {
  name     = var.mysql_admin
  instance = google_sql_database_instance.mysql.name
  password = var.mysql_admin_password
  project  = var.project_id
  host     = "%"
}
