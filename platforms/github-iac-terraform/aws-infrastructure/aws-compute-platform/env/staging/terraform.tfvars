# Staging Environment Configuration
# Production-like, but with smaller instance sizes for cost savings

aws_region     = "us-east-1"
environment    = "staging"
project        = "cloud-mastery"

vpc_cidr           = "10.1.0.0/16"
availability_zones = ["us-east-1a", "us-east-1b"]

# EC2 Configuration
ec2_instance_type  = "t3.small"
ec2_instance_count = 2  # Multi-AZ for testing failover

ec2_allowed_ssh_cidrs = [
  "10.0.0.0/8"  # VPN/Corporate network only
]

# Database
rds_engine         = "mysql"
rds_engine_version = "8.0"

# Cache (enabled for testing)
enable_elasticache = true
cache_node_type    = "cache.t3.micro"

# Additional tags
tags = {
  Owner       = "DevTeam"
  CostCenter  = "Engineering"
  Compliance  = "SOC2-Light"
}
