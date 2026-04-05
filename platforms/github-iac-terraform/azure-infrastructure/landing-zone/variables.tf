variable "location" {
  description = "Azure region for the landing zone"
  type        = string
}

variable "env" {
  description = "Deployment environment"
  type        = string
}

variable "prefix" {
  description = "Short prefix used in Azure resource names"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the landing zone virtual network"
  type        = list(string)
  default     = ["10.40.0.0/16"]
}

variable "subnets" {
  description = "Map of subnet name to address prefix"
  type = map(object({
    address_prefix = string
  }))
  default = {
    snet-vm  = { address_prefix = "10.40.1.0/24" }
    snet-aks = { address_prefix = "10.40.2.0/24" }
    snet-app = { address_prefix = "10.40.3.0/24" }
  }
}

variable "enable_nsg" {
  description = "Create default NSGs for each subnet"
  type        = bool
  default     = true
}

variable "log_analytics_sku" {
  description = "Log Analytics workspace SKU"
  type        = string
  default     = "PerGB2018"
}

variable "log_retention_days" {
  description = "Retention in days for the shared Log Analytics workspace"
  type        = number
  default     = 30
}

variable "kv_sku" {
  description = "Azure Key Vault SKU"
  type        = string
  default     = "standard"
}

variable "soft_delete_retention_days" {
  description = "Key Vault soft delete retention in days"
  type        = number
  default     = 90
}

variable "purge_protection_enabled" {
  description = "Enable purge protection for the landing zone Key Vault"
  type        = bool
  default     = true
}