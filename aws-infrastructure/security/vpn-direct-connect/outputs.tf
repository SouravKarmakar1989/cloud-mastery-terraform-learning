output "vpn_gateway_id" {
  description = "ID of the Virtual Private Gateway"
  value       = aws_vpn_gateway.main.id
}

output "customer_gateway_ids" {
  description = "Map of customer gateway name → ID"
  value       = { for k, v in aws_customer_gateway.this : k => v.id }
}

output "vpn_connection_ids" {
  description = "Map of VPN connection name → ID"
  value       = { for k, v in aws_vpn_connection.this : k => v.id }
}

output "vpn_tunnel_details" {
  description = "Map of VPN connection name → tunnel 1/2 outside IPs (AWS side)"
  value = {
    for k, v in aws_vpn_connection.this : k => {
      tunnel1_outside_ip = v.tunnel1_address
      tunnel2_outside_ip = v.tunnel2_address
    }
  }
}

output "vpn_tunnel_preshared_keys" {
  description = "Map of VPN connection name → AWS-generated pre-shared keys (sensitive)"
  sensitive   = true
  value = {
    for k, v in aws_vpn_connection.this : k => {
      tunnel1_psk = v.tunnel1_preshared_key
      tunnel2_psk = v.tunnel2_preshared_key
    }
  }
}

output "dx_gateway_id" {
  description = "ID of the Direct Connect Gateway (empty string if not created)"
  value       = var.enable_direct_connect_gateway ? aws_dx_gateway.main[0].id : ""
}
