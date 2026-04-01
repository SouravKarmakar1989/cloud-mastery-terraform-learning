resource "aws_cloudwatch_log_group" "compute" {
  name              = "/aws/compute/${local.prefix}"
  retention_in_days = var.log_retention_days

  tags = local.common_tags
}

resource "aws_xray_sampling_rule" "default" {
  rule_name      = "${local.prefix}-xray-sampling"
  priority       = 9000
  version        = 1
  reservoir_size = 1
  fixed_rate     = 0.05
  host           = "*"
  http_method    = "*"
  url_path       = "*"
  service_name   = "*"
  service_type   = "*"
  resource_arn   = "*"

  tags = local.common_tags
}
