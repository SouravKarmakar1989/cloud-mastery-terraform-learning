# Multi-AZ RDS

## Pointwise No-Loss Summary

1. Multi-AZ RDS is for high availability, not performance scaling.
2. It creates primary and standby instances in different AZs within same region.
3. Data is synchronously replicated from primary to standby.

## Architecture

1. Primary instance handles read/write workload.
2. Standby instance is passive under normal operation.
3. Standby remains data-synchronized with primary.
4. Shared endpoint/DNS abstraction is used by clients.

## Failover Behavior

1. On primary failure, DNS target shifts to standby.
2. Typical failover window discussed is about 1 to 2 minutes.
3. Reboot with failover can be used to test failover behavior.
4. Synchronous replication design targets minimal data loss in failover.

## What Multi-AZ Is Not

1. Not a read-scaling feature.
2. Does not improve query performance by itself.
3. Read replicas are the scaling mechanism for read throughput expansion.

## Operational Benefits

1. Improves availability during AZ or instance-level failures.
2. Maintenance operations can be staged to reduce impact (standby-first workflows).
3. Backups/snapshots can be sourced from standby, reducing performance impact on primary.

## Key Takeaway

1. Multi-AZ is a resilience and continuity feature centered on fast recovery and reduced disruption.
