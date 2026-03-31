environment            = "staging"
region                 = "us-east-1"
project                = "security"
vpc_cidr               = "10.1.0.0/16"
single_nat_gateway     = true
enable_flow_logs       = true
flow_log_retention_days = 60
enable_s3_endpoint     = true
enable_ssm_endpoints   = true

public_subnets      = { "a" = "10.1.1.0/24", "b" = "10.1.2.0/24", "c" = "10.1.3.0/24" }
private_app_subnets = { "a" = "10.1.11.0/24", "b" = "10.1.12.0/24", "c" = "10.1.13.0/24" }
private_data_subnets = { "a" = "10.1.21.0/24", "b" = "10.1.22.0/24", "c" = "10.1.23.0/24" }
