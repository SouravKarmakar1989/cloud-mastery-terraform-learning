aws_region  = "us-east-1"
environment = "prod"
project     = "cloud-mastery"

vpc_cidr = "10.30.0.0/16"

public_subnets = {
  a = "10.30.1.0/24"
  b = "10.30.2.0/24"
  c = "10.30.3.0/24"
}

private_app_subnets = {
  a = "10.30.11.0/24"
  b = "10.30.12.0/24"
  c = "10.30.13.0/24"
}

private_data_subnets = {
  a = "10.30.21.0/24"
  b = "10.30.22.0/24"
  c = "10.30.23.0/24"
}

single_nat_gateway           = false
cloudtrail_retention_in_days = 365
config_retention_in_days     = 365

tags = {
  Owner      = "PlatformTeam"
  CostCenter = "Engineering"
  Compliance = "Audited"
}