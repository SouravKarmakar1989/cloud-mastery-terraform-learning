variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "topic_name" {
  type    = string
  default = "integration-events"
}