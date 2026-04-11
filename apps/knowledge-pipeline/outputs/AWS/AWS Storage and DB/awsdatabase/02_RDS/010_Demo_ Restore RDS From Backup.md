# Demo: Restore RDS From Backup

## Pointwise No-Loss Summary

1. Demo shows manual snapshot creation and restore from automated backup.
2. Restore operation creates a new RDS instance, not an in-place overwrite.

## Initial Context

1. Existing RDS instance already has automated backup available.
2. Manual snapshot is also created on demand in demo.

## Create Manual Snapshot

1. Open instance actions and take snapshot.
2. Provide snapshot name.
3. Snapshot enters creating state and completes asynchronously.

## Restore from Automated Backup

1. In instance backup area, select automated backup and choose restore.
2. Configure target restore type (single instance in demo).
3. Provide new DB instance identifier for restored instance.
4. Select instance class, storage type/size, VPC, subnet group, security group, and AZ.
5. Keep authentication/encryption settings aligned to source needs.
6. Choose parameter and option groups (defaults shown in demo).
7. Configure maintenance/deletion protection preferences.
8. Launch restore.

## Important Restore Characteristics

1. Restore creates separate new RDS instance.
2. All databases in source instance backup are restored together.
3. Endpoint/DNS of restored instance is different from original instance.
4. Applications may need connection-string endpoint updates when switching to restored instance.

## Point-in-Time Note

1. Automated-backup-based restore supports point-in-time style recovery selection.
2. Lecture notes practical recovery windows may still involve short potential data-loss gap depending on backup/log timing context.

## Operational Takeaway

1. Recovery planning must include both technical restore steps and downstream client endpoint cutover plan.
