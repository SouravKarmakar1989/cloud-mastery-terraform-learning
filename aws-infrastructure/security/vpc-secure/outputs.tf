output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "vpc_cidr" {
  description = "VPC primary CIDR block"
  value       = aws_vpc.main.cidr_block
}

output "public_subnet_ids" {
  description = "Map of AZ → public subnet ID"
  value       = { for k, s in aws_subnet.public : k => s.id }
}

output "private_app_subnet_ids" {
  description = "Map of AZ → private app subnet ID"
  value       = { for k, s in aws_subnet.private_app : k => s.id }
}

output "private_data_subnet_ids" {
  description = "Map of AZ → private data subnet ID"
  value       = { for k, s in aws_subnet.private_data : k => s.id }
}

output "internet_gateway_id" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.main.id
}

output "nat_gateway_ids" {
  description = "List of NAT Gateway IDs"
  value       = [for ng in aws_nat_gateway.main : ng.id]
}

output "nat_gateway_public_ips" {
  description = "List of Elastic IPs allocated to NAT Gateways"
  value       = [for eip in aws_eip.nat : eip.public_ip]
}

output "sg_alb_id" {
  description = "Security Group ID for the public Application Load Balancer"
  value       = aws_security_group.alb.id
}

output "sg_app_id" {
  description = "Security Group ID for the application tier"
  value       = aws_security_group.app.id
}

output "sg_data_id" {
  description = "Security Group ID for the data tier"
  value       = aws_security_group.data.id
}

output "sg_vpce_id" {
  description = "Security Group ID for VPC Interface Endpoints"
  value       = aws_security_group.vpce.id
}

output "flow_log_group_name" {
  description = "CloudWatch Log Group name for VPC Flow Logs"
  value       = var.enable_flow_logs ? aws_cloudwatch_log_group.flow_logs[0].name : null
}

output "s3_endpoint_id" {
  description = "Gateway endpoint ID for S3"
  value       = var.enable_s3_endpoint ? aws_vpc_endpoint.s3[0].id : null
}
