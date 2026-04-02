# database/cloud-spanner — Cloud Spanner
#
# GCP equivalent of Azure SQL (globally distributed tier) / Azure Cosmos DB (multi-region).
# Fully managed, horizontally scalable, globally consistent relational database.
# Supports both Google Standard SQL and PostgreSQL dialects.
# Used for mission-critical workloads requiring 99.999% availability.
#
# Cost:
#   - 100 Processing Units (0.1 node): ~$90/month (smallest unit)
#   - 1 node (1000 PU): ~$900/month per region
#   - Multi-region configs: 3–5× single-region cost
#   - Storage: $0.30/GB/month
#   - Free trial: 90-day free trial via Google Cloud Free Program

resource "google_spanner_instance" "main" {
  name             = "${local.name_prefix}-spanner"
  display_name     = "${local.name_prefix} Spanner"
  config           = "regional-${var.region}"
  processing_units = var.processing_units
  project          = var.project_id
  labels           = local.common_labels
}

resource "google_spanner_database" "db" {
  name             = var.database_name
  instance         = google_spanner_instance.main.name
  database_dialect = var.database_dialect
  project          = var.project_id

  deletion_protection = var.environment == "prod"
}
