aws_region  = "us-east-1"
environment = "staging"
project     = "cloud-mastery"

vpc_cidr = "10.20.0.0/16"

public_subnets = {
  a = "10.20.1.0/24"
  b = "10.20.2.0/24"
}

private_app_subnets = {
  a = "10.20.11.0/24"
  b = "10.20.12.0/24"
}

private_data_subnets = {
  a = "10.20.21.0/24"
  b = "10.20.22.0/24"
}

single_nat_gateway = false

tags = {
  Owner      = "PlatformTeam"
  CostCenter = "Engineering"
}