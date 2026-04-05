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
variable "master_username" {
  type    = string
  default = "docdbadmin"
}

variable "master_password" {
  type      = string
  sensitive = true
}
variable "instance_class" {
  type    = string
  default = "db.t3.medium"
}
