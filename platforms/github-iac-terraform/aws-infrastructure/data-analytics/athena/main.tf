resource "aws_s3_bucket" "query_results" {
  count  = var.enabled ? 1 : 0
  bucket = "${local.prefix}-${var.results_bucket_suffix}-${data.aws_caller_identity.current.account_id}"
  tags   = merge(local.common_tags, var.tags)
}

resource "aws_athena_workgroup" "this" {
  count = var.enabled ? 1 : 0
  name  = "${local.prefix}-${var.workgroup_name}"

  configuration {
    enforce_workgroup_configuration    = true
    publish_cloudwatch_metrics_enabled = true

    result_configuration {
      output_location = "s3://${aws_s3_bucket.query_results[0].id}/results/"
    }
  }

  state = "ENABLED"
  tags  = merge(local.common_tags, var.tags)
}