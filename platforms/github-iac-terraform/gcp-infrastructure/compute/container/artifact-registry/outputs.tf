output "repository_id" { value = google_artifact_registry_repository.registry.repository_id }
output "repository_url" {
  description = "Full Docker push/pull URL: ${region}-docker.pkg.dev/${project}/${repo}"
  value       = "${var.region}-docker.pkg.dev/${var.project_id}/${google_artifact_registry_repository.registry.repository_id}"
}
