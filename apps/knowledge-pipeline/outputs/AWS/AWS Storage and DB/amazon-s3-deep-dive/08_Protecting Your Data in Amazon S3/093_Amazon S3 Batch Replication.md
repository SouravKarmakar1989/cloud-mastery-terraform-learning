# Amazon S3 Batch Replication

## Pointwise No-Loss Summary

1. S3 Batch Replication is used for one-time large-scale object copy/replication operations.
2. It is especially useful for existing objects that standard ongoing replication rules do not backfill automatically.

## Key Characteristics

1. Batch job performs a single chosen operation against listed objects.
2. Supports very large scale (billions of objects / exabyte-scale workflows as discussed).
3. Not continuous replication; it runs as a discrete job.

## Typical Use Cases Mentioned

1. Replicate pre-existing objects when enabling replication after data already exists.
2. Retry objects with failed replication status.
3. Replicate already-replicated or legacy data to newly added destinations where needed.

## Operational Distinction

1. New object ongoing replication still depends on replication rules.
2. Batch replication is for targeted backfill/reprocessing, not future-event stream by itself.

## Outcome

1. Learner understands when to use batch replication versus continuous rule-based replication.
