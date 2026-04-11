# Glacier Vault Lock & S3 Object Lock

## Pointwise No-Loss Summary

1. Lecture compares immutability controls in Glacier and S3.

## Glacier Vault Lock

1. Implements WORM model (Write Once Read Many) at vault level.
2. Apply Vault Lock policy and lock policy itself.
3. After lock, policy cannot be changed or deleted.
4. Objects in locked vault become undeletable/unmodifiable.
5. Strong fit for compliance and data-retention requirements.

## S3 Object Lock Prerequisite

1. S3 Object Lock requires versioning enabled.
2. Also implements WORM semantics, but at object-version level.
3. Can block object-version deletion for defined retention time.

## Retention Modes

1. Compliance mode:
   - object versions cannot be overwritten/deleted by any user, including root,
   - retention mode cannot be changed,
   - retention period cannot be shortened.
2. Governance mode:
   - most users cannot override/delete/change lock settings,
   - privileged users with special IAM permissions can alter retention/delete.

## Retention Period Behavior

1. Retention period is set with lock mode.
2. Retention can be extended.

## Legal Hold

1. Legal hold protects object indefinitely, independent of retention period.
2. Legal hold can be applied/removed by users with s3:PutObjectLegalHold permission.
3. Typical use case is ad-hoc legal/investigation preservation.

## Outcome

1. Lecture distinguishes vault-level immutable lock (Glacier) vs per-object-version lock model (S3 Object Lock with compliance/governance/legal hold controls).
