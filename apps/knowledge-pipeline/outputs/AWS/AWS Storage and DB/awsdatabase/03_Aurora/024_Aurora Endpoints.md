# Aurora Endpoints

## Pointwise No-Loss Summary

1. Aurora provides multiple endpoint types for different traffic patterns.
2. Endpoint abstraction supports failover and read-scaling behaviors.

## Cluster (Writer) Endpoint

1. Represents current primary/writer instance.
2. Application writes target this endpoint.
3. On failover, endpoint remaps to new primary automatically.

## Reader Endpoint

1. Used for read-only traffic.
2. Load balances read connections across replicas.
3. If no replicas exist, reader endpoint can point to primary.
4. Reduces direct read pressure on writer instance.

## Availability Benefit vs Manual Replica Routing

1. In Aurora, clients use stable reader endpoint rather than pinning to individual replica endpoints.
2. If one replica fails, reader endpoint continues routing to healthy replicas.
3. Simplifies client-side topology handling compared with manual per-replica routing models.

## Custom Endpoints

1. For advanced workloads with heterogeneous instance sizing inside same cluster.
2. Allows routing to specific subset(s) of instances.
3. Useful for workload tiering (for example high-priority traffic to stronger replica classes).

## Key Takeaway

1. Aurora endpoints decouple clients from instance-level changes and enable cleaner read/write routing patterns.
