locals {
  bucket_base_name = lower(replace("${var.prefix}-${var.environment}-${var.project_id}-smoke", "_", "-"))
  bucket_name      = substr(local.bucket_base_name, 0, 63)

  common_labels = {
    project     = "gcp-minimal"
    environment = var.environment
    managed_by  = "terraform"
  }
}
