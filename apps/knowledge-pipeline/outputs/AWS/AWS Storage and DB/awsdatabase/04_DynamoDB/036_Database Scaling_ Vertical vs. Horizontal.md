# Database Scaling: Vertical vs. Horizontal

## Pointwise No-Loss Summary

1. Lecture compares two scaling strategies for growing database demand.
2. Vertical scaling is simple but bounded.
3. Horizontal scaling distributes workload across multiple nodes.

## Vertical Scaling (Scale Up)

1. Increase power of single DB instance (more CPU/memory via larger class).
2. Keeps one main server doing work.
3. Easy operationally, but has practical upper limit and single-node concentration.

## Horizontal Scaling (Scale Out)

1. Add additional nodes to share workload.
2. Examples include replicas and shard-style data distribution patterns.
3. Better path for massive throughput growth and distributed fault tolerance.

## Relational Constraint Note

1. Traditional relational systems are not always ideal for extreme horizontal scaling use cases.
2. This is a key reason NoSQL systems became popular for high-scale distributed workloads.

## Key Takeaway

1. Scale-up helps short-term simplicity; scale-out is usually required for truly massive growth.
