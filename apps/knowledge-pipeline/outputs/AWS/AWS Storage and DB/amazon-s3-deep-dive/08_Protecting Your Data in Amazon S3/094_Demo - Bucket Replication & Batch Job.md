# Demo - Bucket Replication & Batch Job

## Pointwise No-Loss Summary

1. Demo configures replication from source bucket to destination bucket in another region.
2. It then uses batch operation flow for existing-object backfill and validates ongoing replication for new objects.

## Workflow Demonstrated

1. Create destination bucket in different region.
2. Open source bucket management and create replication rule.
3. Set scope (all objects in demo), choose destination, and configure role.
4. Configure options such as destination storage class and replication-time behavior.
5. Detect existing objects and launch one-time S3 batch operations job to seed destination.
6. Monitor batch job status until ready/completed.
7. Verify existing objects appear in destination bucket.
8. Upload new objects to source bucket and validate they replicate automatically by rule.

## Validation Notes

1. Replication status indicators on object metadata help confirm pending/completed states.
2. Permission and KMS policy alignment can affect successful replication for encrypted objects.

## Outcome

1. Learner sees end-to-end setup: initial backfill plus ongoing automatic replication.
