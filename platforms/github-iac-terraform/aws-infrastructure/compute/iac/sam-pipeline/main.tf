resource "aws_s3_bucket" "artifacts" {
  bucket = "${local.prefix}-${var.artifacts_bucket_suffix}"

  tags = merge(local.common_tags, { Name = "${local.prefix}-sam-artifacts" })
}
