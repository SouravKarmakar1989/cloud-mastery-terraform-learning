output "log_archive_bucket" {
  value = google_storage_bucket.log_archive.name
}

output "log_sink_writer_identity" {
  value = google_logging_project_sink.archive_sink.writer_identity
}

output "notification_channel_id" {
  description = "Cloud Monitoring notification channel ID. Use in alert policies."
  value       = length(google_monitoring_notification_channel.email) > 0 ? google_monitoring_notification_channel.email[0].id : ""
}
