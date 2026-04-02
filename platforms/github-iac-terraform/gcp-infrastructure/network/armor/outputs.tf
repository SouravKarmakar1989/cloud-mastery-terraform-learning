output "security_policy_id" {
  description = "Self-link of the Cloud Armor security policy. Attach to backend services in cdn-lb."
  value       = google_compute_security_policy.armor.id
}

output "security_policy_name" {
  value = google_compute_security_policy.armor.name
}
