# network/armor — Cloud Armor Security Policy (WAF + DDoS)
#
# Attach this policy to a google_compute_backend_service (cdn-lb module) with:
#   security_policy = google_compute_security_policy.armor.id

resource "google_compute_security_policy" "armor" {
  name    = "${local.name_prefix}-armor-policy"
  project = var.project_id

  # ── OWASP ModSecurity Core Rule Set ────────────────────────────────────────
  dynamic "rule" {
    for_each = var.enable_owasp_rules ? [1] : []
    content {
      action   = "deny(403)"
      priority = 1000
      match {
        expr {
          # Pre-configured OWASP CRS expression (Cloud Armor managed ruleset)
          expression = "evaluatePreconfiguredExpr('xss-stable')"
        }
      }
      description = "Block XSS attacks (OWASP CRS)"
    }
  }

  dynamic "rule" {
    for_each = var.enable_owasp_rules ? [1] : []
    content {
      action   = "deny(403)"
      priority = 1001
      match {
        expr {
          expression = "evaluatePreconfiguredExpr('sqli-stable')"
        }
      }
      description = "Block SQL injection (OWASP CRS)"
    }
  }

  # ── Default rule (lowest priority = catch-all) ──────────────────────────────
  rule {
    action   = var.default_action
    priority = 2147483647
    match {
      versioned_expr = "SRC_IPS_V1"
      config {
        src_ip_ranges = ["*"]
      }
    }
    description = "Default rule: ${var.default_action} all traffic"
  }
}
