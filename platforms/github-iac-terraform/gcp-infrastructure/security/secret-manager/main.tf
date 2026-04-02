# security/secret-manager — Google Cloud Secret Manager
#
# GCP equivalent of Azure Key Vault (secrets only).
# Stores secrets, API keys, passwords, certificates, and arbitrary sensitive data.
# Use Workload Identity + IAM to grant compute resources access without key files.
#
# Cost:
#   - Active secret versions: $0.06/version/month (first 6 versions free per secret)
#   - Access operations: $0.03/10K operations
#   - Free tier: 6 active secret versions + 10K operations/month
#
# IAM: grant roles/secretmanager.secretAccessor to a service account / Workload Identity.

resource "google_project_service" "secretmanager" {
  service            = "secretmanager.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}

resource "google_secret_manager_secret" "secrets" {
  for_each  = toset(var.secret_names)
  secret_id = "${local.name_prefix}-${each.key}"
  project   = var.project_id

  labels = local.common_labels

  replication {
    dynamic "auto" {
      for_each = var.replication_automatic ? [1] : []
      content {}
    }

    dynamic "user_managed" {
      for_each = var.replication_automatic ? [] : [1]
      content {
        replicas {
          location = var.region
        }
      }
    }
  }

  depends_on = [google_project_service.secretmanager]
}
