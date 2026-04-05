module "network" {
  source = "../network/core"

  location           = var.location
  env                = var.env
  prefix             = var.prefix
  vnet_address_space = var.vnet_address_space
  subnets            = var.subnets
  enable_nsg         = var.enable_nsg
}

module "observability" {
  source = "../observability/log-analytics"

  location           = var.location
  env                = var.env
  prefix             = var.prefix
  log_analytics_sku  = var.log_analytics_sku
  log_retention_days = var.log_retention_days
}

module "security" {
  source = "../security/key-vault"

  location                   = var.location
  env                        = var.env
  prefix                     = var.prefix
  log_analytics_workspace_id = module.observability.log_analytics_workspace_id
  kv_sku                     = var.kv_sku
  soft_delete_retention_days = var.soft_delete_retention_days
  purge_protection_enabled   = var.purge_protection_enabled
}