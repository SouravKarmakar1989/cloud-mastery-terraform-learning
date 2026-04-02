variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "zone" {
  type    = string
  default = "us-central1-a"
}

variable "machine_type" {
  type    = string
  default = "e2-micro"
}

variable "target_size" {
  type    = number
  default = 2
}