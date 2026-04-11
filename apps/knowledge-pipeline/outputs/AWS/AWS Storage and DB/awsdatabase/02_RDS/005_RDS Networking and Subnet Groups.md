# RDS Networking and Subnet Groups

## Pointwise No-Loss Summary

1. RDS deployment requires VPC networking prerequisites.
2. Subnet groups are foundational for RDS placement and high availability.

## Region and VPC Setup

1. Choose target AWS region first.
2. Create/use a dedicated VPC for database workloads.
3. Default VPC is discouraged for secure database deployments.
4. VPC CIDR range defines available private IP space.

## Subnets and Workload Segmentation

1. VPC is divided into subnets.
2. Subnets segment different workload types and security boundaries.
3. RDS is commonly placed in private subnets.
4. Private subnets avoid direct internet reachability/public IP exposure.

## Availability Zones and HA

1. Subnets are tied to specific availability zones.
2. Multi-AZ design needs subnets in different AZs.
3. This enables standby placement and failover resilience.

## DB Subnet Group

1. DB subnet group is a set of subnets available for RDS placement.
2. When creating RDS, AWS selects from subnets in the group.
3. Multi-AZ uses additional subnet/AZ options from same group.

## Client Connectivity Pattern

1. App/database clients should connect using RDS DNS endpoint, not hard-coded IP.
2. DNS endpoint supports failover behavior to standby instances.

## Cross-AZ Transfer Cost Awareness

1. General rule: cross-AZ traffic can incur transfer charges.
2. Keep app and primary DB in same AZ when practical for normal traffic paths.
3. Noted exception context: some managed replication paths (for example Multi-AZ internal replication) are treated differently.

## Design Takeaway

1. Proper subnet group and AZ planning is required before creating production-grade RDS instances.
