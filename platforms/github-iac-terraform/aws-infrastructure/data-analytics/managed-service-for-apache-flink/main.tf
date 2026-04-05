resource "aws_kinesisanalyticsv2_application" "this" {
  count                  = var.enabled ? 1 : 0
  name                   = "${local.prefix}-${var.application_name}"
  runtime_environment    = "FLINK-1_18"
  service_execution_role = var.service_execution_role_arn

  application_configuration {
    application_code_configuration {
      code_content_type = "ZIPFILE"

      code_content {
        s3_content_location {
          bucket_arn     = var.application_code_bucket_arn
          file_key       = var.application_code_file_key
          object_version = var.application_code_object_version
        }
      }
    }

    flink_application_configuration {
      checkpoint_configuration {
        configuration_type    = "CUSTOM"
        checkpointing_enabled = true
        checkpoint_interval   = 60000
      }

      monitoring_configuration {
        configuration_type = "CUSTOM"
        log_level          = "INFO"
        metrics_level      = "APPLICATION"
      }
    }
  }

  tags = merge(local.common_tags, var.tags)
}