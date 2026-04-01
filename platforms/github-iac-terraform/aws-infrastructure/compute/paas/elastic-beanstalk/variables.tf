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
variable "solution_stack_name" {
  type    = string
  default = "64bit Amazon Linux 2 v3.5.10 running Docker"
}

variable "min_size" { type = number default = 1 }
variable "max_size" { type = number default = 2 }
