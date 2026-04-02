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

variable "artifacts_bucket_suffix" {
  type    = string
  default = "sam-artifacts"
}

variable "pipeline_policy_arns" {
  description = "Managed policy ARNs attached to SAM pipeline role"
  type        = list(string)
  default = [
    "arn:aws:iam::aws:policy/AdministratorAccess"
  ]
}
