region      = "us-east-1"
environment = "prod"
project     = "security"

vpc_id          = "REPLACE_ME"
amazon_side_asn = 64512

customer_gateways = {
  # Primary data centre
  dc-primary = {
    ip_address  = "203.0.113.10" # Replace with actual public IP
    bgp_asn     = 65001
    device_name = "prod-dc-primary-router"
  }
  # Secondary / failover data centre
  dc-secondary = {
    ip_address  = "203.0.113.20"
    bgp_asn     = 65001
    device_name = "prod-dc-secondary-router"
  }
}

# Use dynamic BGP routing in prod for automatic failover
vpn_routing_type = "dynamic"

vpn_connections = {
  primary-vpn = {
    customer_gateway_key    = "dc-primary"
    static_routes_only      = false
    destination_cidr_blocks = [] # BGP: routes advertised dynamically
  }
  secondary-vpn = {
    customer_gateway_key    = "dc-secondary"
    static_routes_only      = false
    destination_cidr_blocks = []
  }
}

# Enable Direct Connect Gateway for prod dedicated connectivity
enable_direct_connect_gateway = true
dx_gateway_asn                = 64513

dx_gateway_associations = {
  prod-vpc = {
    # Allowed prefixes must include VPC CIDR(s) for DX routing
    allowed_prefixes = ["10.2.0.0/16"]
  }
}
