region                         = "us-east-1"
environment                    = "dev"
project                        = "network"
amazon_side_asn                = 64512
auto_accept_shared_attachments = "disable"

# Replace with actual VPC IDs and subnet IDs from your VPC modules.
vpc_attachments = {
  app = {
    vpc_id       = "REPLACE_ME_VPC_ID"
    subnet_ids   = ["REPLACE_ME_SUBNET_ID_A", "REPLACE_ME_SUBNET_ID_B"]
    dns_support  = "enable"
    ipv6_support = "disable"
  }
}
