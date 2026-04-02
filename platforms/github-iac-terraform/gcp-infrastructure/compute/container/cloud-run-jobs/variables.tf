variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "job_name" {
  type    = string
  default = "batch-job"
}

variable "container_image" {
  type = string
}