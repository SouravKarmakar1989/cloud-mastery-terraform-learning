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
variable "instance_type" { type = string default = "t3.small" }
variable "subnet_ids" { type = list(string) default = [] }
variable "min_size" { type = number default = 1 }
variable "max_size" { type = number default = 3 }
variable "desired_capacity" { type = number default = 1 }
