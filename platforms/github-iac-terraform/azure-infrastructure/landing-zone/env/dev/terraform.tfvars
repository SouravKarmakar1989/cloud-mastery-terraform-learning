location = "centralus"
env      = "dev"
prefix   = "cm"

vnet_address_space = ["10.40.0.0/16"]

subnets = {
  snet-vm  = { address_prefix = "10.40.1.0/24" }
  snet-aks = { address_prefix = "10.40.2.0/24" }
  snet-app = { address_prefix = "10.40.3.0/24" }
}

log_retention_days = 30