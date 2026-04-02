resource "aws_s3_bucket" "destination" {
  count  = var.enabled ? 1 : 0
  bucket = "${local.prefix}-${var.bucket_suffix}-${data.aws_caller_identity.current.account_id}"
  tags   = merge(local.common_tags, var.tags)
}

resource "aws_kinesis_firehose_delivery_stream" "this" {
  count       = var.enabled ? 1 : 0
  name        = "${local.prefix}-${var.stream_name}"
  destination = "extended_s3"

  extended_s3_configuration {
    role_arn   = var.firehose_role_arn
    bucket_arn = aws_s3_bucket.destination[0].arn
  }

  tags = merge(local.common_tags, var.tags)
}