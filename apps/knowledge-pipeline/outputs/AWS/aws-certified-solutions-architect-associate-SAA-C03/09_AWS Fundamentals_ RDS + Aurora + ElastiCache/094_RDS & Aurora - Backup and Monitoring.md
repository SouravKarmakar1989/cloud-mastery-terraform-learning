# RDS and Aurora - Backup and Monitoring

## Pointwise No-Loss Summary

1. Lecture explains backup modes, restore paths, and Aurora cloning behavior.

## RDS Backups

1. Automated backups include:
   - daily full backup during backup window,
   - transaction-log backups every ~5 minutes.
2. Point-in-time restore possible to recent timestamp window.
3. Retention configurable from 1 to 35 days.
4. Automated backup can be disabled by retention set to 0.
5. Manual DB snapshots are user-triggered and can be kept indefinitely.

## Aurora Backups

1. Automated backups also use 1 to 35 day retention.
2. Automated backups cannot be disabled in Aurora.
3. Point-in-time recovery supported.
4. Manual snapshots are user-triggered and retained as long as desired.

## Cost/Operational Note

1. Snapshot-delete-restore workflow can be cheaper than leaving rarely used DB running continuously in some scenarios.

## Restore Options Mentioned

1. Restoring backup/snapshot creates a new database.
2. RDS MySQL can restore from backup files staged in S3.
3. Aurora MySQL restore path from S3 references Percona XtraBackup format requirement.

## Aurora Database Cloning

1. Creates new Aurora cluster from existing one faster than snapshot/restore path.
2. Uses copy-on-write approach:
   - initial shared storage view,
   - divergence copies data only as changes occur.
3. Useful for creating staging/test clone from production quickly and cost effectively.

## Outcome

1. Lecture differentiates retention/restore behavior across RDS and Aurora and highlights Aurora cloning as fast environment duplication mechanism.
