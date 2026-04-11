# Demo: Delete an RDS Instance

## Pointwise No-Loss Summary

1. Demo shows safe cleanup workflow for RDS instance deletion.
2. Deletion protection must be disabled before delete if enabled.
3. Deletion options determine backup retention behavior.

## Deletion Flow

1. Select target RDS instance.
2. If deletion protection is enabled, open Modify.
3. Disable deletion protection.
4. Apply change immediately (or during maintenance window if desired).
5. Return to instance actions and choose Delete.

## Delete-Time Options Discussed

1. Create final snapshot option (enabled by default) can be kept or disabled.
2. Retain automated backups option can be kept or disabled.
3. Manual snapshots are not auto-deleted by this choice and must be cleaned up separately if desired.
4. Confirmation acknowledges irreversible loss of associated recovery points when options are unchecked.

## Demo Choice

1. Final snapshot creation disabled.
2. Retain automated backups disabled.
3. Instance deletion confirmed and initiated.

## Operational Takeaway

1. Cost hygiene requires deleting unused instances promptly.
2. Be explicit about final snapshot/backup retention to avoid accidental data loss or unnecessary backup costs.
