# S3 MFA Delete Hands On

## Pointwise No-Loss Summary

1. Demo creates versioned bucket for MFA Delete demonstration.
2. In console, MFA Delete status is visible but cannot be changed from UI.
3. MFA Delete is configured using AWS CLI.

## Prerequisites Demonstrated

1. Root account session is used.
2. Root account MFA device is configured and ARN is retrieved from security credentials.
3. Temporary root access keys are created to configure CLI profile for demo.

## CLI Configuration and Enablement

1. AWS CLI profile is created with root access key/secret and target region.
2. CLI command validates profile by listing buckets.
3. put-bucket-versioning command is used with:
   - status Enabled,
   - MFADelete Enabled,
   - MFA device ARN and current MFA code.
4. Bucket Properties confirms MFA Delete now enabled.

## Behavioral Validation

1. Upload object and perform normal delete (creates delete marker) works.
2. Attempt to permanently delete specific version fails in console due to MFA Delete requirement.
3. MFA Delete is then disabled via CLI (same versioning command with MFADelete Disabled and fresh MFA code).
4. Permanent delete operation then succeeds.
5. Bucket Properties confirms MFA Delete disabled.

## Security Hygiene Reminder in Demo

1. Root access keys created for demo are deactivated/removed afterward.

## Outcome

1. Hands-on proves MFA Delete enforcement on permanent version deletes and demonstrates root+CLI operational requirement.
