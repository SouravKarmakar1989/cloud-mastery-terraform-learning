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
variable "outposts_mode" { type = string default = "disabled" }
variable "local_zone_preference" { type = string default = "none" }
