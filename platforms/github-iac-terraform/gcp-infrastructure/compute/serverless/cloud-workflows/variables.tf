variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "workflow_name" {
  type    = string
  default = "orchestrator"
}