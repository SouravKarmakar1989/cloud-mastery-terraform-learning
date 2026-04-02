resource "google_pubsub_topic" "events" {
  name    = "${local.name_prefix}-${var.topic_name}"
  project = var.project_id
  labels  = local.common_labels
}

resource "google_pubsub_subscription" "events_sub" {
  name    = "${local.name_prefix}-${var.topic_name}-sub"
  topic   = google_pubsub_topic.events.name
  project = var.project_id
}