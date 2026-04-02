# database/memorystore — Cloud Memorystore for Redis
#
# GCP equivalent of Azure Cache for Redis.
# Fully managed in-memory data store: caching, sessions, pub/sub, leaderboards.
#
# Cost:
#   - BASIC 1 GB:       ~$35/month ($0.049/GB/hr)
#   - STANDARD_HA 1 GB: ~$70/month ($0.098/GB/hr) — primary + replica
#   - Instances are always-on; no pause/resume. Delete to stop billing.
#
# Connectivity: Memorystore instances are VPC-private by default.
# Use authorized_network to connect from your VPC.

data "terraform_remote_state" "network" {
  count   = var.use_network_remote_state ? 1 : 0
  backend = "gcs"
  config = {
    bucket = var.network_state_bucket
    prefix = "${var.network_state_prefix}/${var.environment}"
  }
}

resource "google_redis_instance" "cache" {
  name               = "${local.name_prefix}-redis"
  tier               = var.tier
  memory_size_gb     = var.memory_size_gb
  region             = var.region
  redis_version      = var.redis_version
  display_name       = "${local.name_prefix} Redis Cache"
  authorized_network = var.use_network_remote_state ? data.terraform_remote_state.network[0].outputs.vpc_id : (var.vpc_id != "" ? var.vpc_id : null)
  project            = var.project_id

  labels = local.common_labels
}
