resource "aws_s3_bucket" "templates" {
  bucket = "${local.prefix}-${var.bucket_suffix}"

  tags = merge(local.common_tags, { Name = "${local.prefix}-cfn-templates" })
}
