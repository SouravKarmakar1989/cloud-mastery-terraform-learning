variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "redis_version" {
  type        = string
  default     = "REDIS_7_0"
  description = "REDIS_7_0 | REDIS_6_X | REDIS_5_0"
}

variable "tier" {
  type        = string
  default     = "BASIC"
  description = "BASIC (no HA, ~$0.049/GB/hr) | STANDARD_HA (replicated, ~$0.098/GB/hr)"
}

variable "memory_size_gb" {
  type    = number
  default = 1
}

variable "vpc_id" {
  type        = string
  default     = ""
  description = "VPC network self-link for a private IP Redis instance."
}

variable "use_network_remote_state" {
  type        = bool
  default     = true
  description = "When true, read VPC from network/core remote state."
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
