resource "google_project_service" "vision" {
  service            = "vision.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}