variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "engine_display_name" {
  type    = string
  default = "vertex-search-engine"
}