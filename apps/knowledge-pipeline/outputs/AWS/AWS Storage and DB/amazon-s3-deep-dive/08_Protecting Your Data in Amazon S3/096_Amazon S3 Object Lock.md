# Amazon S3 Object Lock

## Pointwise No-Loss Summary

1. Object Lock enables WORM-style retention: write once, read many.
2. It prevents object modification/deletion for configured retention windows.

## Why Use It

1. Regulatory/compliance retention requirements.
2. Legal hold and record-preservation workflows.
3. Immutable audit/financial/security record protection.

## Key Mode Types

1. Governance mode:
   - protects data broadly,
   - authorized privileged users can still bypass/adjust under controlled permissions.
2. Compliance mode:
   - strict mode; even root-level users cannot remove protected objects before retention expiry,
   - early removal requires extreme account-level path (as discussed).

## Operational Notes Mentioned

1. Typically enabled at bucket-creation workflow.
2. Existing bucket enablement may require AWS support path.
3. Can be combined with cross-region replication to preserve locked data copies across regions.

## Outcome

1. Learner can apply object lock for immutable retention controls aligned to legal/compliance obligations.
