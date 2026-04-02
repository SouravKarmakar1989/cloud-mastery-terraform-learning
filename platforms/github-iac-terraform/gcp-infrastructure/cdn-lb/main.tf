# cdn-lb — Cloud CDN + External Global Load Balancer
#
# Azure Front Door equivalent: global anycast IP, CDN, HTTPS termination, URL routing.
# Backends (NEGs, instance groups, Cloud Run, GCS) are added by consuming modules.

# ── Global static IP ──────────────────────────────────────────────────────────
resource "google_compute_global_address" "lb_ip" {
  name    = "${local.name_prefix}-lb-ip"
  project = var.project_id
}

# ── Managed SSL certificate (auto-provisioned) ────────────────────────────────
resource "google_compute_managed_ssl_certificate" "cert" {
  count   = length(var.domains) > 0 ? 1 : 0
  name    = "${local.name_prefix}-cert"
  project = var.project_id

  managed {
    domains = var.domains
  }
}

# ── Backend bucket / service placeholder ─────────────────────────────────────
# Replace with google_compute_backend_service pointing to your actual origin.
resource "google_storage_bucket" "lb_origin" {
  name                        = "${local.name_prefix}-lb-origin-${var.project_id}"
  location                    = "US"
  uniform_bucket_level_access = true
  force_destroy               = var.environment != "prod"
  labels                      = local.common_labels
}

resource "google_compute_backend_bucket" "cdn_backend" {
  name        = "${local.name_prefix}-cdn-backend"
  bucket_name = google_storage_bucket.lb_origin.name
  enable_cdn  = var.enable_cdn
  project     = var.project_id
}

# ── URL map (routing rules — equivalent to AFD routing rules) ─────────────────
resource "google_compute_url_map" "lb" {
  name            = "${local.name_prefix}-url-map"
  default_service = google_compute_backend_bucket.cdn_backend.id
  project         = var.project_id
}

# ── Target HTTPS proxy ────────────────────────────────────────────────────────
resource "google_compute_target_https_proxy" "lb" {
  name    = "${local.name_prefix}-https-proxy"
  url_map = google_compute_url_map.lb.id
  project = var.project_id

  ssl_certificates = length(var.domains) > 0 ? [google_compute_managed_ssl_certificate.cert[0].id] : []
}

# ── Global forwarding rule (frontend — equivalent to AFD frontend) ────────────
resource "google_compute_global_forwarding_rule" "https" {
  name                  = "${local.name_prefix}-fw-rule-https"
  target                = google_compute_target_https_proxy.lb.id
  port_range            = "443"
  ip_address            = google_compute_global_address.lb_ip.address
  load_balancing_scheme = "EXTERNAL"
  project               = var.project_id
  labels                = local.common_labels
}

# ── HTTP → HTTPS redirect ─────────────────────────────────────────────────────
resource "google_compute_url_map" "http_redirect" {
  name    = "${local.name_prefix}-http-redirect"
  project = var.project_id

  default_url_redirect {
    https_redirect         = true
    redirect_response_code = "MOVED_PERMANENTLY_DEFAULT"
    strip_query            = false
  }
}

resource "google_compute_target_http_proxy" "redirect" {
  name    = "${local.name_prefix}-http-proxy"
  url_map = google_compute_url_map.http_redirect.id
  project = var.project_id
}

resource "google_compute_global_forwarding_rule" "http" {
  name                  = "${local.name_prefix}-fw-rule-http"
  target                = google_compute_target_http_proxy.redirect.id
  port_range            = "80"
  ip_address            = google_compute_global_address.lb_ip.address
  load_balancing_scheme = "EXTERNAL"
  project               = var.project_id
  labels                = local.common_labels
}
