# Scale Your Applications for Higher Throughput

## Pointwise No-Loss Summary

1. Application-side scaling also limits/boosts effective S3 throughput.
2. Even with optimized prefix strategy, a single compute node can become throughput bottleneck.

## Core Pattern

1. Scale out application workers/instances to increase aggregate network and processing capacity.
2. Combine horizontal app scaling with parallel S3 access for multi-hundred-Gbps/terabit-class patterns.

## Practical Implication

1. End-to-end throughput depends on both S3 access design and client/application architecture.
2. S3 performance tuning should include compute/network scaling decisions, not only bucket/key layout.

## Outcome

1. Learner understands that sustained high S3 throughput requires coordinated storage and application scaling.
