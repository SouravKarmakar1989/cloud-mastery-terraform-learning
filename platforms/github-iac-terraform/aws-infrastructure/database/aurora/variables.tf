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
variable "vpc_id" { type = string }
variable "subnet_ids" { type = list(string) }
variable "security_group_ids" { type = list(string) }
variable "engine" { type = string default = "aurora-postgresql" }
variable "engine_version" { type = string default = "15.4" }
variable "db_name" { type = string default = "appdb" }
variable "master_username" { type = string default = "dbadmin" }
variable "master_password" { type = string sensitive = true }
variable "instance_class" { type = string default = "db.t4g.medium" }
variable "instance_count" { type = number default = 1 }
