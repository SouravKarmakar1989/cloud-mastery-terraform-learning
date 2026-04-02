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
  default     = "storage"
}
variable "identity_provider_type" { type = string default = "SERVICE_MANAGED" }
variable "endpoint_type" { type = string default = "PUBLIC" }
