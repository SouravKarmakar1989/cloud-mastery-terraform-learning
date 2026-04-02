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
  default     = "observability"
}

variable "record_all_supported" {
  description = "Record all supported resource types"
  type        = bool
  default     = true
}

variable "include_global_resource_types" {
  description = "Include global resource types"
  type        = bool
  default     = true
}

variable "retention_in_days" {
  description = "Retention for Config delivery bucket object versions via lifecycle"
  type        = number
  default     = 365
}
