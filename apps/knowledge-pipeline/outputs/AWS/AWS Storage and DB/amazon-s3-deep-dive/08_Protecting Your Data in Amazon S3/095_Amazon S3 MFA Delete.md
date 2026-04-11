# Amazon S3 MFA Delete

## Pointwise No-Loss Summary

1. MFA Delete adds extra protection for destructive versioning-related actions.
2. It requires both credentials and MFA token code for protected actions.

## What It Protects

1. Delete operations on versioned object paths.
2. Sensitive versioning-state changes (for example suspend/versioning modifications discussed).

## Enablement/Operational Notes

1. Requires versioning context.
2. Must be configured via API/CLI paths (not standard console toggle flow in lesson context).
3. Root/bucket-owner-level authority is required for setup actions.

## Security Benefit

1. Reduces risk of accidental or unauthorized deletion when only static credentials are compromised.
2. Adds second-factor gate before irreversible/destructive operations.

## Outcome

1. Learner understands MFA Delete as high-assurance control for versioned-data protection.
