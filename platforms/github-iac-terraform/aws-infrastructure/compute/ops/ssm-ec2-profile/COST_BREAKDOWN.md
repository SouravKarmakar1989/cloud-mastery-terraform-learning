# Cost Breakdown: ops/ssm-ec2-profile

## Components
- IAM resources (no direct charge).
- Downstream SSM Session Manager or Run Command usage costs (minimal/no cost depending on feature).
- Optional VPC endpoints for SSM traffic.

## Pre-Deploy Cost Checklist
1. Include endpoint and network charges if private SSM access is required.
2. Include CloudWatch logging/S3 logging if session logging enabled.
