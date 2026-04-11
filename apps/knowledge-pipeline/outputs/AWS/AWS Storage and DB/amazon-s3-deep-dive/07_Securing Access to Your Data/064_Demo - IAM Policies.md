# Demo - IAM Policies

## Pointwise No-Loss Summary

1. Demo manages S3 access for test user entirely via IAM policy after removing bucket policy dependency.
2. It also highlights KMS permission dependency for encrypted objects.

## Steps Demonstrated

1. Remove existing bucket policy from target bucket.
2. Create IAM policy in JSON with S3 permissions for specific bucket/object resources.
3. Attach policy to test user.
4. Test user session shows partial behavior (for example list scope based on exact permission and resource pattern).
5. Attempt to open encrypted object reveals missing KMS permissions.
6. Update IAM policy to include required KMS actions on specific key (describe/encrypt/decrypt path as shown).
7. Re-test user access and confirm object read succeeds.

## Key Behavior Observed

1. S3 authorization success may still fail without matching KMS key permissions when object uses SSE-KMS.
2. IAM-only model works when all dependent permissions (S3 + KMS) are granted correctly.

## Outcome

1. Learner sees complete IAM-driven S3 access pattern including encryption-key dependency handling.
