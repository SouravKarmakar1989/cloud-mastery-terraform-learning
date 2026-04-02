output "ram_share_arn" {
  description = "RAM resource share ARN"
  value       = try(aws_ram_resource_share.this[0].arn, null)
}