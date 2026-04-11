# Demo - Bucket Policies

## Pointwise No-Loss Summary

1. Demo validates how bucket policies and IAM policies combine for effective access.
2. Test user starts with no permissions, then receives incremental access.

## Steps Demonstrated

1. Create/use test IAM user (Doug) with no policy attached.
2. Log in as test user and confirm inability to list/read S3 resources.
3. Attach minimal IAM list-only policy.
4. Confirm user can list buckets/objects but cannot open object content.
5. Add bucket policy granting specific actions to user principal on target bucket objects.
6. Refresh test session and verify object read now succeeds.
7. Remove bucket policy and verify access is denied again for read path.

## Key Behavior Observed

1. IAM permissions alone enabled list but not object read.
2. Bucket policy granted read/write capability for specified principal/resource.
3. Removing bucket policy removed that granted capability.

## Outcome

1. Learner sees real policy-composition behavior across IAM and bucket-policy layers.
