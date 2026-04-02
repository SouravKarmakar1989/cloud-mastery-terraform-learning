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

variable "cluster_identifier" {
  description = "Redshift cluster identifier suffix"
  type        = string
  default     = "warehouse"
}

variable "database_name" {
  description = "Redshift database name"
  type        = string
  default     = "analytics"
}

variable "master_username" {
  description = "Redshift master username"
  type        = string
  default     = "adminuser"
}

variable "master_password" {
  description = "Redshift master password"
  type        = string
  default     = "ReplaceMe123!"
  sensitive   = true
}

variable "node_type" {
  description = "Redshift node type"
  type        = string
  default     = "dc2.large"
}

variable "cluster_type" {
  description = "Redshift cluster type"
  type        = string
  default     = "single-node"
}

variable "number_of_nodes" {
  description = "Number of nodes for multi-node cluster"
  type        = number
  default     = 1
}

variable "subnet_group_name" {
  description = "Subnet group suffix"
  type        = string
  default     = "subnets"
}

variable "subnet_ids" {
  description = "Subnet IDs for Redshift"
  type        = list(string)
  default     = []
}