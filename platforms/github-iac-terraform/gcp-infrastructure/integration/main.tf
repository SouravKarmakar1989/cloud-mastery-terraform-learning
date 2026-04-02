resource "google_pubsub_topic" "integration" {
  name    = "${local.name_prefix}-${var.topic_name}"
  project = var.project_id
  labels  = local.common_labels
}

resource "google_pubsub_subscription" "queue" {
  name    = "${local.name_prefix}-queue"
  topic   = google_pubsub_topic.integration.name
  project = var.project_id

  ack_deadline_seconds = 20
}

resource "google_eventarc_trigger" "trigger" {
  name     = "${local.name_prefix}-eventarc"
  location = var.region
  project  = var.project_id

  matching_criteria {
    attribute = "type"
    value     = "google.cloud.pubsub.topic.v1.messagePublished"
  }

  transport {
    pubsub {
      topic = google_pubsub_topic.integration.id
    }
  }

  destination {
    cloud_run_service {
      service = "placeholder-service"
      region  = var.region
    }
  }
}