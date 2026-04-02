variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "tier" {
  type        = string
  default     = "BASIC_HDD"
  description = "BASIC_HDD (~$0.20/GB/month) | BASIC_SSD (~$0.38/GB/month) | ENTERPRISE (HA, ~$0.80/GB/month)"
}

variable "capacity_gb" {
  type        = number
  default     = 1024
  description = "Minimum 1 TB for BASIC_HDD/SSD, 1 TB for ENTERPRISE."
}

variable "file_share_name" {
  type    = string
  default = "fileshare"
}

variable "vpc_name" {
  type        = string
  default     = "default"
  description = "VPC name to configure the Filestore private IP in."
}

variable "use_network_remote_state" {
  type        = bool
  default     = true
  description = "When true, read VPC name from network/core remote state."
}

variable "network_state_bucket" {
  type        = string
  default     = "REPLACE_WITH_TFSTATE_BUCKET"
  description = "GCS bucket that stores Terraform states."
}

variable "network_state_prefix" {
  type        = string
  default     = "network/core"
  description = "Prefix for network/core state folder (without /<env>)."
}
