variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "pg_version" {
  type        = string
  default     = "POSTGRES_16"
  description = "POSTGRES_16 | POSTGRES_15 | POSTGRES_14 | POSTGRES_13"
}

variable "tier" {
  type        = string
  default     = "db-f1-micro"
  description = "db-f1-micro (~$7/mo, shared, burstable) | db-g1-small (~$25/mo) | db-custom-2-4096 (~$80/mo)"
}

variable "disk_size_gb" {
  type    = number
  default = 10
}

variable "pg_admin" {
  type    = string
  default = "pgadmin"
}

variable "pg_admin_password" {
  type      = string
  sensitive = true
}

variable "database_name" {
  type    = string
  default = "appdb"
}

variable "deletion_protection" {
  type    = bool
  default = false
}
