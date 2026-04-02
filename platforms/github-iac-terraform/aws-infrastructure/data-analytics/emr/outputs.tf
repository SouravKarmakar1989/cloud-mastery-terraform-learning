output "emr_security_configuration_name" {
  description = "EMR security configuration name"
  value       = try(aws_emr_security_configuration.this[0].name, null)
}