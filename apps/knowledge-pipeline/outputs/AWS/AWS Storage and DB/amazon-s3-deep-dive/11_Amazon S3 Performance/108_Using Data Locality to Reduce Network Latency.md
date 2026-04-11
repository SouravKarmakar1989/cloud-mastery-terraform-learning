# Using Data Locality to Reduce Network Latency

## Pointwise No-Loss Summary

1. Data locality strongly affects S3 application performance.
2. Accessing data from distant regions increases latency and can degrade user/app experience.

## Performance Pattern

1. If compute/workloads run far from bucket region, read/write operations incur additional network delay.
2. Replicating data to regions closer to consuming workloads can reduce latency and improve responsiveness.

## Practical Approach Mentioned

1. Use replication to place required copies near application regions.
2. Keep data-access paths local whenever possible for better end-to-end throughput/latency balance.

## Outcome

1. Learner understands region placement/locality as first-order S3 performance lever.
