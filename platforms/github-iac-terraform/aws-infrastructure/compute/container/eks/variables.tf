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
variable "subnet_ids" { type = list(string) default = [] }
variable "node_instance_type" { type = string default = "t3.medium" }
variable "desired_nodes" { type = number default = 2 }
variable "min_nodes" { type = number default = 1 }
variable "max_nodes" { type = number default = 3 }
