# network/dns — Cloud DNS Managed Zone
#
# GCP equivalent of Azure DNS Zones.
# Cloud DNS is globally managed; zones are authoritative DNS for your domain.
#
# Cost:
#   - Managed public zone: $0.20/zone/month (first 25 zones)
#   - DNS queries: $0.40/million queries (first 1B/month)
#   - Private zones: FREE; queries within VPC also FREE

variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "dns_name" {
  type        = string
  description = "DNS domain name for the managed zone, e.g. 'example.com.'"
}

variable "visibility" {
  type        = string
  default     = "private"
  description = "Zone visibility: 'public' or 'private'."
}

variable "vpc_self_link" {
  type        = string
  default     = ""
  description = "VPC self-link for private zone visibility binding. Required when visibility = 'private'."
}
