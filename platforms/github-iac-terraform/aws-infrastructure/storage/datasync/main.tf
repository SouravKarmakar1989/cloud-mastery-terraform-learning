resource "aws_datasync_location_s3" "this" {
  s3_bucket_arn = var.s3_bucket_arn
  subdirectory  = var.subdirectory

  s3_config {
    bucket_access_role_arn = var.bucket_access_role_arn
  }

  tags = local.common_tags
}
