# Demo: Create an Aurora Serverless Database Cluster

## Pointwise No-Loss Summary

1. Demo creates a new Aurora Serverless v2 cluster from scratch.
2. Workflow is mostly same as normal Aurora cluster creation, with serverless capacity settings replacing fixed class sizing.

## Creation Flow

1. Open RDS -> Create database.
2. Select Aurora (MySQL-compatible in demo).
3. Choose engine version aligned with desired features (global DB + serverless v2 support filters used).
4. Set cluster identifier and credentials.
5. Choose storage type (Aurora Standard in demo).

## Serverless-Specific Compute

1. Select Aurora Serverless v2 instance configuration.
2. Set minimum and maximum ACUs.
3. Capacity scales dynamically based on demand.

## Availability and Networking

1. Configure replica for HA posture if desired.
2. Choose VPC and DB subnet group.
3. Disable public access.
4. Attach security group.
5. Keep auth mode as configured (password in demo).

## Additional Settings

1. Configure initial DB name.
2. Select parameter groups (defaults in demo).
3. Set backup retention/encryption/other familiar RDS-style options.

## Key Outcome

1. Resulting cluster uses serverless compute behavior instead of fixed provisioned instance sizing.
2. Core Aurora networking/backup/security setup patterns remain consistent with previous cluster demos.
