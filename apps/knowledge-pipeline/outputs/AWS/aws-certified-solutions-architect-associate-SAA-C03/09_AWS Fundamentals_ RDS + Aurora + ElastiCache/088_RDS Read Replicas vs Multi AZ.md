# RDS Read Replicas vs Multi-AZ

## Pointwise No-Loss Summary

1. Lecture focuses on exam-critical distinction between Read Replicas and Multi-AZ.

## Read Replicas

1. Primary purpose: scale read traffic.
2. Up to 15 read replicas.
3. Placement options:
   - same AZ,
   - cross-AZ,
   - cross-region.
4. Replication is asynchronous.
5. Read consistency is eventual (replica lag possible).
6. Replica can be promoted to standalone DB.
7. Application must use/update connection strings to route reads to replicas.
8. Read replicas are for SELECT operations (not write statements).

## Read Replica Network Cost Note

1. Same-region replication traffic between AZs is free for RDS managed service case.
2. Cross-region replication traffic incurs network replication cost.

## Multi-AZ

1. Primary purpose: disaster recovery/high availability.
2. Primary database replicates synchronously to standby in another AZ.
3. Single DNS endpoint abstracts failover.
4. Automatic failover on primary AZ/network/instance/storage failure scenarios.
5. Not used for read scaling.
6. Standby is not used as normal read endpoint in this model.

## Combined Pattern

1. Read replicas can themselves be configured with Multi-AZ for additional resilience.

## Single-AZ to Multi-AZ Conversion

1. Supported as zero-downtime modification.
2. Process conceptually includes:
   - snapshot of primary,
   - restore as standby,
   - synchronization catch-up.

## Outcome

1. Read replicas solve performance/read scale; Multi-AZ solves availability/disaster recovery.
