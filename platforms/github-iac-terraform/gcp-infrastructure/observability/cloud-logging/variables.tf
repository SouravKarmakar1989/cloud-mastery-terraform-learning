variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "log_retention_days" {
  type        = number
  default     = 30
  description = "Retention for logs exported to Cloud Logging. Cloud Logging default = 30 days free, _Required bucket = 400 days."
}

variable "export_to_bigquery" {
  type        = bool
  default     = false
  description = "Export logs to BigQuery for long-term analytics (Azure Log Analytics equivalent)."
}

variable "notification_email" {
  type        = string
  default     = ""
  description = "Email for alert notifications via Cloud Monitoring notification channel."
}
