region      = "us-east-1"
environment = "dev"
project     = "security"

# Reference the VPC ID from the vpc-secure module output
vpc_id          = "REPLACE_ME"
amazon_side_asn = 64512

customer_gateways = {
  office-hq = {
    ip_address  = "203.0.113.10" # Replace with actual on-premises public IP
    bgp_asn     = 65000
    device_name = "dev-office-router"
  }
}

vpn_routing_type = "static"

vpn_connections = {
  office-hq-vpn = {
    customer_gateway_key    = "office-hq"
    static_routes_only      = true
    destination_cidr_blocks = ["192.168.0.0/24"] # On-premises subnet(s)
  }
}

# No Direct Connect for dev
enable_direct_connect_gateway = false
dx_gateway_asn                = 64513
dx_gateway_associations       = {}
