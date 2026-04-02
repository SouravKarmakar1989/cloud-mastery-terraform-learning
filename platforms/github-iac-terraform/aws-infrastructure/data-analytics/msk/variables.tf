variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "project" {
  description = "Project name used for naming"
  type        = string
  default     = "data-analytics"
}

variable "enabled" {
  description = "Whether to create resources in this module"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}

variable "configuration_name" {
  description = "MSK configuration suffix"
  type        = string
  default     = "config"
}

variable "kafka_version" {
  description = "Kafka version"
  type        = string
  default     = "3.6.0"
}

variable "server_properties" {
  description = "MSK server.properties content"
  type        = string
  default     = "auto.create.topics.enable=true"
}