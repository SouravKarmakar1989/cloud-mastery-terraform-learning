variable "project_id" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "prefix" { type = string }

variable "mysql_version" {
  type    = string
  default = "MYSQL_8_0"
}

variable "tier" {
  type    = string
  default = "db-f1-micro"
}

variable "disk_size_gb" {
  type    = number
  default = 10
}

variable "mysql_admin" {
  type    = string
  default = "mysqladmin"
}

variable "mysql_admin_password" {
  type      = string
  sensitive = true
}

variable "database_name" {
  type    = string
  default = "appdb"
}

variable "deletion_protection" {
  type    = bool
  default = false
}
