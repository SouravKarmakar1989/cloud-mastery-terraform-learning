# Amazon S3 One Zone - Infrequent Access (IA)

## Pointwise No-Loss Summary

1. One Zone-IA is similar to Standard-IA but stores data in a single Availability Zone.
2. It targets infrequently accessed data where lower cost is prioritized and data can be recreated if lost.

## Core Characteristics

1. Lower cost than Standard-IA (lesson cites around 20% less than Standard-IA).
2. Same low-latency/high-throughput access profile as other non-archive S3 classes discussed.
3. Data is not replicated across multiple AZs in-region for this class.

## Risk/Resiliency Tradeoff

1. Because data is stored in one AZ, AZ failure can result in data loss for that copy.
2. Therefore this class is for recreatable or secondary-copy data, not sole irreplaceable primary data.

## Example Use Cases Mentioned

1. Secondary backup copies.
2. Older application data.
3. Infrequently accessed big-data datasets.
4. Copies of archival/older documents.

## Outcome

1. One Zone-IA is the lowest-cost IA option in this sequence, with explicit resilience tradeoff from single-AZ placement.
