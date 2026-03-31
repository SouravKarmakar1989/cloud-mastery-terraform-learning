resource "aws_s3_bucket" "assets" {
  bucket = "${local.prefix}-${var.assets_bucket_suffix}"

  tags = merge(local.common_tags, { Name = "${local.prefix}-cdk-assets" })
}

resource "aws_iam_role" "cdk_deploy" {
  name = "${local.prefix}-cdk-deploy-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect    = "Allow",
      Principal = { AWS = var.trusted_principal_arn },
      Action    = "sts:AssumeRole"
    }]
  })

  tags = local.common_tags
}
