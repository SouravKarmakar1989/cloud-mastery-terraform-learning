variable "region" {
  description = "AWS region. Note: WAFv2 for CloudFront must use us-east-1."
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

# ── WAF Scope ────────────────────────────────────────────────────────────────

variable "waf_scope" {
  description = "WAFv2 Web ACL scope: REGIONAL (ALB, API GW, AppSync) or CLOUDFRONT"
  type        = string
  default     = "REGIONAL"

  validation {
    condition     = contains(["REGIONAL", "CLOUDFRONT"], var.waf_scope)
    error_message = "waf_scope must be REGIONAL or CLOUDFRONT."
  }
}

variable "alb_arn" {
  description = "ARN of the ALB to associate the WebACL with (only for REGIONAL scope). Leave empty to skip association."
  type        = string
  default     = ""
}

# ── Managed Rule Groups ───────────────────────────────────────────────────────

variable "enable_aws_managed_common_rules" {
  description = "Enable AWS Managed Rules — Common Rule Set (blocks OWASP Top 10 basics)"
  type        = bool
  default     = true
}

variable "enable_known_bad_inputs" {
  description = "Enable AWS Managed Rules — Known Bad Inputs (Log4j, SSRF, path traversal)"
  type        = bool
  default     = true
}

variable "enable_sqli_rules" {
  description = "Enable AWS Managed Rules — SQL database rule group (SQLi protection)"
  type        = bool
  default     = true
}

variable "enable_linux_rules" {
  description = "Enable AWS Managed Rules — Linux OS rule group"
  type        = bool
  default     = true
}

variable "enable_anonymous_ip_list" {
  description = "Enable AWS Managed Rules — Anonymous IP list (Tor, VPN, cloud exit nodes)"
  type        = bool
  default     = false
}

# ── Rate Limiting ─────────────────────────────────────────────────────────────

variable "enable_rate_limiting" {
  description = "Enable rate-based rule to limit requests per IP (DDoS layer-7 mitigation)"
  type        = bool
  default     = true
}

variable "rate_limit_threshold" {
  description = "Maximum number of requests per 5-minute window per IP before blocking"
  type        = number
  default     = 2000
}

# ── Shield ────────────────────────────────────────────────────────────────────

variable "enable_shield_advanced" {
  description = "Enable AWS Shield Advanced on the specified resource ARNs (requires Shield Advanced subscription)"
  type        = bool
  default     = false
}

variable "shield_protected_resource_arns" {
  description = "List of resource ARNs to protect with Shield Advanced (ALB, EIP, CloudFront, Route53, etc.)"
  type        = list(string)
  default     = []
}

# ── Logging ───────────────────────────────────────────────────────────────────

variable "enable_waf_logging" {
  description = "Enable WAF logging to CloudWatch Logs"
  type        = bool
  default     = true
}

variable "waf_log_retention_days" {
  description = "CloudWatch log group retention in days for WAF logs"
  type        = number
  default     = 90
}
