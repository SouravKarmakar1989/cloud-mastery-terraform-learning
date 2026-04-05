variable "project_id" {
  description = "GCP project ID for the landing zone"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "region" {
  description = "Primary GCP region"
  type        = string
}

variable "prefix" {
  description = "Short naming prefix for GCP resources"
  type        = string
}

variable "vpc_name" {
  description = "Optional explicit VPC name override"
  type        = string
  default     = ""
}

variable "subnets" {
  description = "Map of subnet name to CIDR and optional region"
  type = map(object({
    cidr   = string
    region = optional(string)
  }))
  default = {
    snet-gke = { cidr = "10.70.1.0/24" }
    snet-vm  = { cidr = "10.70.2.0/24" }
    snet-app = { cidr = "10.70.3.0/24" }
  }
}

variable "enable_private_google_access" {
  description = "Enable Private Google Access on subnets"
  type        = bool
  default     = true
}

variable "firewall_allow_internal" {
  description = "Allow internal east-west traffic within the VPC"
  type        = bool
  default     = true
}

variable "log_retention_days" {
  description = "Retention for exported logging data"
  type        = number
  default     = 30
}

variable "export_to_bigquery" {
  description = "Enable BigQuery export for logs"
  type        = bool
  default     = false
}

variable "notification_email" {
  description = "Optional email for Cloud Monitoring notifications"
  type        = string
  default     = ""
}

variable "secret_names" {
  description = "List of secrets to provision in Secret Manager"
  type        = list(string)
  default     = ["app-db-password", "app-api-key"]
}

variable "replication_automatic" {
  description = "Use automatic Secret Manager replication"
  type        = bool
  default     = true
}