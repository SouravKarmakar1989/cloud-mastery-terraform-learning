location = "centralus"
env      = "prod"
prefix   = "cm"

vnet_address_space = ["10.60.0.0/16"]

subnets = {
  snet-vm  = { address_prefix = "10.60.1.0/24" }
  snet-aks = { address_prefix = "10.60.2.0/24" }
  snet-app = { address_prefix = "10.60.3.0/24" }
}

log_retention_days         = 90
purge_protection_enabled   = true
soft_delete_retention_days = 90