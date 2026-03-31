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
variable "repository_name" { type = string default = "app" }
variable "image_tag_mutability" { type = string default = "MUTABLE" }
