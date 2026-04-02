output "secret_ids" {
  description = "Map of secret name → Secret Manager resource ID."
  value       = { for k, s in google_secret_manager_secret.secrets : k => s.id }
}

output "secret_names" {
  description = "Map of secret name → Secret Manager secret_id (for use in IAM bindings)."
  value       = { for k, s in google_secret_manager_secret.secrets : k => s.secret_id }
}
