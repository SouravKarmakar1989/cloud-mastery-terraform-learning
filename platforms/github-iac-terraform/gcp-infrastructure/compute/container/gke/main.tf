resource "google_project_service" "container" {
  service            = "container.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}

data "terraform_remote_state" "network" {
  count   = var.use_network_remote_state ? 1 : 0
  backend = "gcs"
  config = {
    bucket = var.network_state_bucket
    prefix = "${var.network_state_prefix}/${var.environment}"
  }
}

resource "google_container_cluster" "gke" {
  name                     = "${local.name_prefix}-gke"
  location                 = var.region
  initial_node_count       = 1
  project                  = var.project_id
  remove_default_node_pool = true
  network                  = var.use_network_remote_state ? data.terraform_remote_state.network[0].outputs.vpc_name : null
  subnetwork               = var.use_network_remote_state ? data.terraform_remote_state.network[0].outputs.subnet_names[var.subnet_name] : null

  release_channel {
    channel = "REGULAR"
  }

  deletion_protection = var.environment == "prod"

  depends_on = [google_project_service.container]
}

resource "google_container_node_pool" "primary" {
  name       = "${local.name_prefix}-np"
  cluster    = google_container_cluster.gke.name
  location   = var.region
  node_count = var.node_count
  project    = var.project_id

  node_config {
    machine_type = var.machine_type
    labels       = local.common_labels
  }
}