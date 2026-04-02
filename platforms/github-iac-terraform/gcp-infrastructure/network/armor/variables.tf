# network/armor — Cloud Armor + Cloud Firewall Policy
#
# GCP equivalent of Azure Firewall + WAF.
# Cloud Armor: global WAF & DDoS protection for external load balancers.
# Cloud Firewall Policy: hierarchical VPC-level L4/L7 firewall (replaces per-rule VPC firewall).
#
# Cost:
#   - Cloud Armor Standard: FREE (basic DDoS protection)
#   - Cloud Armor Managed Protection Plus: ~$3,000/month per project (enterprise)
#   - Security Policy (WAF rules): $5/policy/month + $1/million requests

variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "enable_owasp_rules" {
  type        = bool
  default     = true
  description = "Enable pre-configured OWASP Top-10 WAF rule set."
}

variable "default_action" {
  type        = string
  default     = "allow"
  description = "Default action for unmatched requests: 'allow' or 'deny(403)'."
}
