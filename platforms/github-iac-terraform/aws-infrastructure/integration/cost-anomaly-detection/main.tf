resource "aws_ce_anomaly_monitor" "this" {
  count             = var.enabled ? 1 : 0
  name              = "${local.prefix}-anomaly-monitor"
  monitor_type      = "DIMENSIONAL"
  monitor_dimension = "SERVICE"
}