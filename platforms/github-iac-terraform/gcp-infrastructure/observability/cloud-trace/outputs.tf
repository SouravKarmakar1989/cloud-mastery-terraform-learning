output "trace_api_enabled" {
  value = google_project_service.trace.id
}

output "alert_policy_name" {
  value = google_monitoring_alert_policy.error_rate.name
}
