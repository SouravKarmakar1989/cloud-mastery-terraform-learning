resource "aws_cloudwatch_log_group" "this" {
  count             = var.enabled ? 1 : 0
  name              = var.log_group_name
  retention_in_days = var.log_retention_in_days
  tags              = merge(local.common_tags, var.tags)
}

resource "aws_cloudwatch_metric_alarm" "heartbeat" {
  count               = var.enabled ? 1 : 0
  alarm_name          = "${local.prefix}-${var.alarm_name_suffix}"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = var.metric_name
  namespace           = var.metric_namespace
  period              = var.metric_period_seconds
  statistic           = "Sum"
  threshold           = var.metric_threshold
  treat_missing_data  = "notBreaching"

  tags = merge(local.common_tags, var.tags)
}

resource "aws_cloudwatch_dashboard" "this" {
  count          = var.enabled ? 1 : 0
  dashboard_name = "${local.prefix}-${var.dashboard_name_suffix}"
  dashboard_body = jsonencode({
    widgets = [
      {
        type   = "metric"
        x      = 0
        y      = 0
        width  = 12
        height = 6
        properties = {
          metrics = [[var.metric_namespace, var.metric_name]]
          period  = var.metric_period_seconds
          stat    = "Sum"
          region  = var.region
          title   = "${var.metric_namespace}/${var.metric_name}"
        }
      }
    ]
  })
}