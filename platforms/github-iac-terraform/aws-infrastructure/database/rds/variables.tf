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
variable "identifier" { type = string default = "app-rds" }
variable "engine" { type = string default = "postgres" }
variable "engine_version" { type = string default = "15.4" }
variable "instance_class" { type = string default = "db.t4g.micro" }
variable "allocated_storage" { type = number default = 20 }
variable "db_name" { type = string default = "appdb" }
variable "username" { type = string default = "dbadmin" }
variable "password" { type = string sensitive = true }
