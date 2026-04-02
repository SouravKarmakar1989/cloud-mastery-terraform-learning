variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "vpc_name" {
  type        = string
  default     = ""
  description = "Override VPC name (defaults to <prefix>-<env>-vpc)."
}

variable "subnets" {
  type = map(object({
    cidr   = string
    region = optional(string)
  }))
  default = {
    snet-gke = { cidr = "10.0.1.0/24" }
    snet-vm  = { cidr = "10.0.2.0/24" }
    snet-app = { cidr = "10.0.3.0/24" }
  }
  description = "Map of subnet name → CIDR block. Subnets are regional."
}

variable "enable_private_google_access" {
  type        = bool
  default     = true
  description = "Allow VMs without external IPs to reach Google APIs."
}

variable "firewall_allow_internal" {
  type        = bool
  default     = true
  description = "Allow all traffic between resources in the same VPC."
}
