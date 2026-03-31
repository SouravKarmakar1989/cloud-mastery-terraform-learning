environment            = "prod"
region                 = "us-east-1"
project                = "security"
vpc_cidr               = "10.2.0.0/16"
single_nat_gateway     = false   # HA: one NAT GW per AZ
enable_flow_logs       = true
flow_log_retention_days = 90
enable_s3_endpoint     = true
enable_ssm_endpoints   = true

public_subnets      = { "a" = "10.2.1.0/24", "b" = "10.2.2.0/24", "c" = "10.2.3.0/24" }
private_app_subnets = { "a" = "10.2.11.0/24", "b" = "10.2.12.0/24", "c" = "10.2.13.0/24" }
private_data_subnets = { "a" = "10.2.21.0/24", "b" = "10.2.22.0/24", "c" = "10.2.23.0/24" }
