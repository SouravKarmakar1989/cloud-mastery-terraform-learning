# S3 MFA Delete

## Pointwise No-Loss Summary

1. MFA Delete adds extra protection for sensitive versioning operations.
2. MFA means multi-factor authentication code from device/app or hardware token.

## Operations Requiring MFA (When Enabled)

1. Permanent deletion of an object version.
2. Suspending bucket versioning.

## Operations Not Requiring MFA

1. Enabling versioning.
2. Listing deleted versions.

## Constraints

1. Bucket versioning must be enabled to use MFA Delete.
2. Only bucket owner root account can enable/disable MFA Delete.

## Outcome

1. Feature is positioned as anti-destructive control against irreversible version deletion and versioning-suspension operations.
