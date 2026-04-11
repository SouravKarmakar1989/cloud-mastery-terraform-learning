# Demo - Using Amazon S3 SSE-KMS

## Pointwise No-Loss Summary

1. Demo configures SSE-KMS at object upload and bucket default levels.
2. It also highlights bucket-key behavior and sharing implications.

## Steps Demonstrated

1. Open target bucket and inspect existing encryption context.
2. Upload files and override encryption to SSE-KMS with selected key.
3. Verify object attributes show SSE-KMS and key ARN.
4. Modify existing object encryption from another mode to SSE-KMS.
5. Configure bucket default encryption to SSE-KMS and choose customer-managed key.
6. Enable bucket key at bucket configuration level for KMS request-cost optimization path.

## Key Operational Notes

1. Bucket-key setting is bucket-level behavior, not toggled per object-edit path.
2. Sharing/reading SSE-KMS objects requires recipients to have KMS decrypt permissions on key.
3. Public-object scenarios generally conflict with restrictive KMS key usage unless broad key access is intentionally configured.

## Outcome

1. Learner can apply SSE-KMS in both per-object and default-bucket workflows with awareness of key-permission dependencies.
