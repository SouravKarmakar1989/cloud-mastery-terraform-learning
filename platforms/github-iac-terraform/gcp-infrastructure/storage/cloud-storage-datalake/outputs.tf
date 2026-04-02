output "bucket_name" {
  value = google_storage_bucket.datalake.name
}

output "bucket_url" {
  value = google_storage_bucket.datalake.url
}

output "gcs_path" {
  description = "Base GCS path for use in Dataproc / BigQuery external table config."
  value       = "gs://${google_storage_bucket.datalake.name}"
}
