output "bucket_name" {
  description = "Name of the smoke-test GCS bucket"
  value       = google_storage_bucket.main.name
}

output "bucket_url" {
  description = "URL of the smoke-test GCS bucket"
  value       = google_storage_bucket.main.url
}

output "project_id" {
  description = "GCP project ID where resources were created"
  value       = var.project_id
}

output "region" {
  description = "GCP region where resources were created"
  value       = var.region
}
