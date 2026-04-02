# storage/cloud-storage — Google Cloud Storage Bucket
#
# GCP equivalent of Azure Blob Storage.
# Object storage for unstructured data, media, backups, and static assets.
#
# Cost (us-central1):
#   - STANDARD: $0.020/GB/month
#   - NEARLINE:  $0.010/GB/month (min 30-day storage, $0.01/GB retrieval)
#   - COLDLINE:  $0.004/GB/month (min 90-day, $0.02/GB retrieval)
#   - ARCHIVE:   $0.0012/GB/month (min 365-day, $0.05/GB retrieval)
#   - Operations: Standard Class A $0.05/10K ops, Class B $0.004/10K ops
#   - Free tier: 5 GB STANDARD storage in us-east1/us-west1/us-central1

resource "google_storage_bucket" "main" {
  name                        = local.bucket_name
  location                    = var.region
  storage_class               = var.storage_class
  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"
  force_destroy               = var.environment != "prod"
  project                     = var.project_id
  labels                      = local.common_labels

  versioning {
    enabled = var.versioning_enabled
  }

  dynamic "lifecycle_rule" {
    for_each = var.lifecycle_age_days > 0 ? [1] : []
    content {
      action { type = "Delete" }
      condition { age = var.lifecycle_age_days }
    }
  }
}
