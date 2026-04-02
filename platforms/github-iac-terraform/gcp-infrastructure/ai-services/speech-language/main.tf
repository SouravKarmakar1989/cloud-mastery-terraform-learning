resource "google_project_service" "speech" {
  service            = "speech.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}

resource "google_project_service" "language" {
  service            = "language.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}