resource "aws_cloudwatch_log_group" "service" {
  count             = var.enabled ? 1 : 0
  name              = "/aws/integration/${local.prefix}/nitro-enclaves"
  retention_in_days = 30
  tags              = merge(local.common_tags, var.tags)
}

resource "aws_iam_policy" "service_access" {
  count       = var.enabled ? 1 : 0
  name        = "${local.prefix}-nitro-enclaves-${var.service_policy_name_suffix}"
  description = "Bootstrap access policy for nitro-enclaves workflows"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["ec2:*"]
        Resource = "*"
      }
    ]
  })

  tags = merge(local.common_tags, var.tags)
}