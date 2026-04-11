# Amazon S3 Bucket Replication

## Pointwise No-Loss Summary

1. S3 replication asynchronously copies objects from source bucket to destination bucket(s).
2. Replication can target:
   - same account or cross-account buckets,
   - same-region or cross-region destinations,
   - one or multiple destination buckets.

## Core Requirements

1. Versioning must be enabled on both source and destination buckets.
2. Replication is configured through replication rules.

## Configuration Dimensions Mentioned

1. Encrypt replicated objects at destination with chosen keying model.
2. Optionally change destination storage class for replicated copies.
3. Decide delete-marker replication behavior.
4. Use Replication Time Control (RTC) for tighter replication-time objectives.
5. Optionally change ownership behavior of replicated objects for destination account needs.

## Existing vs New Data

1. Standard replication handles new objects after rule creation.
2. Existing pre-rule objects are not auto-replicated by baseline rule flow.
3. Existing-object copy can be handled using S3 Batch Operations workflows.

## Outcome

1. Learner understands replication as asynchronous resilience/compliance mechanism with rule-driven scope and behavior.
