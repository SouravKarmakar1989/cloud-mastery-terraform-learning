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
variable "availability_zone" { type = string }
variable "size" { type = number default = 50 }
variable "type" { type = string default = "gp3" }
variable "encrypted" { type = bool default = true }
variable "kms_key_id" { type = string default = null }
