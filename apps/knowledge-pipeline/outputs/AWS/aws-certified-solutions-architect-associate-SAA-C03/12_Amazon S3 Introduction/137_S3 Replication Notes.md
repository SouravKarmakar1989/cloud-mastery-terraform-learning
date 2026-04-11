# S3 Replication Notes

## Pointwise No-Loss Summary

1. After enabling replication, only new objects are replicated automatically.
2. Existing objects (and objects that previously failed replication) require S3 Batch Replication.
3. Replication of delete markers from source to destination is optional.
4. Permanent deletes tied to specific version IDs are not replicated.
5. Rationale for not replicating permanent version deletes is to reduce malicious-delete propagation risk.
6. Replication chaining is not supported:
   - if bucket1 replicates to bucket2,
   - and bucket2 replicates to bucket3,
   - objects from bucket1 are not automatically replicated to bucket3.

## Outcome

1. Notes clarify behavior limits and important replication edge cases for exam and design decisions.
