# Using Parallelization for Better Read_Write Performance

## Pointwise No-Loss Summary

1. S3 request scaling can be improved by parallel access across multiple prefixes.
2. Single-prefix request concentration may hit per-prefix request-rate constraints.

## Core Idea

1. Distribute object keys/prefixes to avoid hot-prefix bottlenecks.
2. Read/write in parallel across multiple prefixes rather than serially through one path.

## Effect

1. Aggregate throughput increases when workload is spread across independent prefixes and processed concurrently.
2. Application design (key strategy + concurrent requests) becomes critical for high-rate workloads.

## Outcome

1. Learner understands prefix-sharding + parallel request design as practical S3 throughput optimization technique.
