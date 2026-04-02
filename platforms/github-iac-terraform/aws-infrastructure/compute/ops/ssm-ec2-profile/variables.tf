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

variable "maintenance_window_schedule" {
  description = "Cron schedule for SSM maintenance window"
  type        = string
  default     = "cron(0 2 ? * SUN *)"
}

variable "patch_approval_days" {
  description = "Days after release to approve patches"
  type        = number
  default     = 7
}
