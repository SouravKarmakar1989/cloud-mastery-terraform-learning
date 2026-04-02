# cdn-lb — Cloud CDN + External Global HTTP(S) Load Balancer
#
# GCP equivalent of Azure Front Door (AFD).
# Provides global anycast IP, HTTP(S) load balancing, Cloud CDN offload,
# managed SSL certificates, and URL-map-based routing.
#
# Cost:
#   - Global forwarding rule: $0.025/hour (~$18/month)
#   - Backend processing: $0.008/GB (first 10 TB/month)
#   - Cloud CDN cache fill: ~$0.01-0.08/GB depending on region
#   - Managed SSL certificate: FREE
#   - Cloud Armor (WAF): optional add-on (see network/armor)

variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "domains" {
  type        = list(string)
  default     = []
  description = "List of domains for the managed SSL certificate, e.g. ['app.example.com']."
}

variable "enable_cdn" {
  type        = bool
  default     = true
  description = "Enable Cloud CDN on the backend service."
}

variable "backend_protocol" {
  type        = string
  default     = "HTTPS"
  description = "Backend protocol: HTTP or HTTPS."
}

variable "security_policy" {
  type        = string
  default     = ""
  description = "Self-link of a Cloud Armor security policy from network/armor module."
}
