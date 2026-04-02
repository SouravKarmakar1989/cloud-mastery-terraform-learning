output "anomaly_monitor_arn" {
  description = "Cost anomaly monitor ARN"
  value       = try(aws_ce_anomaly_monitor.this[0].arn, null)
}