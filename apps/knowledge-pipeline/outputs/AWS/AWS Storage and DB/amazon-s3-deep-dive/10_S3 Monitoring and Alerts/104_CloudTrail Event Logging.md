# CloudTrail Event Logging

## Pointwise No-Loss Summary

1. CloudTrail records S3 API-level activity performed by authenticated principals/services in account context.
2. It is configured through CloudTrail service and used to audit management/data events.

## Distinction from S3 Server Access Logs

1. CloudTrail focuses on AWS API actions by users/roles/services.
2. Server access logs focus on request-level bucket/object access traffic patterns.
3. They are complementary, not interchangeable.

## What It Enables

1. Change tracking for S3 configuration actions.
2. Security and operations audit trails.
3. Event investigation by filtering CloudTrail history for S3 event source.

## Outcome

1. Learner can position CloudTrail as control-plane/data-event audit layer for S3 operations.
