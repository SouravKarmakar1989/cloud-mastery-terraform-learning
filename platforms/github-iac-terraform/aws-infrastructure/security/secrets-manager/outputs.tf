output "secret_arns" {
  description = "Map of secret name → ARN"
  value       = { for k, v in aws_secretsmanager_secret.this : k => v.arn }
}

output "secret_ids" {
  description = "Map of secret name → Secret ID"
  value       = { for k, v in aws_secretsmanager_secret.this : k => v.id }
}

output "secret_names" {
  description = "Map of secret name → full AWS secret name"
  value       = { for k, v in aws_secretsmanager_secret.this : k => v.name }
}
