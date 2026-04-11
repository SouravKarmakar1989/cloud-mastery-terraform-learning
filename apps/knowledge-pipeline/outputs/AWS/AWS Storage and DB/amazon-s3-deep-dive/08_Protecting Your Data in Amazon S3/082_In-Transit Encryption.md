# In-Transit Encryption

## Pointwise No-Loss Summary

1. S3 supports TLS-secured HTTPS for protecting data in transit.
2. HTTP can be allowed by default path behavior unless explicitly restricted.

## Security Control Pattern

1. Enforce secure transport via policy condition (aws:SecureTransport style checks in bucket/IAM policy logic).
2. Deny requests when transport is non-secure.
3. Allow operations only when TLS/HTTPS is used.

## Practical Importance

1. Prevents plaintext transfer exposure risk between client and S3 endpoint.
2. Frequently tested concept in AWS exam/security patterns.

## Outcome

1. Learner can enforce transport-layer encryption requirements with policy-driven deny conditions.
