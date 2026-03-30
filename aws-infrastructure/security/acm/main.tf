# ---------------------------------------------------------------------------
# security/acm — AWS Certificate Manager (ACM) TLS certificates
#
# Implements (Task 1.3 – Encrypt data in transit):
#   • ACM certificate with DNS validation via Route53 (fully automated)
#   • Wildcard SAN for environment subdomains
#   • Optional CloudFront certificate (must be in us-east-1)
#   • Certificate renewal is fully managed by AWS ACM
#
# SAA-C03 mapping:
#   • Encrypting data in transit with TLS (ACM + TLS) — Task 1.3
#   • Rotating encryption keys and renewing certificates — Task 1.3
#     (ACM auto-renews before 60 days-to-expiry; DNS validation supports this)
# ---------------------------------------------------------------------------

# ── Route53 Hosted Zone (existing) ────────────────────────────────────────────

data "aws_route53_zone" "primary" {
  name         = var.hosted_zone_name
  private_zone = false
}

# ── Regional Certificate (ALB, API Gateway, CloudFront regional) ──────────────

resource "aws_acm_certificate" "regional" {
  provider = aws.regional

  domain_name               = var.primary_domain
  subject_alternative_names = var.subject_alternative_names
  validation_method         = "DNS"

  # Idempotent recreation — ensures clean replacement before destroy
  lifecycle {
    create_before_destroy = true
  }

  tags = merge(local.common_tags, {
    Name   = "${local.prefix}-cert-${var.primary_domain}"
    Domain = var.primary_domain
  })
}

# ── DNS Validation Records ────────────────────────────────────────────────────
# Creates Route53 CNAME records used by ACM to verify domain ownership.
# ACM auto-renews as long as these records remain in place.

resource "aws_route53_record" "cert_validation" {
  for_each = {
    for dvo in aws_acm_certificate.regional.domain_validation_options :
    dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  }

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = data.aws_route53_zone.primary.zone_id
}

resource "aws_acm_certificate_validation" "regional" {
  provider = aws.regional

  certificate_arn         = aws_acm_certificate.regional.arn
  validation_record_fqdns = [for record in aws_route53_record.cert_validation : record.fqdn]
}

# ── CloudFront Certificate (us-east-1 only) ───────────────────────────────────

resource "aws_acm_certificate" "cloudfront" {
  count    = var.create_cloudfront_certificate ? 1 : 0
  provider = aws.us_east_1

  domain_name = (
    var.cloudfront_domain != "" ? var.cloudfront_domain : var.primary_domain
  )
  subject_alternative_names = var.cloudfront_sans
  validation_method         = "DNS"

  lifecycle {
    create_before_destroy = true
  }

  tags = merge(local.common_tags, {
    Name   = "${local.prefix}-cert-cloudfront"
    Domain = coalesce(var.cloudfront_domain, var.primary_domain)
    Scope  = "cloudfront"
  })
}

resource "aws_route53_record" "cloudfront_cert_validation" {
  for_each = var.create_cloudfront_certificate ? {
    for dvo in aws_acm_certificate.cloudfront[0].domain_validation_options :
    dvo.domain_name => {
      name   = dvo.resource_record_name
      record = dvo.resource_record_value
      type   = dvo.resource_record_type
    }
  } : {}

  allow_overwrite = true
  name            = each.value.name
  records         = [each.value.record]
  ttl             = 60
  type            = each.value.type
  zone_id         = data.aws_route53_zone.primary.zone_id
}

resource "aws_acm_certificate_validation" "cloudfront" {
  count    = var.create_cloudfront_certificate ? 1 : 0
  provider = aws.us_east_1

  certificate_arn         = aws_acm_certificate.cloudfront[0].arn
  validation_record_fqdns = [for record in aws_route53_record.cloudfront_cert_validation : record.fqdn]
}
