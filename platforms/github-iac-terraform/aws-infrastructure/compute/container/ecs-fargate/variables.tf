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
variable "container_image" {
  type    = string
  default = "public.ecr.aws/docker/library/nginx:latest"
}

variable "container_port" { type = number default = 80 }
variable "cpu" { type = number default = 256 }
variable "memory" { type = number default = 512 }
variable "desired_count" { type = number default = 1 }
variable "subnet_ids" { type = list(string) default = [] }
