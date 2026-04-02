resource "google_compute_instance_template" "tmpl" {
  name_prefix  = "${local.name_prefix}-tmpl-"
  machine_type = var.machine_type
  project      = var.project_id

  disk {
    source_image = "debian-cloud/debian-12"
    auto_delete  = true
    boot         = true
  }

  network_interface {
    network = "default"
    access_config {}
  }

  labels = local.common_labels
}

resource "google_compute_instance_group_manager" "mig" {
  name               = "${local.name_prefix}-mig"
  zone               = var.zone
  base_instance_name = "${local.name_prefix}-inst"
  target_size        = var.target_size
  project            = var.project_id

  version {
    instance_template = google_compute_instance_template.tmpl.id
  }
}