resource "aws_cloudwatch_log_group" "service" {
  count             = var.enabled ? 1 : 0
  name              = "/aws/ai/${local.prefix}/kendra"
  retention_in_days = 30
  tags              = merge(local.common_tags, var.tags)
}

resource "aws_iam_policy" "service_access" {
  count       = var.enabled ? 1 : 0
  name        = "${local.prefix}-kendra-${var.service_policy_name_suffix}"
  description = "Bootstrap access policy for kendra workflows"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["kendra:*"]
        Resource = "*"
      }
    ]
  })

  tags = merge(local.common_tags, var.tags)
}