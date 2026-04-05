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

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "subnet_id" {
  type    = string
  default = null
}

variable "security_group_id" {
  type    = string
  default = null
}

variable "key_name" {
  type    = string
  default = null
}

variable "allowed_ssh_cidrs" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "tags" {
  type    = map(string)
  default = {}
}
