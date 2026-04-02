resource "aws_s3_bucket" "templates" {
  bucket = "${local.prefix}-${var.bucket_suffix}"

  tags = merge(local.common_tags, { Name = "${local.prefix}-cfn-templates" })
}

resource "aws_s3_bucket_versioning" "templates" {
  bucket = aws_s3_bucket.templates.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "templates" {
  bucket = aws_s3_bucket.templates.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "templates" {
  bucket = aws_s3_bucket.templates.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_iam_role" "cloudformation_execution" {
  name = "${local.prefix}-cloudformation-execution-role"

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

resource "aws_iam_role_policy_attachment" "cloudformation_execution_admin" {
  role       = aws_iam_role.cloudformation_execution.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
