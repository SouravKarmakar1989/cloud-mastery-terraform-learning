# Working with Amazon S3 Buckets

## Pointwise No-Loss Summary

1. After creation, buckets support many configurable properties that control behavior, governance, and integrations.
2. Properties tab centralizes these bucket-level controls.

## Bucket Properties Mentioned

1. Bucket versioning.
2. Bucket tags.
3. Default encryption.
4. Server access logging.
5. CloudTrail data events.
6. Event notifications.
7. Transfer acceleration.
8. Object Lock.
9. Requester Pays.
10. Static website hosting.

## Emptying vs Deleting a Bucket

1. Empty bucket:
   - removes objects (including versions),
   - keeps bucket itself and bucket name.
2. Delete bucket:
   - removes bucket resource entirely,
   - bucket must already be empty,
   - name ownership is relinquished after deletion.

## Operational Importance

1. Keeping bucket but emptying it can preserve globally unique name referenced by apps/automation.
2. Deleting non-empty bucket fails; data must be removed first.
3. In infrastructure-as-code workflows (for example Terraform/CloudFormation), non-empty bucket deletion causes stack/destroy failures unless object cleanup happens first.

## Outcome

1. Learner understands practical bucket lifecycle operations and why empty-vs-delete decision matters for naming continuity and automation reliability.
