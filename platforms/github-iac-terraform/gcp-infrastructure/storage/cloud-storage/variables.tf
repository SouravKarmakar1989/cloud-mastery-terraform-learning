variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "storage_class" {
  type        = string
  default     = "STANDARD"
  description = "STANDARD | NEARLINE | COLDLINE | ARCHIVE. NEARLINE ~40% cheaper for infrequent access."
}

variable "versioning_enabled" {
  type    = bool
  default = false
}

variable "lifecycle_age_days" {
  type        = number
  default     = 0
  description = "Auto-delete objects older than N days. 0 = disabled."
}
