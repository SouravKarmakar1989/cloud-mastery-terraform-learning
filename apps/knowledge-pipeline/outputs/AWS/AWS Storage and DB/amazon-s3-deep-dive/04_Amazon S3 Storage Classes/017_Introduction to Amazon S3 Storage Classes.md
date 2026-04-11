# Introduction to Amazon S3 Storage Classes

## Pointwise No-Loss Summary

1. S3 supports multiple storage classes because one storage pattern does not fit every workload.
2. Different users and teams have different requirements for access speed, availability expectations, and cost.
3. Examples of different patterns shown:
   - long-term compliance retention with rare retrieval,
   - immediate/low-latency access for operational workloads,
   - large media distribution workloads needing fast global access.

## Why Storage Classes Exist

1. Storage classes are purpose-built tiers to align with:
   - access frequency,
   - performance needs,
   - cost constraints,
   - archival/retention requirements.
2. Fast retrieval classes typically cost more.
3. Infrequently accessed or archival classes typically reduce storage cost, often with slower retrieval behavior or different pricing tradeoffs.

## General Storage-Class Concept

1. Storage classes are distinct categories inside a storage system.
2. They help avoid inefficient “treat all data the same” designs.
3. Goal is balancing speed, durability/availability characteristics, and budget.

## Key S3 Rule: Object-Level, Not Bucket-Level

1. Storage class is assigned per object, not per bucket.
2. A single bucket can contain objects in different storage classes.
3. This enables per-object optimization based on lifecycle and access patterns.

## Storage Classes Introduced

1. S3 Standard:
   - default class when no class is selected,
   - highest performance general-purpose class.
2. S3 Standard-IA:
   - for infrequently accessed data,
   - lower storage rate with retrieval-pricing considerations.
3. S3 Intelligent-Tiering:
   - adaptive class for changing/unknown access patterns.
4. S3 One Zone-IA:
   - infrequent access class stored in one AZ,
   - lower cost vs multi-AZ replicated classes.
5. S3 Glacier Instant Retrieval:
   - archival-focused class with instant retrieval.
6. S3 Glacier Flexible Retrieval:
   - retrieval windows from minutes to hours depending on retrieval option.
7. S3 Glacier Deep Archive:
   - lowest-cost long-term archival option.

## Additional Note Mentioned

1. Reduced Redundancy Storage (RRS) exists historically but is deprecated/being phased in favor of newer classes.

## Outcome

1. Sets foundation for detailed, class-by-class deep dive that follows.
