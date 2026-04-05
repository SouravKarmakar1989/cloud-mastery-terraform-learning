# Output the full stack's key resources for downstream use

output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "VPC ID created by this stack"
}

output "vpc_cidr" {
  value       = module.vpc.vpc_cidr
  description = "VPC CIDR block"
}

output "public_subnet_ids" {
  value       = values(module.vpc.public_subnet_ids)
  description = "Public subnet IDs (app tier placement)"
}

output "private_subnet_ids" {
  value       = values(module.vpc.private_data_subnet_ids)
  description = "Private subnet IDs (database/cache placement)"
}

output "app_security_group_id" {
  value       = module.vpc.sg_app_id
  description = "Security group ID for app tier (EC2)"
}

output "db_security_group_id" {
  value       = module.vpc.sg_data_id
  description = "Security group ID for database tier (RDS)"
}

output "alb_dns_name" {
  value       = module.load_balancer.alb_dns_name
  description = "Application Load Balancer DNS name (public endpoint)"
}

output "alb_target_group_arn" {
  value       = module.load_balancer.target_group_arn
  description = "Target group ARN for ALB routing"
}

output "ec2_instance_ids" {
  value       = module.ec2_app_tier.instance_ids
  description = "EC2 instance IDs in app tier"
}

output "ec2_instance_private_ips" {
  value       = module.ec2_app_tier.instance_private_ips
  description = "EC2 instance private IPs (for debugging)"
}

# RDS outputs (uncomment when RDS module activated)
# output "rds_endpoint" {
#   value       = module.rds_database[0].db_endpoint
#   description = "RDS database endpoint for app tier to connect"
# }
#
# output "rds_port" {
#   value       = module.rds_database[0].db_port
#   description = "RDS database port"
# }

# ElastiCache outputs (uncomment when ElastiCache module activated)
# output "cache_endpoint" {
#   value       = var.enable_elasticache ? module.elasticache[0].cache_endpoint : null
#   description = "ElastiCache endpoint for app tier to connect"
# }

output "stack_environment" {
  value       = var.environment
  description = "Environment deployed"
}

output "stack_deployed_at" {
  value       = try(local.common_tags.CreatedAt, null)
  description = "Timestamp when stack was deployed"
}
