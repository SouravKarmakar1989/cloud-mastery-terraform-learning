# Production Environment Configuration
# High availability, security hardened, optimized for performance

aws_region     = "us-east-1"
environment    = "prod"
project        = "cloud-mastery"

vpc_cidr           = "10.10.0.0/16"
availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]  # 3 AZs for HA

# EC2 Configuration
ec2_instance_type  = "t3.medium"  # Higher performance for production
ec2_instance_count = 3            # Multi-AZ with auto-recovery

ec2_allowed_ssh_cidrs = [
  "10.0.0.0/8"  # Bastion/Jump host only (not public SSH)
]

# Database (managed, optimized)
rds_engine         = "mysql"
rds_engine_version = "8.0"

# Cache (enabled for production performance)
enable_elasticache = true
cache_node_type    = "cache.t3.small"

# Additional tags
tags = {
  Owner       = "Platform-Team"
  CostCenter  = "Operations"
  Compliance  = "SOC2-High"
  Sensitive   = "true"
}
