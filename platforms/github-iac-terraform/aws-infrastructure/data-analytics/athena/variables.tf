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
  default     = "data-analytics"
}

variable "enabled" {
  description = "Whether to create resources in this module"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}

variable "workgroup_name" {
  description = "Athena workgroup suffix"
  type        = string
  default     = "wg"
}

variable "results_bucket_suffix" {
  description = "Athena query results bucket suffix"
  type        = string
  default     = "athena-results"
}