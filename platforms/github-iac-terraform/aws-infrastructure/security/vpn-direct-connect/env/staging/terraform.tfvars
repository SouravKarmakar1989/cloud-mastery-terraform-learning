region      = "us-east-1"
environment = "staging"
project     = "security"

vpc_id          = "REPLACE_ME"
amazon_side_asn = 64512

customer_gateways = {
  office-hq = {
    ip_address  = "203.0.113.10"
    bgp_asn     = 65000
    device_name = "staging-office-router"
  }
}

vpn_routing_type = "static"

vpn_connections = {
  office-hq-vpn = {
    customer_gateway_key    = "office-hq"
    static_routes_only      = true
    destination_cidr_blocks = ["192.168.0.0/24"]
  }
}

enable_direct_connect_gateway = false
dx_gateway_asn                = 64513
dx_gateway_associations       = {}
