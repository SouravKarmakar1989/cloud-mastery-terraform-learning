resource "google_project_service" "logging" {
  service            = "logging.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}

resource "google_project_service" "monitoring" {
  service            = "monitoring.googleapis.com"
  project            = var.project_id
  disable_on_destroy = false
}

resource "google_storage_bucket" "log_archive" {
  name                        = "${local.name_prefix}-log-archive-${var.project_id}"
  location                    = var.region
  storage_class               = "NEARLINE"
  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"
  force_destroy               = var.environment != "prod"
  project                     = var.project_id
  labels                      = local.common_labels

  lifecycle_rule {
    action {
      type          = "SetStorageClass"
      storage_class = "COLDLINE"
    }
    condition {
      age = 90
    }
  }
}

resource "google_logging_project_sink" "archive_sink" {
  name                   = "${local.name_prefix}-log-sink-archive"
  destination            = "storage.googleapis.com/${google_storage_bucket.log_archive.name}"
  filter                 = "severity >= WARNING"
  project                = var.project_id
  unique_writer_identity = true
}

resource "google_storage_bucket_iam_member" "log_writer" {
  bucket = google_storage_bucket.log_archive.name
  role   = "roles/storage.objectCreator"
  member = google_logging_project_sink.archive_sink.writer_identity
}

resource "google_bigquery_dataset" "logs" {
  count      = var.export_to_bigquery ? 1 : 0
  dataset_id = replace("${local.name_prefix}_logs", "-", "_")
  location   = var.region
  project    = var.project_id
  labels     = local.common_labels
}

resource "google_logging_project_sink" "bq_sink" {
  count                  = var.export_to_bigquery ? 1 : 0
  name                   = "${local.name_prefix}-log-sink-bq"
  destination            = "bigquery.googleapis.com/projects/${var.project_id}/datasets/${google_bigquery_dataset.logs[0].dataset_id}"
  filter                 = "severity >= INFO"
  project                = var.project_id
  unique_writer_identity = true

  bigquery_options {
    use_partitioned_tables = true
  }
}

resource "google_bigquery_dataset_iam_member" "log_bq_writer" {
  count      = var.export_to_bigquery ? 1 : 0
  dataset_id = google_bigquery_dataset.logs[0].dataset_id
  role       = "roles/bigquery.dataEditor"
  member     = google_logging_project_sink.bq_sink[0].writer_identity
  project    = var.project_id
}

resource "google_monitoring_notification_channel" "email" {
  count        = var.notification_email != "" ? 1 : 0
  display_name = "${local.name_prefix}-alert-email"
  type         = "email"
  project      = var.project_id

  labels = {
    email_address = var.notification_email
  }
}