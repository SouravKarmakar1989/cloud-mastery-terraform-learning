variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "storage_class" {
  type    = string
  default = "STANDARD"
}

variable "enable_hierarchical_namespace" {
  type        = bool
  default     = false
  description = "Enables HNS (hierarchical namespace) for HDFS-compatible data lake workloads (Hadoop/Spark). Requires enabling the hierarchicalNamespace feature."
}
