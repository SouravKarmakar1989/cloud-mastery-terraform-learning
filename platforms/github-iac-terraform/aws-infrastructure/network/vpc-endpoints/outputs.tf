output "interface_endpoint_ids" {
  description = "Interface endpoint IDs"
  value       = { for k, v in aws_vpc_endpoint.interface : k => v.id }
}

output "gateway_endpoint_ids" {
  description = "Gateway endpoint IDs"
  value       = { for k, v in aws_vpc_endpoint.gateway : k => v.id }
}

output "endpoint_service_name" {
  description = "PrivateLink endpoint service name"
  value       = try(aws_vpc_endpoint_service.this[0].service_name, null)
}
