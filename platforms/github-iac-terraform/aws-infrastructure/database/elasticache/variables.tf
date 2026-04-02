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
  default     = "database"
}
variable "subnet_ids" { type = list(string) }
variable "security_group_ids" { type = list(string) }
variable "node_type" { type = string default = "cache.t4g.micro" }
variable "num_cache_clusters" { type = number default = 1 }
variable "engine_version" { type = string default = "7.0" }
