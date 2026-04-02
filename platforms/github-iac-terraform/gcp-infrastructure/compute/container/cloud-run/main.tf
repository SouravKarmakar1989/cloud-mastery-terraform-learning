# compute/container/cloud-run — Google Cloud Run (v2)
#
# GCP equivalent of Azure Container Apps (ACA).
# Serverless container platform: scales to zero, pay-per-request, no cluster management.
# Ideal for HTTP/gRPC services, APIs, and event-driven microservices.
#
# Cost:
#   - CPU: $0.00002400/vCPU-second (first 180K vCPU-seconds/month free)
#   - Memory: $0.00000250/GiB-second (first 360K GiB-seconds/month free)
#   - Requests: $0.40/million requests (first 2M/month free)
#   - min_instances > 0: billed even without traffic (idle allocation)

resource "google_project_service" "cloud_run" {
  service            = "run.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}

resource "google_cloud_run_v2_service" "app" {
  name     = "${local.name_prefix}-svc"
  location = var.region
  project  = var.project_id
  labels   = local.common_labels

  template {
    scaling {
      min_instance_count = var.min_instances
      max_instance_count = var.max_instances
    }

    containers {
      image = var.image

      resources {
        limits = {
          cpu    = var.cpu
          memory = var.memory
        }
        cpu_idle = var.min_instances == 0
      }

      dynamic "env" {
        for_each = var.env_vars
        content {
          name  = env.key
          value = env.value
        }
      }
    }
  }

  depends_on = [google_project_service.cloud_run]
}

# ── Public access IAM ─────────────────────────────────────────────────────────
resource "google_cloud_run_v2_service_iam_member" "public" {
  count    = var.allow_public_access ? 1 : 0
  project  = var.project_id
  location = var.region
  name     = google_cloud_run_v2_service.app.name
  role     = "roles/run.invoker"
  member   = "allUsers"
}
