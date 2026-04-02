resource "google_app_engine_application" "app" {
  project        = var.project_id
  location_id    = var.region
  serving_status = var.serving_status
}