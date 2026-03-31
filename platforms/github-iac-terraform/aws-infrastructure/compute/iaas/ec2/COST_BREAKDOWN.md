# Cost Breakdown: iaas/ec2

## Components
- Amazon EC2 instance: billed per instance-hour (or second) by instance type.
- EBS root volume: billed per GB-month and provisioned IOPS/throughput (if applicable).
- Data transfer out: billed per GB to internet/cross-AZ (inbound usually free).
- Elastic IP (if associated later): billed when unattached or in specific conditions.

## Cost Drivers
- instance_type
- runtime hours per month
- storage size and type
- outbound traffic profile

## Pre-Deploy Cost Checklist
1. Confirm instance family and size for target environment.
2. Estimate monthly runtime hours.
3. Estimate root disk size and IOPS needs.
4. Estimate egress traffic and cross-AZ traffic.
5. Validate whether SSH should be publicly exposed.
