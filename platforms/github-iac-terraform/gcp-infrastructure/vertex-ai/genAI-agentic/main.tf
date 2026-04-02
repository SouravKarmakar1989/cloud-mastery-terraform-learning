resource "google_project_service" "vertex" {
  service            = "aiplatform.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}

resource "google_storage_bucket" "agent_artifacts" {
  name                        = "${local.name_prefix}-${var.bucket_name_suffix}-${var.project_id}"
  location                    = var.region
  uniform_bucket_level_access = true
  force_destroy               = var.environment != "prod"
  project                     = var.project_id
  labels                      = local.common_labels

  depends_on = [google_project_service.vertex]
}