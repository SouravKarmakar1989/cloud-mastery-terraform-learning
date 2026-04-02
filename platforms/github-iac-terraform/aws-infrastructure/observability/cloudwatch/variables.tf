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
  default     = "observability"
}

variable "enabled" {
  description = "Whether to create CloudWatch resources"
  type        = bool
  default     = false
}

variable "log_group_name" {
  description = "CloudWatch log group name"
  type        = string
  default     = "/app/observability/default"
}

variable "log_retention_in_days" {
  description = "CloudWatch log retention in days"
  type        = number
  default     = 30
}

variable "alarm_name_suffix" {
  description = "Alarm name suffix"
  type        = string
  default     = "error-alarm"
}

variable "metric_namespace" {
  description = "Metric namespace"
  type        = string
  default     = "AWS/Logs"
}

variable "metric_name" {
  description = "Metric name"
  type        = string
  default     = "IncomingLogEvents"
}

variable "metric_period_seconds" {
  description = "Metric period in seconds"
  type        = number
  default     = 300
}

variable "metric_threshold" {
  description = "Metric threshold"
  type        = number
  default     = 1000
}

variable "dashboard_name_suffix" {
  description = "Dashboard name suffix"
  type        = string
  default     = "ops"
}

variable "tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}