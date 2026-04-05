output "landing_zone_name" {
  description = "Landing zone stack name"
  value       = local.landing_zone_name
}

output "vpc_id" {
  description = "Landing zone VPC ID"
  value       = module.network_security.vpc_id
}

output "public_subnet_ids" {
  description = "Public subnet IDs by AZ"
  value       = module.network_security.public_subnet_ids
}

output "private_app_subnet_ids" {
  description = "Private application subnet IDs by AZ"
  value       = module.network_security.private_app_subnet_ids
}

output "private_data_subnet_ids" {
  description = "Private data subnet IDs by AZ"
  value       = module.network_security.private_data_subnet_ids
}

output "security_group_ids" {
  description = "Security group IDs created by the landing zone"
  value = {
    alb  = module.network_security.sg_alb_id
    app  = module.network_security.sg_app_id
    data = module.network_security.sg_data_id
    vpce = module.network_security.sg_vpce_id
  }
}

output "flow_log_group_name" {
  description = "CloudWatch log group used for VPC Flow Logs"
  value       = module.network_security.flow_log_group_name
}

output "cloudtrail_trail_arn" {
  description = "ARN of the CloudTrail trail"
  value       = module.audit_trail.trail_arn
}

output "cloudtrail_log_bucket_id" {
  description = "S3 bucket used for CloudTrail logs"
  value       = module.audit_trail.log_bucket_id
}

output "config_recorder_name" {
  description = "AWS Config recorder name"
  value       = module.configuration_baseline.config_recorder_name
}

output "config_delivery_bucket" {
  description = "S3 bucket used for AWS Config snapshots"
  value       = module.configuration_baseline.config_delivery_bucket
}