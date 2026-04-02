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
  default     = "storage"
}
variable "subnet_ids" { type = list(string) }
variable "security_group_ids" { type = list(string) }
variable "storage_capacity" { type = number default = 1200 }
variable "deployment_type" { type = string default = "SCRATCH_2" }
