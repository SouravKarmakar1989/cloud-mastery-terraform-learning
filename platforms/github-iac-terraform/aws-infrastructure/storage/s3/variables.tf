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

variable "bucket_name" {
  description = "Logical bucket name suffix"
  type        = string
  default     = "artifacts"
}

variable "enable_versioning" {
  description = "Enable object versioning"
  type        = bool
  default     = true
}

variable "sse_algorithm" {
  description = "Default S3 server-side encryption algorithm"
  type        = string
  default     = "AES256"
}