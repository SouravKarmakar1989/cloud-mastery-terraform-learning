# Aurora High Availability

## Pointwise No-Loss Summary

1. Aurora HA uses both multi-AZ storage architecture and optional replicas.
2. Failover can be fast, especially when replicas already exist.

## Built-In Multi-AZ Storage

1. Aurora cluster volume spans three AZs by default.
2. Writes are persisted across those AZ storage copies.
3. This storage-layer replication exists even without reader replicas.

## Replica-Based Failover

1. Replica instances in other AZs can be promoted automatically on primary failure.
2. Replica priority can be configured to influence promotion order.
3. With replicas present, failover is typically fast (lecture references sub-minute style behavior).

## No-Replica Scenario

1. Aurora can still recover without pre-created replicas.
2. New replacement/reader provisioning path increases failover duration significantly versus pre-provisioned replica case.

## Availability Outcome

1. Cluster remains resilient to single-AZ failures due to:
   - distributed storage,
   - replica promotion capability.
2. Data loss risk is minimized by synchronous-style multi-AZ storage writes.

## Key Takeaway

1. Aurora HA is strongest with both distributed cluster volume and pre-provisioned replicas with planned failover priority.
