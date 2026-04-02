# database/cloud-sql-postgres — Cloud SQL for PostgreSQL
#
# GCP equivalent of Azure Database for PostgreSQL Flexible Server.
# Fully managed PostgreSQL with automatic backups, HA, and read replicas.
#
# Cost:
#   - db-f1-micro: ~$7/month (shared CPU, 0.6 GB RAM) — dev/test only
#   - db-g1-small: ~$25/month (shared CPU, 1.7 GB RAM)
#   - db-custom-2-4096: ~$80/month (2 vCPU, 4 GB RAM)
#   - Storage: $0.17/GB/month (SSD) + $0.17/GB/month backup
#   - HA (regional): ~2× compute cost
#
# ⚠️ No true free tier — db-f1-micro is the cheapest. Delete when not practicing.
# Connect via Cloud SQL Auth Proxy (no public IP needed for private instances).

resource "google_sql_database_instance" "pg" {
  name                = local.instance_name
  database_version    = var.pg_version
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
      enabled                        = true
      start_time                     = "02:00"
      transaction_log_retention_days = 7
      backup_retention_settings {
        retained_backups = 7
      }
    }

    ip_configuration {
      ipv4_enabled    = false
      private_network = null # Set to VPC self-link to use private IP
    }

    user_labels = local.common_labels
  }
}

resource "google_sql_database" "db" {
  name     = var.database_name
  instance = google_sql_database_instance.pg.name
  project  = var.project_id
}

resource "google_sql_user" "admin" {
  name     = var.pg_admin
  instance = google_sql_database_instance.pg.name
  password = var.pg_admin_password
  project  = var.project_id
}
