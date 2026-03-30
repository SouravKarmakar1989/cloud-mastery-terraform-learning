variable "platform_short" {
  type = string
}

variable "workload" {
  type = string
}

variable "environment" {
  type = string
}

variable "region_short" {
  type = string
}

variable "cloud_short" {
  type = string
}

variable "extra_tags" {
  type    = map(string)
  default = {}
}
