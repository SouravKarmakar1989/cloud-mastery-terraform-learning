output "global_accelerator_arn" {
  description = "Global Accelerator ARN"
  value       = try(aws_globalaccelerator_accelerator.this[0].arn, null)
}