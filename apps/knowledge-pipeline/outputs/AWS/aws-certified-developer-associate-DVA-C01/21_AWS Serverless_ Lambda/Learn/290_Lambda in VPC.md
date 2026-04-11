# Lambda in VPC

## Pointwise No-Loss Summary

1. By default, Lambda runs outside customer VPC in AWS-managed networking.
2. Default Lambda can reach public services/APIs, but cannot directly reach private resources inside your VPC.
3. To access private VPC resources, Lambda must be configured for VPC access.

## Default Networking Behavior

1. Lambda outside your VPC can access:
   - public internet APIs,
   - AWS public service endpoints (example mentioned: DynamoDB).
2. It cannot directly access private VPC resources such as:
   - EC2 instances,
   - RDS,
   - ElastiCache,
   - internal load balancers.

## Enabling VPC Access for Lambda

1. Configure Lambda with:
   - VPC ID,
   - subnet selection,
   - security group assignment.
2. Lambda creates ENIs (Elastic Network Interfaces) in selected subnets.
3. Lambda execution role requires VPC access permissions (Lambda VPC access execution role policy family).
4. Private resource access (for example RDS) occurs through these ENIs.
5. Security groups must permit traffic (for example RDS SG allowing inbound from Lambda SG).

## Internet Access Caveat in VPC

1. Lambda inside VPC has no internet access by default.
2. Important nuance: placing Lambda in a public subnet does not give it public IP internet access.
3. Public subnet internet behavior for EC2 does not directly apply to Lambda.

## How to Give VPC Lambda Internet Access

1. Place Lambda in private subnet(s).
2. Route outbound traffic through NAT device in public subnet:
   - NAT Gateway,
   - NAT Instance.
3. Ensure route tables/IGW/NAT path are configured correctly.

## Accessing DynamoDB from VPC Lambda

1. Option 1: via NAT + internet route.
2. Option 2 (private preferred): use VPC endpoint for DynamoDB (gateway endpoint model).
3. VPC endpoint path avoids NAT/internet dependency for private AWS service access.

## CloudWatch Logs Note

1. Lecture states Lambda logging to CloudWatch Logs continues to work even when function is in private subnet without NAT/endpoints.

## Exam-Relevant Takeaway

1. Lambda in public subnet does not imply internet access.
2. VPC-connected Lambda needs explicit networking design for both private resource access and outbound internet/service connectivity.
