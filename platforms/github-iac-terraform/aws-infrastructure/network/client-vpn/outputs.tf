output "client_vpn_endpoint_id" {
  description = "Client VPN endpoint ID"
  value       = aws_ec2_client_vpn_endpoint.this.id
}

output "client_vpn_endpoint_arn" {
  description = "Client VPN endpoint ARN"
  value       = aws_ec2_client_vpn_endpoint.this.arn
}

output "association_ids" {
  description = "Client VPN network association IDs"
  value       = { for k, v in aws_ec2_client_vpn_network_association.this : k => v.id }
}
