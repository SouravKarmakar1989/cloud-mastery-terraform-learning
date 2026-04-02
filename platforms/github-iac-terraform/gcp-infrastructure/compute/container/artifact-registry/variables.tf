variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "format" {
  type        = string
  default     = "DOCKER"
  description = "DOCKER | MAVEN | NPM | PYTHON | APT | YUM | HELM | GO | GENERIC"
}

variable "immutable_tags" {
  type        = bool
  default     = false
  description = "Prevent overwriting existing tags (recommended for prod)."
}
