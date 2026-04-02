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

variable "application_name" {
  description = "Flink application suffix"
  type        = string
  default     = "flink-app"
}

variable "service_execution_role_arn" {
  description = "Execution role ARN for Flink app"
  type        = string
  default     = "arn:aws:iam::123456789012:role/replace-flink-role"
}