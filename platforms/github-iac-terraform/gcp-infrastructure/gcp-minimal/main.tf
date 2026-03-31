resource "google_storage_bucket" "main" {
  name                        = local.bucket_name
  location                    = var.region
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"
  force_destroy               = var.environment != "prod"

  versioning {
    enabled = true
  }

  labels = local.common_labels
}
