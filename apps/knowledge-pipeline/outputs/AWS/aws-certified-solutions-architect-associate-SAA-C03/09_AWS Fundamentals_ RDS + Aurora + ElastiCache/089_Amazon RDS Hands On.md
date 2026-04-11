# Amazon RDS Hands On

## Pointwise No-Loss Summary

1. Demo creates RDS MySQL database via full configuration flow.

## Creation Workflow Highlights

1. Engine selected: MySQL.
2. Template selected: Free tier.
3. Notes shown that production template exposes richer Multi-AZ deployment options.
4. Credentials set with self-managed password option (Secrets Manager option shown but not used).
5. Instance class chosen from free-tier compatible family.
6. Storage set (20 GB) with option to enable storage auto scaling to upper threshold.
7. Public access enabled for demo.
8. Security group created for DB access.
9. Default MySQL port used: 3306.

## Connectivity Demo

1. SQL client (SQLectron) is used.
2. Connection parameters configured with endpoint, port, username, password, and initial DB.
3. Successful connection validated.
4. Basic SQL operations demonstrated:
   - create table,
   - insert row,
   - select data.

## Console Operations Reviewed

1. Security group inbound rule reviewed for MySQL access.
2. Read replica creation option shown.
3. Monitoring metrics reviewed (CPU, connections, etc.).
4. Snapshot and point-in-time restore actions highlighted.

## Deletion/Cleanup Flow

1. Delete protection must be disabled first via modify.
2. Database deletion then proceeds (with optional final snapshot decision).

## Outcome

1. Hands-on demonstrates full lifecycle: create, connect, query, monitor, and safely delete an RDS MySQL instance.
