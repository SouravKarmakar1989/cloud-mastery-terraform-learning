# Demo - Enabling Bucket Versioning

## Pointwise No-Loss Summary

1. Demo enables versioning on existing bucket and validates object-version behavior with repeated uploads of same key.
2. It also shows viewing and deleting older versions in console.

## Steps Demonstrated

1. Open bucket properties and enable bucket versioning.
2. Review note that lifecycle rules may need updates for version-aware handling.
3. Upload newer variants of same object key multiple times.
4. Open object versions view and confirm multiple version IDs exist.
5. Open specific versions to verify content differences.
6. Delete selected old versions and confirm remaining current version.

## Outcome

1. Learner can enable versioning and operationally inspect/manage object history in S3 console.
