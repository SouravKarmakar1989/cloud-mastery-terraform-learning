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

variable "vpc_id" {
  type    = string
  default = null
}

variable "subnet_ids" {
  type    = list(string)
  default = []
}

variable "security_group_id" {
  type    = string
  default = null
}

variable "internal" {
  type    = bool
  default = false
}

variable "listener_port" {
  type    = number
  default = 80
}

variable "target_port" {
  type    = number
  default = 80
}

variable "tags" {
  type    = map(string)
  default = {}
}
