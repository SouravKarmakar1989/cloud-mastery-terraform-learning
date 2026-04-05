resource "google_project_service" "iocumentai" {
  service            = "documentai.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}

resource "google_document_ai_processor" "processor" {
  location     = var.region
  display_name = "docai"
  type         = var.processor_type
  project      = var.project_id

  depends_on = [google_project_service.iocumentai]
}