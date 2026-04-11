# S3 Security: Bucket Policy

## Pointwise No-Loss Summary

1. S3 security is presented across multiple mechanisms.

## User-Based Security

1. IAM policies on users control which S3 API calls are allowed.

## Resource-Based Security

1. S3 bucket policies are resource policies applied at bucket scope.
2. Bucket policies can allow:
   - specific users,
   - users from other AWS accounts (cross-account),
   - public access scenarios.

## ACL-Based Security

1. Object ACLs provide finer-grained controls and can be disabled.
2. Bucket ACLs are less common and can also be disabled.
3. Modern common approach emphasized is bucket policies.

## Access Evaluation Principle Highlighted

1. IAM principal can access S3 object when:
   - IAM permissions allow OR resource policy allows,
   - and there is no explicit deny.

## Encryption as Security Layer

1. Objects can be encrypted using encryption keys as another protection mechanism.

## Bucket Policy Structure (JSON)

1. Policy is JSON document.
2. Core elements highlighted:
   - Resource: bucket/object ARN scope,
   - Effect: Allow or Deny,
   - Action: API operations,
   - Principal: who the statement applies to.
3. Example explained:
   - Principal "*",
   - Action "GetObject",
   - Resource with bucket/*,
   - result: public read on all objects in bucket.

## Common Bucket Policy Use Cases Mentioned

1. Grant public read access.
2. Enforce encryption at upload.
3. Grant cross-account access.

## Security Scenarios Reviewed

1. Public website visitor access via bucket policy allowing public reads.
2. IAM user in same account using IAM policy to access S3.
3. EC2 access via IAM role permissions.
4. Cross-account IAM user access via bucket policy.

## Block Public Access Settings

1. S3 Block Public Access is an extra anti-data-leak safety layer.
2. If enabled, bucket will not become public even with public bucket policy.
3. Recommended to keep enabled when buckets should never be public.
4. Can also be set at account level for all buckets.

## Outcome

1. Lecture frames bucket policy as primary practical control for S3 resource access and public/cross-account use cases, with Block Public Access as protective guardrail.
