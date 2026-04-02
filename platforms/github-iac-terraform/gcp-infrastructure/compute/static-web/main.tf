resource "google_storage_bucket" "static" {
  name                        = "${local.name_prefix}-static-${var.project_id}"
  location                    = var.region
  uniform_bucket_level_access = true
  force_destroy               = var.environment != "prod"
  project                     = var.project_id
  labels                      = local.common_labels

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}

resource "google_storage_bucket_iam_member" "public" {
  bucket = google_storage_bucket.static.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}