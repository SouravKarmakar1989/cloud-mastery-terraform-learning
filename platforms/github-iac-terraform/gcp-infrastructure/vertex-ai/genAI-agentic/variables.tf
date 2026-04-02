variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "bucket_name_suffix" {
  type    = string
  default = "agent-artifacts"
}