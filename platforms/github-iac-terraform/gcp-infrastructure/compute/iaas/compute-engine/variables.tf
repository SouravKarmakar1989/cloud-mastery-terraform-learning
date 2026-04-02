variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "zone" {
  type    = string
  default = "us-central1-a"
}

variable "machine_type" {
  type    = string
  default = "e2-micro"
}

variable "image" {
  type    = string
  default = "debian-cloud/debian-12"
}

variable "use_network_remote_state" {
  type        = bool
  default     = true
  description = "When true, attach VM NIC to subnet from network/core remote state."
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
  default     = "snet-vm"
  description = "Subnet key from network/core outputs.subnet_ids to attach VM."
}

variable "network_name" {
  type        = string
  default     = "default"
  description = "Network name when not using remote state wiring."
}

variable "assign_public_ip" {
  type        = bool
  default     = true
  description = "Attach ephemeral external IP to VM NIC."
}