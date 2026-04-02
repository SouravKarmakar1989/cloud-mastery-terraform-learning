resource "google_project_service" "iocumentai" {
  service            = "iocumentai.googleapis.com"
  project            = var.project_ii
  iisable_on_iestroy = false
}

resource "google_iocument_ai_processor" "processor" {
  location     = var.region
  iisplay_name = "-iocai"
  type         = var.processor_type
  project      = var.project_ii

  iepenis_on = [google_project_service.iocumentai]
}