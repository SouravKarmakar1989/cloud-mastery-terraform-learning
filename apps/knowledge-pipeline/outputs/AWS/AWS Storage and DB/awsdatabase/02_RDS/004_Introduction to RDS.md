# Introduction to RDS

## Pointwise No-Loss Summary

1. RDS is AWS managed service for relational databases.
2. RDS runs inside an AWS VPC.
3. RDS is contrasted with EC2-hosted self-managed databases.

## EC2 vs RDS Management Model

1. EC2 database model is unmanaged:
   - user manages OS,
   - user installs/patches software,
   - user handles database admin lifecycle tasks.
2. RDS model is managed:
   - user chooses instance class and DB engine,
   - no direct shell access to underlying OS,
   - AWS handles many admin tasks (patching, upgrades, backups, recovery workflows).

## Database Engines Mentioned

1. MySQL.
2. MariaDB.
3. PostgreSQL.
4. Oracle.
5. Microsoft SQL Server.
6. Aurora.

## RDS Service Characteristics

1. Supports automated backups and on-demand snapshots.
2. Supports Multi-AZ features.
3. Supports maintenance windows for upgrade operations.
4. Uses EBS-backed storage.
5. Supports storage autoscaling.
6. Integrates with CloudWatch for monitoring, alarms, and automated reactions.
7. Runs within VPC networking controls and security rules.

## Billing Dimensions Mentioned

1. Instance type and database engine.
2. Storage capacity consumption.
3. Throughput and read/write activity.
4. Backup storage usage.
5. Data transfer factors (including cross-AZ scenarios).

## On-Demand vs Reserved

1. On-demand:
   - pay per usage interval,
   - flexible,
   - higher unit cost.
2. Reserved:
   - 1-year or 3-year commitment,
   - lower effective pricing.

## Instance Class Framing

1. General-purpose burstable classes are discussed.
2. Memory-optimized classes are discussed.
3. Naming convention reflects family, generation, and size.
4. Instance sizing impacts performance and pricing.

## Pricing Insight

1. Database engine selection materially changes cost profile.
2. Licensed engines can carry higher rates unless bring-your-own-license models apply.

## Key Takeaway

1. RDS offloads core database infrastructure operations while preserving key sizing/networking/engine choices for the user.
