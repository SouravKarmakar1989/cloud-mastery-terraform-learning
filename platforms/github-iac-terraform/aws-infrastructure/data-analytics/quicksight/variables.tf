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

variable "account_name_suffix" {
  description = "QuickSight account suffix"
  type        = string
  default     = "quicksight"
}

variable "authentication_method" {
  description = "QuickSight authentication method"
  type        = string
  default     = "IAM_AND_QUICKSIGHT"
}

variable "edition" {
  description = "QuickSight edition"
  type        = string
  default     = "ENTERPRISE"
}

variable "notification_email" {
  description = "Notification email"
  type        = string
  default     = "cloud-ops@example.com"
}