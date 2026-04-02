resource "google_storage_bucket" "datalake" {
  name                        = local.bucket_name
  location                    = var.region
  storage_class               = var.storage_class
  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"
  force_destroy               = var.environment != "prod"
  project                     = var.project_id
  labels                      = local.common_labels

  versioning {
    enabled = true
  }

  hierarchical_namespace {
    enabled = var.enable_hierarchical_namespace
  }

  lifecycle_rule {
    action {
      type          = "SetStorageClass"
      storage_class = "NEARLINE"
    }
    condition {
      age                   = 30
      matches_storage_class = ["STANDARD"]
    }
  }

  lifecycle_rule {
    action {
      type          = "SetStorageClass"
      storage_class = "COLDLINE"
    }
    condition {
      age                   = 90
      matches_storage_class = ["NEARLINE"]
    }
  }
}