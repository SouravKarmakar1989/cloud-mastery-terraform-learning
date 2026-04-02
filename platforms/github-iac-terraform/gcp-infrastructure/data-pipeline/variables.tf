variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "scheduler_cron" {
  type    = string
  default = "0 * * * *"
}