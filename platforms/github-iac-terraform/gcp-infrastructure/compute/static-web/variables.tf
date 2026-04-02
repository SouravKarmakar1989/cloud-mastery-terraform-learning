variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "website_files_path" {
  type    = string
  default = "../site"
}