output "msk_configuration_arn" {
  description = "MSK configuration ARN"
  value       = try(aws_msk_configuration.this[0].arn, null)
}