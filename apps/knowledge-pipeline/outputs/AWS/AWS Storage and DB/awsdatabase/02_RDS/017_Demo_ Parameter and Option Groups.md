# Demo: Parameter and Option Groups

## Pointwise No-Loss Summary

1. Demo creates and applies custom parameter group and option group to an RDS instance.
2. Shows difference between default groups (not editable) and custom groups (editable).

## Parameter Group Demo

1. Open RDS instance and inspect current parameter group (default group in use).
2. Create new custom parameter group matching DB engine family/version.
3. Open custom group and edit parameters.
4. Demo changes time zone parameter (example: US/Eastern).
5. Save parameter changes.
6. Modify RDS instance and attach new parameter group.
7. Apply change immediately (instead of waiting for maintenance window).

## Option Group Demo

1. Inspect current option group on instance (default option group).
2. Create custom option group for matching engine/version.
3. Add option to custom option group.
4. Demo example adds memcached-related option and keeps default nested settings.
5. Save option group changes.
6. Modify RDS instance and attach custom option group.

## Cleanup Note

1. Custom groups cannot be deleted while attached to active RDS instances.
2. Must first detach/reassign instance back to other group before deleting custom groups.

## Practical Takeaway

1. Parameter groups tune engine parameters.
2. Option groups enable optional engine features.
3. Both are applied by modifying the DB instance configuration.
