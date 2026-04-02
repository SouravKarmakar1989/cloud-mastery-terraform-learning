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
  description = "Firehose stream suffix"
  type        = string
  default     = "events"
}

variable "bucket_suffix" {
  description = "Destination bucket suffix"
  type        = string
  default     = "firehose"
}

variable "firehose_role_arn" {
  description = "IAM role ARN assumed by Firehose"
  type        = string
  default     = "arn:aws:iam::123456789012:role/replace-firehose-role"
}