variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "concurrency_mode" {
  type        = string
  default     = "OPTIMISTIC"
  description = "OPTIMISTIC (default) or PESSIMISTIC. Optimistic is best for most workloads."
}

variable "app_engine_integration_mode" {
  type        = string
  default     = "DISABLED"
  description = "DISABLED | ENABLED. ENABLED requires App Engine in the project."
}
