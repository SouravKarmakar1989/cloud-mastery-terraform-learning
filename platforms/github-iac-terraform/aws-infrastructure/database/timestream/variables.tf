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
  default     = "database"
}
variable "database_name" { type = string default = "metrics" }
variable "table_name" { type = string default = "events" }
variable "memory_store_retention_hours" { type = number default = 24 }
variable "magnetic_store_retention_days" { type = number default = 365 }
