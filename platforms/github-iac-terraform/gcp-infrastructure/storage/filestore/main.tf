# storage/filestore — Cloud Filestore (NFS)
#
# GCP equivalent of Azure Files (SMB/NFS file shares).
# Managed NFS for GCE VMs, GKE persistent volumes, and Cloud Run sidecars.
#
# Cost:
#   - BASIC_HDD: $0.20/GB/month (min 1 TB = ~$204/month)
#   - BASIC_SSD: $0.38/GB/month (min 1 TB = ~$389/month)
#   - ENTERPRISE: $0.80/GB/month (HA, multi-zone, min 1 TB = ~$819/month)
#
# ⚠️ Minimum 1 TB required for all tiers. No sub-TB billing.
# For dev/learning: delete instance when not in use to avoid ~$200+/month charge.
# Alternatively use GCS FUSE (free) for non-NFS workloads.

data "terraform_remote_state" "network" {
  count   = var.use_network_remote_state ? 1 : 0
  backend = "gcs"
  config = {
    bucket = var.network_state_bucket
    prefix = "${var.network_state_prefix}/${var.environment}"
  }
}

resource "google_filestore_instance" "nfs" {
  name     = "${local.name_prefix}-filestore"
  tier     = var.tier
  location = "${var.region}-a" # Filestore uses zones, not regions
  project  = var.project_id

  file_shares {
    capacity_gb = var.capacity_gb
    name        = var.file_share_name
  }

  networks {
    network      = var.use_network_remote_state ? data.terraform_remote_state.network[0].outputs.vpc_name : var.vpc_name
    modes        = ["MODE_IPV4"]
    connect_mode = "DIRECT_PEERING"
  }

  labels = local.common_labels
}
