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

variable "keyspace_name" {
  description = "Logical name appended to the generated Keyspaces keyspace"
  type        = string
  default     = "app"
}
