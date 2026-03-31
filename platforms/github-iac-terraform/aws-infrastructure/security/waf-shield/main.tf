# ---------------------------------------------------------------------------
# security/waf-shield — AWS WAF v2 + AWS Shield
#
# Implements (Task 1.2 – Secure Workloads):
#   • WAFv2 Web ACL with:
#       - AWS Managed Rule Groups (Common, KnownBadInputs, SQLi, Linux, AnonymousIP)
#       - Rate-based rule per IP (DDoS L7 mitigation, Task 1.2 – threat vectors)
#       - Custom body-size limit block rule
#   • WAF logging to CloudWatch Logs (aws-waf-logs- prefix required by AWS)
#   • Web ACL association to ALB (optional — skipped if alb_arn is empty)
#   • AWS Shield Advanced protection on specified resource ARNs (optional)
#
# Security mapping:
#   • SQLi rule group   → SQL injection threat vector (Task 1.2)
#   • Common rule group → XSS, path traversal, OWASP Top 10 (Task 1.2)
#   • Rate-based rule   → DDoS mitigation (Task 1.2)
#   • Shield Advanced   → Volumetric DDoS (L3/L4/L7) (Task 1.2)
# ---------------------------------------------------------------------------

# ── WAFv2 Web ACL ─────────────────────────────────────────────────────────────

resource "aws_wafv2_web_acl" "main" {
  name        = "${local.prefix}-web-acl"
  description = "WAF Web ACL: managed rules + rate limiting for ${local.prefix}"
  scope       = var.waf_scope

  default_action {
    allow {}
  }

  # ── Managed Rule Groups ──────────────────────────────────────────────────
  dynamic "rule" {
    for_each = local.managed_rule_groups
    content {
      name     = rule.key
      priority = rule.value.priority

      override_action {
        none {}
      }

      statement {
        managed_rule_group_statement {
          name        = rule.value.name
          vendor_name = rule.value.vendor
        }
      }

      visibility_config {
        cloudwatch_metrics_enabled = true
        metric_name                = "${local.prefix}-${rule.key}"
        sampled_requests_enabled   = true
      }
    }
  }

  # ── Rate-Based Rule (DDoS L7 mitigation) ────────────────────────────────
  dynamic "rule" {
    for_each = var.enable_rate_limiting ? [1] : []
    content {
      name     = "RateLimitPerIP"
      priority = 100

      action {
        block {}
      }

      statement {
        rate_based_statement {
          limit              = var.rate_limit_threshold
          aggregate_key_type = "IP"
        }
      }

      visibility_config {
        cloudwatch_metrics_enabled = true
        metric_name                = "${local.prefix}-rate-limit"
        sampled_requests_enabled   = true
      }
    }
  }

  # ── Block Oversized Request Bodies ──────────────────────────────────────
  rule {
    name     = "BlockOversizedBody"
    priority = 110

    action {
      block {}
    }

    statement {
      size_constraint_statement {
        comparison_operator = "GT"
        size                = 8192 # 8 KB body limit

        field_to_match {
          body {
            oversize_handling = "MATCH"
          }
        }

        text_transformation {
          priority = 0
          type     = "NONE"
        }
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "${local.prefix}-oversized-body"
      sampled_requests_enabled   = true
    }
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "${local.prefix}-web-acl"
    sampled_requests_enabled   = true
  }

  tags = local.common_tags
}

# ── WAF Logging ───────────────────────────────────────────────────────────────
# Log group MUST be prefixed with "aws-waf-logs-" per AWS requirement.

resource "aws_cloudwatch_log_group" "waf" {
  count = var.enable_waf_logging ? 1 : 0

  name              = "aws-waf-logs-${local.prefix}"
  retention_in_days = var.waf_log_retention_days

  tags = local.common_tags
}

resource "aws_wafv2_web_acl_logging_configuration" "main" {
  count = var.enable_waf_logging ? 1 : 0

  log_destination_configs = [aws_cloudwatch_log_group.waf[0].arn]
  resource_arn            = aws_wafv2_web_acl.main.arn

  # Redact Authorization header values in logs (security best practice)
  redacted_fields {
    single_header {
      name = "authorization"
    }
  }

  depends_on = [aws_cloudwatch_log_group.waf]
}

# ── Associate Web ACL with ALB ────────────────────────────────────────────────

resource "aws_wafv2_web_acl_association" "alb" {
  count = var.alb_arn != "" ? 1 : 0

  web_acl_arn  = aws_wafv2_web_acl.main.arn
  resource_arn = var.alb_arn
}

# ── AWS Shield Advanced ───────────────────────────────────────────────────────
# Provides enhanced DDoS protection for L3/L4/L7 with 24x7 DRT support.
# Requires an active Shield Advanced subscription (billed separately).

resource "aws_shield_protection" "this" {
  for_each = var.enable_shield_advanced ? toset(var.shield_protected_resource_arns) : toset([])

  name         = "${local.prefix}-shield-${index(var.shield_protected_resource_arns, each.value)}"
  resource_arn = each.value

  tags = local.common_tags
}
