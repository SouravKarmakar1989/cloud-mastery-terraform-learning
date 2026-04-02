resource "google_bigquery_dataset" "analytics" {
  dataset_id                 = replace("_", "-", "_")
  location                   = var.region
  project                    = var.project_id
  delete_contents_on_destroy = var.environment != "prod"
  labels                     = local.common_labels
}