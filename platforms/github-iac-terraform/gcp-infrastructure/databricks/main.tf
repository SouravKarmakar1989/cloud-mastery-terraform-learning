resource "google_project_service" "dataproc" {
  service            = "dataproc.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}

resource "google_dataproc_cluster" "spark" {
  name    = "${local.name_prefix}-${var.cluster_name}"
  region  = var.region
  project = var.project_id

  cluster_config {
    gce_cluster_config {
      zone = var.zone
      tags = ["dataproc"]
    }

    master_config {
      num_instances = 1
      machine_type  = "e2-standard-4"
      disk_config { boot_disk_size_gb = 50 }
    }

    worker_config {
      num_instances = 2
      machine_type  = "e2-standard-4"
      disk_config { boot_disk_size_gb = 50 }
    }
  }

  labels = local.common_labels

  depends_on = [google_project_service.dataproc]
}