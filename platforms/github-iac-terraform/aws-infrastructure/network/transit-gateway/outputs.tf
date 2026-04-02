output "transit_gateway_id" {
  description = "Transit Gateway ID"
  value       = aws_ec2_transit_gateway.this.id
}

output "transit_gateway_arn" {
  description = "Transit Gateway ARN"
  value       = aws_ec2_transit_gateway.this.arn
}

output "attachment_ids" {
  description = "Transit Gateway attachment IDs keyed by attachment name"
  value       = { for k, v in aws_ec2_transit_gateway_vpc_attachment.this : k => v.id }
}
