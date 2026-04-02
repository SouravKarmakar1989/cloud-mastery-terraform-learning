data "terraform_remote_state" "network" {
  count   = var.use_network_remote_state ? 1 : 0
  backend = "gcs"
  config = {
    bucket = var.network_state_bucket
    prefix = "${var.network_state_prefix}/${var.environment}"
  }
}

resource "google_compute_instance" "vm" {
  name         = "${local.name_prefix}-vm"
  machine_type = var.machine_type
  zone         = var.zone
  project      = var.project_id

  boot_disk {
    initialize_params { image = var.image }
  }

  network_interface {
    network    = var.use_network_remote_state ? null : var.network_name
    subnetwork = var.use_network_remote_state ? data.terraform_remote_state.network[0].outputs.subnet_ids[var.subnet_name] : null

    dynamic "access_config" {
      for_each = var.assign_public_ip ? [1] : []
      content {}
    }
  }

  tags   = ["allow-iap"]
  labels = local.common_labels
}