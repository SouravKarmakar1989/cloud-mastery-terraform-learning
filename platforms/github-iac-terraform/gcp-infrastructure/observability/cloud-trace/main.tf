# observability/cloud-trace — Cloud Trace + Error Reporting
#
# GCP equivalent of Azure Application Insights.
# Cloud Trace: distributed tracing for request latency analysis.
# Error Reporting: automatic grouping and alerting of application errors.
# Cloud Profiler: CPU/heap profiling (enable per-runtime SDK).
#
# Cost:
#   - Cloud Trace: first 2.5M trace spans/month free; $0.20/million after
#   - Error Reporting: FREE (included)
#   - Cloud Profiler: FREE (up to 2.5M profiles/month)
#
# SDK Instrumentation:
#   - Python: google-cloud-trace + opentelemetry-sdk
#   - Node.js: @google-cloud/trace-agent
#   - Java: google-cloud-trace + opentelemetry-java
#   - Go:  cloud.google.com/go/trace

resource "google_project_service" "trace" {
  service            = "cloudtrace.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}

resource "google_project_service" "error_reporting" {
  service            = "clouderrorreporting.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}

resource "google_project_service" "profiler" {
  service            = "cloudprofiler.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}

# ── Alert Policy: high error rate ─────────────────────────────────────────────
resource "google_monitoring_alert_policy" "error_rate" {
  display_name = "${local.name_prefix} — High Error Rate"
  project      = var.project_id
  combiner     = "OR"

  notification_channels = var.notification_channel_id != "" ? [var.notification_channel_id] : []

  conditions {
    display_name = "HTTP 5xx errors > ${var.error_rate_threshold}/min"
    condition_threshold {
      filter          = "resource.type = \"gae_app\" AND metric.type = \"logging.googleapis.com/user/http_5xx_count\""
      duration        = "60s"
      comparison      = "COMPARISON_GT"
      threshold_value = var.error_rate_threshold

      aggregations {
        alignment_period   = "60s"
        per_series_aligner = "ALIGN_RATE"
      }
    }
  }

  user_labels = local.common_labels
}
