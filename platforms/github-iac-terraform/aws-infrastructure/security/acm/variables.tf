variable "region" {
  description = "AWS region for regional certificates (ALB, API GW)"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment (dev, staging, prod)"
  type        = string
}

variable "project" {
  description = "Project name used as a name prefix"
  type        = string
  default     = "security"
}

# ── Domain certificates ───────────────────────────────────────────────────────

variable "primary_domain" {
  description = "Primary domain name for the certificate (e.g. example.com)"
  type        = string
  default     = "example.com"
}

variable "subject_alternative_names" {
  description = "Additional domain names to include in the certificate (SANs)"
  type        = list(string)
  default     = ["*.example.com", "api.example.com"]
}

variable "hosted_zone_name" {
  description = "Route53 hosted zone name for automatic DNS validation (must match primary_domain or its parent)"
  type        = string
  default     = "example.com"
}

# ── CloudFront certificate (always us-east-1) ─────────────────────────────────

variable "create_cloudfront_certificate" {
  description = "Create an additional certificate in us-east-1 for CloudFront distributions"
  type        = bool
  default     = false
}

variable "cloudfront_domain" {
  description = "Domain name for the CloudFront certificate (if different from primary_domain)"
  type        = string
  default     = ""
}

variable "cloudfront_sans" {
  description = "SANs for the CloudFront certificate"
  type        = list(string)
  default     = []
}
