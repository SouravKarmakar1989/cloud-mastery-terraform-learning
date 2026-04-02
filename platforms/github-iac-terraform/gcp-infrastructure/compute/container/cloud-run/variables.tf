variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "image" {
  type        = string
  default     = "us-docker.pkg.dev/cloudrun/container/hello"
  description = "Container image to deploy. Update to your Artifact Registry image URI."
}

variable "cpu" {
  type    = string
  default = "1"
}

variable "memory" {
  type    = string
  default = "512Mi"
}

variable "max_instances" {
  type    = number
  default = 10
}

variable "min_instances" {
  type        = number
  default     = 0
  description = "0 = scale to zero (coldstart). Set >=1 to keep warm."
}

variable "allow_public_access" {
  type        = bool
  default     = true
  description = "Allow unauthenticated (public) invocations."
}

variable "env_vars" {
  type    = map(string)
  default = {}
}
