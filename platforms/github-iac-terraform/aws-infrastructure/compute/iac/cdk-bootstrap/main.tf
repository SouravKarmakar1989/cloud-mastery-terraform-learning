resource "aws_s3_bucket" "assets" {
  bucket = "${local.prefix}-${var.assets_bucket_suffix}"

  tags = merge(local.common_tags, { Name = "${local.prefix}-cdk-assets" })
}

resource "aws_s3_bucket_versioning" "assets" {
  bucket = aws_s3_bucket.assets.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "assets" {
  bucket = aws_s3_bucket.assets.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "assets" {
  bucket = aws_s3_bucket.assets.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
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

resource "aws_iam_role_policy_attachment" "cdk_deploy_managed" {
  for_each = toset(var.deployment_policy_arns)

  role       = aws_iam_role.cdk_deploy.name
  policy_arn = each.value
}
