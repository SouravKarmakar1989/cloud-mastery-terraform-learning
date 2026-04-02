variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "processing_units" {
  type        = number
  default     = 100
  description = "100 PU = 0.1 node = ~$90/month. 1000 PU = 1 node = ~$900/month."
}

variable "database_name" {
  type    = string
  default = "appdb"
}

variable "database_dialect" {
  type        = string
  default     = "GOOGLE_STANDARD_SQL"
  description = "GOOGLE_STANDARD_SQL | POSTGRESQL — Spanner supports both dialects."
}
