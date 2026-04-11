# S3 Replication - Hands On

## Pointwise No-Loss Summary

1. Demo configures S3 replication between an origin bucket and a replica bucket.
2. Origin bucket is created in one region (example: eu-west-1).
3. Replica bucket is created either:
   - in same region for SRR, or
   - in different region (example: us-east-1) for CRR.
4. Versioning is enabled on both origin and replica buckets at creation time.

## Initial Object State Before Rule

1. beach.jpg is uploaded to origin bucket before replication rule is created.
2. It is not replicated automatically because replication was not yet configured.

## Replication Rule Configuration

1. In origin bucket Management tab, replication rule is created.
2. Rule name example: DemoReplicationRule.
3. Rule is enabled and set to all objects in source bucket.
4. Destination is selected as another bucket in same account.
5. Destination bucket name is provided manually.
6. AWS identifies destination region and rule type (CRR in shown example).
7. New IAM role is created for replication permissions.

## Existing Object Replication Prompt

1. Console asks whether to replicate existing objects.
2. Instructor chooses no (do not replicate existing objects).
3. Existing object replication is noted as separate S3 Batch Operations path.

## New Object Replication Validation

1. After rule activation, coffee.jpg is uploaded to origin.
2. Replica bucket receives coffee.jpg asynchronously after short delay.
3. Version ID is shown as matching between origin and replica.
4. beach.jpg is uploaded again in origin to create a new version.
5. New upload then appears in replica bucket as expected.

## Delete Marker Replication Setting

1. Replication rule is edited to enable delete marker replication.
2. Deleting coffee.jpg (without selecting explicit version) in origin creates delete marker.
3. Delete marker is replicated to replica bucket.
4. Result: object appears deleted in normal object view unless versions are shown.

## Permanent Delete Behavior

1. Permanently deleting a specific version ID in origin is not replicated.
2. Example highlighted: permanently deleting a beach.jpg version in origin does not remove corresponding object version in replica.

## Outcome

1. Hands-on demonstrates full replication lifecycle:
   - rule setup,
   - asynchronous new-object replication,
   - version ID propagation,
   - optional delete-marker replication,
   - non-replication of permanent version deletes.
