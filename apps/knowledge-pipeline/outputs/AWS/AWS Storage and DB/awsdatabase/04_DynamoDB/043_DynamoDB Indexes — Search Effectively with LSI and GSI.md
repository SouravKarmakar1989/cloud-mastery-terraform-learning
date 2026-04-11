# DynamoDB Indexes - Search Effectively with LSI and GSI

## Pointwise No-Loss Summary

1. Secondary indexes provide alternative query paths without full-table scans.
2. Lecture covers two index types:
   - Local Secondary Index (LSI),
   - Global Secondary Index (GSI).

## Why Secondary Indexes

1. Base table key design optimizes only specific access patterns.
2. Queries on non-key attributes otherwise require Scan (slow/costly at scale).
3. Indexes create additional lookup structures for faster targeted queries.

## Local Secondary Index (LSI)

1. Keeps same partition key as base table.
2. Adds alternative sort key for additional query ordering/filter patterns within same partition.
3. Must be created at table creation time.
4. Cannot be added later.
5. Shares table read/write capacity (throughput shared with base table).
6. Up to five LSIs per table.
7. Item collection size limits per partition-key scope are relevant (lecture notes 10 GB collection limit context).

## Global Secondary Index (GSI)

1. Defines different key schema from base table (new partition key and optional sort key).
2. Enables completely different access patterns across full dataset.
3. Can be added/modified/deleted after table creation.
4. Has separate read/write capacity settings from base table.
5. Up to larger index counts per table (lecture notes up to 20 GSIs).

## Throughput Interaction Caveat

1. Writes to base table must also update GSIs.
2. If GSI write capacity is insufficient, write pressure can surface as throttling impact on table operations.
3. Capacity planning must include index write/read behavior, not only base table traffic.

## Design Guidance

1. Start from application query patterns.
2. Add only indexes needed for frequent/critical queries.
3. Over-indexing increases cost and operational complexity.

## Key Takeaway

1. LSI = alternate sort within same partition context.
2. GSI = alternate key model for new cross-table access pattern.
