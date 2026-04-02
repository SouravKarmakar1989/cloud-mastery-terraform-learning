variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "function_name" {
  type    = string
  default = "hello-fn"
}

variable "runtime" {
  type    = string
  default = "python312"
}

variable "entry_point" {
  type    = string
  default = "hello_http"
}