variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "cluster_name" {
  type    = string
  default = "spark-cluster"
}

variable "zone" {
  type    = string
  default = "us-central1-a"
}