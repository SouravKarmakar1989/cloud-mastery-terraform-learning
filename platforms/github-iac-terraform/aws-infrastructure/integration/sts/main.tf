data "aws_caller_identity" "current" {}

resource "aws_iam_role" "sts_assumable" {
  count = var.enabled ? 1 : 0
  name  = "${local.prefix}-sts-assumable"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          AWS = data.aws_caller_identity.current.arn
        }
      }
    ]
  })

  tags = merge(local.common_tags, var.tags)
}