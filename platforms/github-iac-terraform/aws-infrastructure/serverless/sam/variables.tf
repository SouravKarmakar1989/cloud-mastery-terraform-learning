variable "region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment (dev, staging, prod)"
  type        = string
}

variable "project" {
  description = "Project name used as a resource name prefix"
  type        = string
  default     = "stu-cert"
}

variable "artifact_expiry_days" {
  description = "Days before noncurrent artifact versions are expired from the SAM bucket"
  type        = number
  default     = 30
}
