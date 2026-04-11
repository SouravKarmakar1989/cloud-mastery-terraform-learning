# Amazon S3 Glacier - Instant Retrieval

## Pointwise No-Loss Summary

1. Glacier Instant Retrieval is long-term archival storage with millisecond retrieval capability.
2. It is positioned as low-cost storage while still enabling immediate data access.

## Cost and Policy Notes Mentioned

1. Described as significantly cheaper than Standard-IA (lesson cites 68% cheaper).
2. Includes retrieval fee per GB when data is restored/accessed.
3. Includes 90-day minimum storage duration charge.
4. If object is removed/retrieved before 90 days, billing still applies to minimum duration.

## How Data Reaches This Class

1. Direct upload to Glacier Instant Retrieval.
2. Lifecycle transitions from other S3 classes after defined age/conditions.

## Access Pattern Guidance

1. Intended for rarely accessed data.
2. Appropriate when archival data must still be retrieved immediately when needed.

## Example Workloads Mentioned

1. Historical records.
2. Financial records.
3. Healthcare archive data.
4. Research data.
5. Legal-hold data.
6. Regulatory compliance data.

## Outcome

1. Glacier Instant Retrieval provides archival economics with instant access tradeoff through retrieval fees and minimum-duration billing.
