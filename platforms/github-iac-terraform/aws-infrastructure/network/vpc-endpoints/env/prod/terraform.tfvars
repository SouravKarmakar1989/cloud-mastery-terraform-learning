region      = "us-east-1"
environment = "prod"
project     = "network"
vpc_id      = "REPLACE_ME_VPC_ID"

interface_endpoints = {
  ssm = {
    service_name        = "com.amazonaws.us-east-1.ssm"
    subnet_ids          = ["REPLACE_ME_SUBNET_ID_A", "REPLACE_ME_SUBNET_ID_B"]
    security_group_ids  = ["REPLACE_ME_SECURITY_GROUP_ID"]
    private_dns_enabled = true
  }
  ec2messages = {
    service_name        = "com.amazonaws.us-east-1.ec2messages"
    subnet_ids          = ["REPLACE_ME_SUBNET_ID_A", "REPLACE_ME_SUBNET_ID_B"]
    security_group_ids  = ["REPLACE_ME_SECURITY_GROUP_ID"]
    private_dns_enabled = true
  }
}

gateway_endpoints = {
  s3 = {
    service_name    = "com.amazonaws.us-east-1.s3"
    route_table_ids = ["REPLACE_ME_ROUTE_TABLE_ID_PRIVATE"]
  }
}

enable_endpoint_service   = false
endpoint_service_nlb_arns = []
acceptance_required       = true
