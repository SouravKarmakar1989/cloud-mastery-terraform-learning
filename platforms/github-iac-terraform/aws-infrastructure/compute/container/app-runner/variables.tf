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
variable "image_identifier" {
  type    = string
  default = "public.ecr.aws/aws-containers/hello-app-runner:latest"
}

variable "container_port" { type = number default = 8000 }
