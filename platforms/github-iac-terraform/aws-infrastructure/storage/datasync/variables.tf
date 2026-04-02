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
variable "s3_bucket_arn" { type = string }
variable "bucket_access_role_arn" { type = string }
variable "subdirectory" { type = string default = "/" }
