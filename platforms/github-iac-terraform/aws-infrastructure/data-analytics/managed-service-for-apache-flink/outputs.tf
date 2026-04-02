output "flink_application_name" {
  description = "Flink application name"
  value       = try(aws_kinesisanalyticsv2_application.this[0].name, null)
}