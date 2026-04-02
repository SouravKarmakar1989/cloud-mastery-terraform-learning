output "cloudwatch_log_group_name" {
  description = "CloudWatch log group name"
  value       = try(aws_cloudwatch_log_group.this[0].name, null)
}

output "cloudwatch_alarm_name" {
  description = "CloudWatch alarm name"
  value       = try(aws_cloudwatch_metric_alarm.heartbeat[0].alarm_name, null)
}

output "cloudwatch_dashboard_name" {
  description = "CloudWatch dashboard name"
  value       = try(aws_cloudwatch_dashboard.this[0].dashboard_name, null)
}