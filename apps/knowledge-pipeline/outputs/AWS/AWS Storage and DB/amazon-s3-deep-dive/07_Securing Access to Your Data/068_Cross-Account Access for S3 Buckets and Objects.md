# Cross-Account Access for S3 Buckets and Objects

## Pointwise No-Loss Summary

1. Cross-account access enables controlled sharing between AWS accounts.
2. Common uses include:
   - multi-account internal architectures,
   - centralized logging,
   - backup/DR workflows,
   - partner/client collaboration.

## Why It Matters

1. Separating storage/logging into dedicated account improves resilience and audit posture.
2. Collaboration can be enabled without making buckets publicly accessible.

## Two-Sided Configuration Model

1. In requester/partner account:
   - grant identity policy permissions for target bucket actions.
2. In bucket-owner account:
   - bucket policy must explicitly trust/grant target principal.
3. Both sides must align for successful access.

## Example Action Patterns Mentioned

1. get object.
2. put object.
3. put object ACL (where relevant to model shown).

## Outcome

1. Learner understands cross-account S3 access as bilateral policy design, not a one-sided permission change.
