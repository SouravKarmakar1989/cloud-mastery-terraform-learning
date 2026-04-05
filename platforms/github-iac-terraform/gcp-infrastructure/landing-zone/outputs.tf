output "landing_zone_name" {
  description = "Landing zone stack name"
  value       = local.landing_zone_name
}

output "vpc_id" {
  description = "Landing zone VPC self-link"
  value       = module.network.vpc_id
}

output "vpc_name" {
  description = "Landing zone VPC name"
  value       = module.network.vpc_name
}

output "subnet_ids" {
  description = "Subnet self-links by name"
  value       = module.network.subnet_ids
}

output "log_archive_bucket" {
  description = "Bucket used for archived logs"
  value       = module.observability.log_archive_bucket
}

output "log_sink_writer_identity" {
  description = "Service identity writing logs to the archive sink"
  value       = module.observability.log_sink_writer_identity
}

output "notification_channel_id" {
  description = "Optional Cloud Monitoring notification channel ID"
  value       = module.observability.notification_channel_id
}

output "secret_ids" {
  description = "Secret Manager secret IDs by logical name"
  value       = module.security.secret_ids
}

output "secret_names" {
  description = "Secret Manager secret names by logical name"
  value       = module.security.secret_names
}