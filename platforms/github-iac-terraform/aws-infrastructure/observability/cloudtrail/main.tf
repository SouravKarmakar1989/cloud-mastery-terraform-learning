resource "aws_s3_bucket" "this" {
  bucket = "${local.prefix}-cloudtrail-${data.aws_caller_identity.current.account_id}"

  tags = merge(local.common_tags, { Name = "${local.prefix}-cloudtrail-logs" })
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
  bucket = aws_s3_bucket.this.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.this.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_policy" "this" {
  bucket = aws_s3_bucket.this.id
  policy = data.aws_iam_policy_document.trail_bucket_policy.json
}

resource "aws_cloudwatch_log_group" "this" {
  name              = "/aws/cloudtrail/${local.prefix}"
  retention_in_days = var.retention_in_days

  tags = local.common_tags
}

resource "aws_iam_role" "cloudtrail" {
  name               = "${local.prefix}-cloudtrail-role"
  assume_role_policy = data.aws_iam_policy_document.cloudtrail_assume_role.json

  tags = local.common_tags
}

resource "aws_iam_role_policy" "cloudtrail_logs" {
  name   = "${local.prefix}-cloudtrail-logs"
  role   = aws_iam_role.cloudtrail.id
  policy = data.aws_iam_policy_document.cloudtrail_logs.json
}

resource "aws_cloudtrail" "this" {
  name                          = "${local.prefix}-${var.trail_name}"
  s3_bucket_name                = aws_s3_bucket.this.id
  include_global_service_events = var.include_global_service_events
  is_multi_region_trail         = var.is_multi_region_trail
  enable_log_file_validation    = var.enable_log_file_validation

  cloud_watch_logs_group_arn = "${aws_cloudwatch_log_group.this.arn}:*"
  cloud_watch_logs_role_arn  = aws_iam_role.cloudtrail.arn

  depends_on = [aws_s3_bucket_policy.this]

  tags = local.common_tags
}
