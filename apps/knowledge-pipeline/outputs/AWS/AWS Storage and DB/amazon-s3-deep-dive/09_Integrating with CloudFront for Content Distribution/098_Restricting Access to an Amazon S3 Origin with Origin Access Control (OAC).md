# Restricting Access to an Amazon S3 Origin with Origin Access Control (OAC)

## Pointwise No-Loss Summary

1. OAC ensures S3 origin content is accessed through authorized CloudFront distribution rather than direct bucket URL paths.
2. This strengthens security posture when CloudFront-specific controls (for example WAF/TLS/policies) should be mandatory for consumers.

## Problem Addressed

1. Without OAC, users may bypass CloudFront and access S3 origin directly in some configurations.
2. Bypass can skip intended edge security controls.

## OAC Security Model

1. CloudFront signs origin requests (SigV4 path) to S3.
2. S3 bucket policy allows access from intended CloudFront distribution context.
3. Direct non-authorized requests to bucket are denied.

## Configuration Pattern

1. Configure OAC settings on CloudFront distribution.
2. Update S3 bucket policy to trust/allow that distribution access path.
3. Validate users consume content only via CloudFront URL.

## Additional Note

1. OAC is presented as modern successor to legacy OAI pattern.

## Outcome

1. Learner can enforce CloudFront-only access path for S3 origin protection.
