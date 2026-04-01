variable "region" {
  type    = string
  default = "us-east-1"
}

variable "environment" {
  type = string
}

variable "project" {
  type    = string
  default = "compute"
}
variable "function_name" { type = string default = "starter" }
variable "log_retention_days" { type = number default = 14 }
