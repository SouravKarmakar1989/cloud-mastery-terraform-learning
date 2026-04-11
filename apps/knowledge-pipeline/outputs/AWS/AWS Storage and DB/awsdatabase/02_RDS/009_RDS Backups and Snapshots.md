# RDS Backups and Snapshots

## Pointwise No-Loss Summary

1. Lecture explains automated backups and manual snapshots for RDS.
2. They differ in lifecycle, restore behavior, and recovery granularity.

## Automated Backups

1. Performed automatically on schedule (daily backup process with backup window control).
2. Stored in AWS-managed backend storage.
3. Retention policy is configurable:
   - default around one week,
   - maximum up to 35 days.
4. Supports point-in-time recovery (restore to specific timestamp within retention).
5. Setting retention to 0 disables automated backups.
6. Re-enabling from 0 can trigger immediate backup behavior.
7. Deleting RDS instance deletes automated backups permanently.

## Backup Window and Performance

1. Backup occurs during configured backup window.
2. Non-Multi-AZ can see brief I/O suspension during backup operation.
3. Multi-AZ takes backup from standby, reducing impact on primary workload.

## Manual Snapshots

1. Can be taken on demand at any time.
2. Snapshot captures full instance-level state (all databases on that instance).
3. Snapshot is retained until manually deleted.
4. Not automatically removed when source instance is deleted.
5. Does not provide point-in-time granularity between snapshots.

## Restore Behavior

1. Restore from automated backup or snapshot always creates a new RDS instance.
2. Automated backup restore allows time-specific restore point selection.
3. Manual snapshot restore returns to exact snapshot capture state/time.

## Key Takeaway

1. Automated backups are for continuous recoverability windows.
2. Manual snapshots are operator-controlled recovery checkpoints with explicit retention.
