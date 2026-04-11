# Demo: Create a VPC and RDS Subnet Group

## Pointwise No-Loss Summary

1. Demo creates a custom VPC and DB subnet group as prerequisites for RDS deployment.
2. Region used in demo is Ohio.
3. Emphasis is on private-subnet architecture and multi-AZ-ready subnet grouping.

## Create VPC

1. Open VPC console and create custom VPC (not default VPC).
2. VPC named for RDS demo context.
3. Assign CIDR block.
4. Select two availability zones.
5. Configure private subnets only for this setup.
6. Adjust subnet CIDR sizing (demo uses smaller /24-style subnet sizing for practical address allocation).
7. NAT gateway/endpoints left minimal/optional for this specific setup.
8. Keep DNS hostnames and DNS resolution enabled.

## Validate VPC Artifacts

1. Confirm VPC exists.
2. Confirm two subnets were created in different AZs.
3. These subnets form the network foundation for RDS.

## Create RDS DB Subnet Group

1. Open RDS console -> Subnet groups.
2. Create new subnet group.
3. Associate subnet group with newly created demo VPC.
4. Add both private subnets (across different AZs).
5. Create subnet group.

## Result

1. Subnet group is now ready for RDS instance creation.
2. Multi-AZ-ready subnet placement options are established.
