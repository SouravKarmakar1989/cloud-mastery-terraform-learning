variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "job_name" {
  type    = string
  default = "batch-job"
}

variable "zone" {
  type    = string
  default = "us-central1-a"
}