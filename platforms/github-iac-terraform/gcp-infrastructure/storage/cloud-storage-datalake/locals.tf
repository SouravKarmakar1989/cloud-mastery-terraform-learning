locals {
  name_prefix = "${var.prefix}-${var.environment}"
  bucket_name = "${local.name_prefix}-datalake-${var.project_id}"

  common_labels = {
    environment = var.environment
    managed_by  = "terraform"
    repo        = "github-iac-terraform"
    module      = "storage/cloud-storage-datalake"
  }
}
