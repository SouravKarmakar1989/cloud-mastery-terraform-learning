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

variable "vpc_id" {
  description = "Target VPC ID"
  type        = string
}

variable "interface_endpoints" {
  description = "Map of interface endpoint definitions"
  type = map(object({
    service_name        = string
    subnet_ids          = list(string)
    security_group_ids  = list(string)
    private_dns_enabled = optional(bool, true)
  }))
  default = {}
}

variable "gateway_endpoints" {
  description = "Map of gateway endpoint definitions"
  type = map(object({
    service_name    = string
    route_table_ids = list(string)
  }))
  default = {}
}

variable "enable_endpoint_service" {
  description = "Create a VPC endpoint service (PrivateLink provider side)"
  type        = bool
  default     = false
}

variable "endpoint_service_nlb_arns" {
  description = "NLB ARNs backing endpoint service"
  type        = list(string)
  default     = []
}

variable "acceptance_required" {
  description = "Whether endpoint connection acceptance is required"
  type        = bool
  default     = true
}
