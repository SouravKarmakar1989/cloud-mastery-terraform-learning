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

variable "assets_bucket_suffix" {
  type    = string
  default = "cdk-assets"
}

variable "trusted_principal_arn" {
  type    = string
  default = "arn:aws:iam::123456789012:root"
}

variable "deployment_policy_arns" {
  description = "Managed policy ARNs attached to CDK deployment role"
  type        = list(string)
  default = [
    "arn:aws:iam::aws:policy/AdministratorAccess"
  ]
}
