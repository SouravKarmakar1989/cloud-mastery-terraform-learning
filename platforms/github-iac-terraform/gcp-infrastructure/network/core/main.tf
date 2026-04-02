# network/core — VPC + Subnets + Firewall Rules
#
# GCP equivalent of Azure VNet + Subnets + NSGs.
# VPC is global (spans all regions). Subnets are regional.
# Firewall rules are applied at the VPC level (not per-subnet) using target tags.
#
# Cost:
#   - VPC, subnets, and firewall rules: FREE
#   - Egress between regions: ~$0.01-0.08/GB depending on destination
#   - Cloud NAT (if egress needed for private VMs): ~$0.045/hr + $0.045/GB processed
#
# State output consumed via:
#   data "terraform_remote_state" "network" {
#     backend = "gcs"
#     config  = { bucket = var.network_state_bucket; prefix = "network/core/<env>" }
#   }

resource "google_compute_network" "vpc" {
  name                    = local.vpc_name
  auto_create_subnetworks = false
  project                 = var.project_id
}

resource "google_compute_subnetwork" "subnets" {
  for_each = var.subnets

  name                     = "${local.name_prefix}-${each.key}"
  network                  = google_compute_network.vpc.id
  ip_cidr_range            = each.value.cidr
  region                   = coalesce(try(each.value.region, ""), var.region)
  project                  = var.project_id
  private_ip_google_access = var.enable_private_google_access
}

# ── Firewall: allow internal VPC traffic ─────────────────────────────────────
resource "google_compute_firewall" "allow_internal" {
  count   = var.firewall_allow_internal ? 1 : 0
  name    = "${local.name_prefix}-fw-allow-internal"
  network = google_compute_network.vpc.name
  project = var.project_id

  allow {
    protocol = "all"
  }

  source_ranges = [for s in var.subnets : s.cidr]
  description   = "Allow all traffic between resources within the VPC."
}

# ── Firewall: deny all ingress from internet (explicit deny-all) ──────────────
# GCP default = deny all inbound; this rule makes the intent explicit.
resource "google_compute_firewall" "deny_ingress_all" {
  name      = "${local.name_prefix}-fw-deny-ingress-all"
  network   = google_compute_network.vpc.name
  project   = var.project_id
  direction = "INGRESS"
  priority  = 65534

  deny {
    protocol = "all"
  }

  source_ranges = ["0.0.0.0/0"]
  description   = "Explicit deny-all inbound from internet. Lower-priority ALLOW rules override per service."
}

# ── Firewall: allow IAP SSH/RDP tunnelling ────────────────────────────────────
# Google IAP's CIDR range. Allows OS Login / IAP-tunnelled SSH without public IPs.
resource "google_compute_firewall" "allow_iap" {
  name    = "${local.name_prefix}-fw-allow-iap"
  network = google_compute_network.vpc.name
  project = var.project_id

  allow {
    protocol = "tcp"
    ports    = ["22", "3389"]
  }

  source_ranges = ["35.235.240.0/20"]
  target_tags   = ["allow-iap"]
  description   = "Allow SSH/RDP via IAP tunnel. Tag VMs with 'allow-iap' to enable."
}
