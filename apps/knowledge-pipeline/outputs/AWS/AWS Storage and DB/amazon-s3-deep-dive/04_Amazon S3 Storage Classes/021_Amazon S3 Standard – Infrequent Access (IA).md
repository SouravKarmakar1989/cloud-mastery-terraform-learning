# Amazon S3 Standard - Infrequent Access (IA)

## Pointwise No-Loss Summary

1. S3 Standard-IA is for infrequently accessed data that still needs immediate retrieval when required.
2. It is positioned for important but rarely accessed datasets such as backups and disaster-recovery files.

## Core Characteristics

1. Lower storage cost per GB than S3 Standard.
2. Introduces per-GB retrieval charges when data is read back.
3. Data is still written across at least three AZs.
4. Durability remains 11 nines (99.999999999%).

## Tradeoff Model

1. You save on monthly storage compared to Standard.
2. You pay retrieval fees when you access stored objects.
3. This fits workloads where retrieval is rare but must be quick when it happens.

## Example Use Cases Mentioned

1. Long-term backup data.
2. Disaster-recovery files.
3. Long-term big-data datasets after active processing phase.

## Outcome

1. Standard-IA offers “rarely accessed but quickly retrievable” storage with lower baseline storage cost and usage-based retrieval billing.
