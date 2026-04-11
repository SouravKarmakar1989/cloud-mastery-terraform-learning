# Demo: Copy and Share RDS Snapshots

## Pointwise No-Loss Summary

1. Demo explains copying snapshots/backups across regions/accounts.
2. Manual snapshots and automated backups differ in sharing behavior.
3. Encrypted snapshot sharing requires KMS key access alignment.

## Copy vs Share Fundamentals

1. You can copy manual snapshots and automated backups.
2. Direct sharing is available for manual snapshots.
3. Automated backups are not directly shareable; copy workflow is used first.

## Region Copy Demo Flow

1. Open source DB instance maintenance/backups view.
2. Select automated backup and choose Copy snapshot.
3. Choose destination region (demo copies Ohio to Oregon).
4. Provide destination snapshot identifier and options.
5. Snapshot copy runs asynchronously and completes in destination region.
6. Copied snapshot in destination region can be used for restore/migration scenarios.

## Snapshot Sharing Demo Flow

1. In destination region, select copied snapshot.
2. Use Share snapshot action.
3. Add target AWS account ID and save.
4. Snapshot becomes visible in target account under shared-with-me view.

## Encryption and Access Constraint

1. Shared snapshot in demo is encrypted.
2. Target account can see/manage copy-level operations but cannot restore without KMS decrypt rights.
3. Additional KMS key-policy/IAM permissions are required for restore usability in target account.

## Visibility Notes

1. Encrypted snapshot sharing uses private access model.
2. Unencrypted snapshots can have broader/public visibility options (with strong caution).

## Practical Takeaway

1. Cross-region and cross-account portability is snapshot-driven.
2. For encrypted assets, key-sharing permissions are as important as snapshot sharing itself.
