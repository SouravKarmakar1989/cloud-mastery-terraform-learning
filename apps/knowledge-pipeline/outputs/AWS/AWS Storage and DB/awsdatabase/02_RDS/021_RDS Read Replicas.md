# RDS Read Replicas

## Pointwise No-Loss Summary

1. Read replicas are for read scaling and durability patterns, not write scaling.
2. They asynchronously replicate from a source RDS instance.
3. Read replicas complement (not replace) Multi-AZ high-availability behavior.

## Scale Up vs Scale Out

1. Scale up:
   - increase instance class size of single DB instance.
2. Scale out:
   - add read replicas to distribute read workload.
3. AWS-preferred pattern discussed is scale-out where practical.

## Read Replica Behavior

1. Source instance changes replicate asynchronously to replicas.
2. Read replicas are read-only.
3. Each replica has its own DNS endpoint.
4. Database clients should route reads to replica endpoints and writes to source primary.

## Creation Notes

1. Replica creation begins with snapshot of source instance.
2. On single-AZ source, snapshot operation can affect performance.
3. With Multi-AZ source, snapshot can be taken from standby to reduce impact.
4. Automatic backups must be enabled on source to use replicas.

## Topology/Limit Notes

1. Up to several replicas can be created (lecture calls out up to five).
2. Replicas can be in same AZ, different AZ, or different region.
3. Cross-region replicas support region-local read consumers and DR flexibility.

## Promotion Behavior

1. Replica can be manually promoted to standalone DB instance.
2. Promotion breaks replication link to original source.
3. Promoted instance gets its own independent lifecycle.

## Multi-AZ with Read Replicas

1. Read replicas themselves can also be configured as Multi-AZ for higher availability.
2. Replica endpoint and failover concepts mirror Multi-AZ patterns.

## Sharding Pattern Mentioned

1. Read replica + promotion can be used as part of shard split strategy.
2. App logic must route users/data ranges to correct independent databases post-split.

## Key Takeaway

1. Use read replicas to offload read pressure and support topology flexibility; keep write path on primary.
