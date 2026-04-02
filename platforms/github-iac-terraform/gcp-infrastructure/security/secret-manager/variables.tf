variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "secret_names" {
  type        = list(string)
  default     = ["app-db-password", "app-api-key"]
  description = "List of secrets to create (empty versions — populate manually or via API)."
}

variable "replication_automatic" {
  type        = bool
  default     = true
  description = "Use automatic replication (recommended). Set false to specify user-managed replicas."
}
