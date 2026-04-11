# S3 Replication

## Pointwise No-Loss Summary

1. Amazon S3 replication has two modes:
   - CRR (Cross-Region Replication),
   - SRR (Same-Region Replication).
2. Replication is asynchronous between source and destination buckets.

## Configuration Requirements

1. Versioning must be enabled on both source and destination buckets.
2. For CRR, source and destination regions must be different.
3. For SRR, source and destination regions are the same.
4. Buckets can be in different AWS accounts.
5. Proper IAM permissions must be granted to S3 service to read/write required buckets for replication.

## Use Cases Mentioned

1. CRR use cases:
   - compliance,
   - lower-latency access in another region,
   - cross-account replication.
2. SRR use cases:
   - log aggregation across multiple S3 buckets,
   - live replication between production and test accounts/environments.

## Outcome

1. Lecture introduces replication model, requirements, and typical CRR/SRR scenarios before hands-on.
