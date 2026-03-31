# Development Environment Configuration
# Minimal resources, more permissive security (for testing)

aws_region     = "us-east-1"
environment    = "dev"
project        = "cloud-mastery"

vpc_cidr           = "10.0.0.0/16"
availability_zones = ["us-east-1a", "us-east-1b"]

# EC2 Configuration
ec2_instance_type  = "t3.micro"  # Free tier eligible
ec2_instance_count = 1           # Single instance for dev
ec2_allowed_ssh_cidrs = [
  "0.0.0.0/0"  # ⚠️ WARNING: In dev only. Restrict in prod!
]

# Database (optional)
rds_engine         = "mysql"
rds_engine_version = "8.0"

# Cache (disabled in dev)
enable_elasticache = false

# Additional tags
tags = {
  Owner       = "DevTeam"
  CostCenter  = "Engineering"
  Compliance  = "Internal"
}
