aws_region  = "us-east-1"
environment = "dev"
project     = "cloud-mastery"

vpc_cidr = "10.10.0.0/16"

public_subnets = {
  a = "10.10.1.0/24"
  b = "10.10.2.0/24"
}

private_app_subnets = {
  a = "10.10.11.0/24"
  b = "10.10.12.0/24"
}

private_data_subnets = {
  a = "10.10.21.0/24"
  b = "10.10.22.0/24"
}

single_nat_gateway = true

tags = {
  Owner      = "PlatformTeam"
  CostCenter = "Engineering"
}