# Aurora Global Databases

## Pointwise No-Loss Summary

1. Aurora Global Database extends Aurora across multiple AWS regions.
2. Typical goals are global-read locality and regional disaster recovery.

## Topology

1. One primary region hosts writable primary cluster.
2. Up to multiple secondary regions host read-capable secondary clusters.
3. Replication from primary to secondary is low-latency (lecture references typically under a second conditions).

## Read/Write Model

1. Writes occur in primary region by default.
2. Secondary regions are primarily for read workloads.
3. Secondary region clients can read locally to reduce latency and transfer overhead.

## Failover/Switchover

1. Region-wide event can trigger global failover to secondary region.
2. Planned maintenance can use global switchover.
3. Promoted secondary becomes writable primary cluster for continuity.
4. Applications must use correct new writer endpoint after promotion.

## Build Paths

1. Can create new global database from scratch.
2. Can extend existing Aurora cluster into global topology by adding regions (if prerequisites met).

## Snapshot and Recovery Context

1. Global databases still support snapshot/restore workflows.
2. Restored cluster can become new primary and additional regions can be added afterward.

## Write Forwarding Mention

1. Advanced feature can forward writes from secondary region context to primary.
2. Default model remains primary-region write path.

## Key Takeaway

1. Aurora Global Database provides multi-region resilience and read-locality, with explicit failover/cutover planning for endpoints and replication state.
