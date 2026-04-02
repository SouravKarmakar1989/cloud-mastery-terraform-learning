# database/firestore — Cloud Firestore
#
# GCP equivalent of Azure Cosmos DB (NoSQL / document model).
# Serverless, fully managed NoSQL document database with real-time sync.
# Supports ACID transactions, rich queries, and offline mobile SDK.
#
# Cost:
#   - Storage: $0.06/GB/month (Firestore Native mode)
#   - Reads:   $0.06/100K document reads
#   - Writes:  $0.18/100K document writes
#   - Deletes: $0.02/100K document deletes
#   - Free tier: 1 GB storage, 50K reads/day, 20K writes/day, 20K deletes/day

resource "google_project_service" "firestore" {
  service            = "firestore.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}

resource "google_firestore_database" "db" {
  name                        = "(default)"
  location_id                 = var.region
  type                        = "FIRESTORE_NATIVE"
  concurrency_mode            = var.concurrency_mode
  app_engine_integration_mode = var.app_engine_integration_mode
  project                     = var.project_id

  depends_on = [google_project_service.firestore]
}
