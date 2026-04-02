resource "aws_cloudwatch_log_group" "service" {
  count             = var.enabled ? 1 : 0
  name              = "/aws/ai/${local.prefix}/transcribe"
  retention_in_days = 30
  tags              = merge(local.common_tags, var.tags)
}

resource "aws_iam_policy" "service_access" {
  count       = var.enabled ? 1 : 0
  name        = "${local.prefix}-transcribe-${var.service_policy_name_suffix}"
  description = "Bootstrap access policy for transcribe workflows"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["transcribe:*"]
        Resource = "*"
      }
    ]
  })

  tags = merge(local.common_tags, var.tags)
}