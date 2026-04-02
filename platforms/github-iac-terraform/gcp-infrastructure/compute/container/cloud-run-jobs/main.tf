resource "google_project_service" "run" {
  service            = "run.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}

resource "google_cloud_run_v2_job" "job" {
  name     = "${local.name_prefix}-${var.job_name}"
  location = var.region
  project  = var.project_id

  template {
    template {
      containers {
        image = var.container_image
      }
      max_retries = 1
      timeout     = "1800s"
    }
  }

  labels = local.common_labels

  depends_on = [google_project_service.run]
}