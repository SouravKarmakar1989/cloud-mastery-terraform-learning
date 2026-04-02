resource "google_project_service" "batch" {
  service            = "batch.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}

resource "google_batch_job" "job" {
  name     = "${local.name_prefix}-${var.job_name}"
  location = var.region
  project  = var.project_id

  task_groups {
    task_count = 1
    task_spec {
      runnables {
        script {
          text = "echo Hello from Cloud Batch"
        }
      }

      compute_resource {
        cpu_milli  = 1000
        memory_mib = 512
      }

      max_retry_count  = 1
      max_run_duration = "600s"
    }
  }

  allocation_policy {
    instances {
      policy {
        machine_type       = "e2-standard-2"
        provisioning_model = "STANDARD"
      }
    }
    location {
      allowed_locations = ["zones/${var.zone}"]
    }
  }

  labels = local.common_labels

  depends_on = [google_project_service.batch]
}