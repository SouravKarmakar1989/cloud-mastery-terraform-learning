variable "region" {
  type    = string
  default = "us-east-1"
}

variable "environment" {
  type = string
}

variable "project" {
  type    = string
  default = "compute"
}

variable "bucket_suffix" {
  type    = string
  default = "cfn-templates"
}

variable "trusted_principal_arn" {
  type    = string
  default = "arn:aws:iam::123456789012:root"
}
