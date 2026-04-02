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
  default     = "integration"
}

variable "enabled" {
  description = "Whether to create resources in this module"
  type        = bool
  default     = false
}

variable "service_policy_name_suffix" {
  description = "Suffix for the generated IAM policy"
  type        = string
  default     = "service-access"
}

variable "tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}
variable "monthly_budget_limit" {
  description = "Monthly budget amount in USD"
  type        = number
  default     = 500
}