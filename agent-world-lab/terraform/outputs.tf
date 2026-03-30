output "naming" {
  description = "Resolved shared naming values."
  value       = local.naming
}

output "required_tags" {
  description = "Required tags used across cloud modules."
  value       = local.required_tags
}

output "feature_flags" {
  description = "Resolved feature flags used by environments."
  value       = var.feature_flags
}
