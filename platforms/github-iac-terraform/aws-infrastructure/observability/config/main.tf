resource "aws_s3_bucket" "this" {
  bucket = "${local.prefix}-config-${data.aws_caller_identity.current.account_id}"

  tags = merge(local.common_tags, { Name = "${local.prefix}-config-delivery" })
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

resource "aws_s3_bucket_lifecycle_configuration" "this" {
  bucket = aws_s3_bucket.this.id

  rule {
    id     = "expire-old-config-versions"
    status = "Enabled"

    noncurrent_version_expiration {
      noncurrent_days = var.retention_in_days
    }
  }
}

resource "aws_s3_bucket_policy" "this" {
  bucket = aws_s3_bucket.this.id
  policy = data.aws_iam_policy_document.config_bucket_policy.json
}

resource "aws_iam_role" "config" {
  name               = "${local.prefix}-config-role"
  assume_role_policy = data.aws_iam_policy_document.config_assume_role.json

  tags = local.common_tags
}

resource "aws_iam_role_policy_attachment" "config_managed_policy" {
  role       = aws_iam_role.config.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWS_ConfigRole"
}

resource "aws_config_configuration_recorder" "this" {
  name     = "${local.prefix}-recorder"
  role_arn = aws_iam_role.config.arn

  recording_group {
    all_supported                 = var.record_all_supported
    include_global_resource_types = var.include_global_resource_types
  }
}

resource "aws_config_delivery_channel" "this" {
  name           = "${local.prefix}-delivery"
  s3_bucket_name = aws_s3_bucket.this.id

  depends_on = [aws_config_configuration_recorder.this]
}

resource "aws_config_configuration_recorder_status" "this" {
  name       = aws_config_configuration_recorder.this.name
  is_enabled = true

  depends_on = [aws_config_delivery_channel.this]
}
