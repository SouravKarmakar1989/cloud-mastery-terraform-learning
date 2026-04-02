variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "notification_channel_id" {
  type        = string
  default     = ""
  description = "Cloud Monitoring notification channel from observability/cloud-logging."
}

variable "error_rate_threshold" {
  type        = number
  default     = 5
  description = "Alert when error rate (5xx per min) exceeds this value."
}
