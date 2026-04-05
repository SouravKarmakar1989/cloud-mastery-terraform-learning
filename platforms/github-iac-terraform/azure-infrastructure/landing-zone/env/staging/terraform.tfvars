location = "centralus"
env      = "staging"
prefix   = "cm"

vnet_address_space = ["10.50.0.0/16"]

subnets = {
  snet-vm  = { address_prefix = "10.50.1.0/24" }
  snet-aks = { address_prefix = "10.50.2.0/24" }
  snet-app = { address_prefix = "10.50.3.0/24" }
}

log_retention_days = 60