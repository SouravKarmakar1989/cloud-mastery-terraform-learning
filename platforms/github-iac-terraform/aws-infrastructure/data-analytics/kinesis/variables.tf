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

variable "stream_name" {
  description = "Kinesis stream suffix"
  type        = string
  default     = "stream"
}

variable "stream_mode" {
  description = "Kinesis stream mode"
  type        = string
  default     = "PROVISIONED"
}

variable "shard_count" {
  description = "Shard count for PROVISIONED mode"
  type        = number
  default     = 1
}