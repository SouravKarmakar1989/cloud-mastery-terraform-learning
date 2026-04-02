resource "google_project_service" "dataflow" {
  service            = "dataflow.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}

resource "google_project_service" "composer" {
  service            = "composer.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}

resource "google_cloud_scheduler_job" "trigger" {
  name      = "${local.name_prefix}-pipeline-trigger"
  region    = var.region
  project   = var.project_id
  schedule  = var.scheduler_cron
  time_zone = "UTC"

  pubsub_target {
    topic_name = google_pubsub_topic.pipeline.id
    data       = base64encode("trigger")
  }
}

resource "google_pubsub_topic" "pipeline" {
  name    = "${local.name_prefix}-pipeline"
  project = var.project_id
}