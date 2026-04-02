resource "google_storage_bucket" "src" {
  name                        = "${local.name_prefix}-fn-src-${var.project_id}"
  location                    = var.region
  uniform_bucket_level_access = true
  force_destroy               = var.environment != "prod"
  project                     = var.project_id
}

resource "google_storage_bucket_object" "archive" {
  name    = "function-source.zip"
  bucket  = google_storage_bucket.src.name
  content = "placeholder"
}

resource "google_cloudfunctions2_function" "fn" {
  name     = "${local.name_prefix}-${var.function_name}"
  location = var.region
  project  = var.project_id

  build_config {
    runtime     = var.runtime
    entry_point = var.entry_point
    source {
      storage_source {
        bucket = google_storage_bucket.src.name
        object = google_storage_bucket_object.archive.name
      }
    }
  }

  service_config {
    max_instance_count = 3
    available_memory   = "256M"
    timeout_seconds    = 60
    ingress_settings   = "ALLOW_ALL"
  }

  labels = local.common_labels
}