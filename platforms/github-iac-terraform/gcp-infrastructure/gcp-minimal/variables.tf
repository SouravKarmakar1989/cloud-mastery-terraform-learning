variable "project_id" {
  description = "GCP project ID to deploy into"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "environment must be one of: dev, staging, prod."
  }
}

variable "region" {
  description = "GCP region for regional resources"
  type        = string
  default     = "us-central1"
}

variable "prefix" {
  description = "Name prefix for created resources"
  type        = string
  default     = "gcp-minimal"
}
