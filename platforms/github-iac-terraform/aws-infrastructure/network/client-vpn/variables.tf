variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "project" {
  description = "Project name used for naming"
  type        = string
  default     = "network"
}

variable "server_certificate_arn" {
  description = "ACM ARN for the server certificate"
  type        = string
}

variable "client_root_certificate_chain_arn" {
  description = "ACM ARN of the client root certificate chain for mutual auth"
  type        = string
}

variable "client_cidr_block" {
  description = "CIDR for client VPN users"
  type        = string
  default     = "10.250.0.0/22"
}

variable "vpc_id" {
  description = "Target VPC for VPN associations"
  type        = string
}

variable "association_subnet_ids" {
  description = "Subnet IDs for client VPN associations"
  type        = list(string)
}

variable "security_group_ids" {
  description = "Security groups to attach to the endpoint"
  type        = list(string)
  default     = []
}

variable "authorize_cidr_blocks" {
  description = "Destination CIDRs users are authorized to access"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "split_tunnel" {
  description = "Enable split tunnel routing"
  type        = bool
  default     = true
}

variable "transport_protocol" {
  description = "VPN transport protocol"
  type        = string
  default     = "udp"
  validation {
    condition     = contains(["udp", "tcp"], var.transport_protocol)
    error_message = "transport_protocol must be udp or tcp."
  }
}
