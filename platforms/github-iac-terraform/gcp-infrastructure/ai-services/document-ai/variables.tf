variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "processor_type" {
  type    = string
  default = "FORM_PARSER_PROCESSOR"
}