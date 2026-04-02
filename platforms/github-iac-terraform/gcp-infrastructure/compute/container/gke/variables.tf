variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "node_count" {
  type    = number
  default = 1
}

variable "machine_type" {
  type    = string
  default = "e2-standard-2"
}

variable "use_network_remote_state" {
  type        = bool
  default     = true
  description = "When true, read VPC/subnet from network/core remote state."
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

variable "subnet_name" {
  type        = string
  default     = "snet-gke"
  description = "Subnet key from network/core outputs.subnet_names to attach GKE nodes."
}