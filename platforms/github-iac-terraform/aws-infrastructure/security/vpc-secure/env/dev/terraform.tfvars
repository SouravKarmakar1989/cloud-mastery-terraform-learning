environment            = "dev"
region                 = "us-east-1"
project                = "security"
vpc_cidr               = "10.0.0.0/16"
single_nat_gateway     = true
enable_flow_logs       = true
flow_log_retention_days = 30
enable_s3_endpoint     = true
enable_ssm_endpoints   = true

public_subnets      = { "a" = "10.0.1.0/24", "b" = "10.0.2.0/24" }
private_app_subnets = { "a" = "10.0.11.0/24", "b" = "10.0.12.0/24" }
private_data_subnets = { "a" = "10.0.21.0/24", "b" = "10.0.22.0/24" }
