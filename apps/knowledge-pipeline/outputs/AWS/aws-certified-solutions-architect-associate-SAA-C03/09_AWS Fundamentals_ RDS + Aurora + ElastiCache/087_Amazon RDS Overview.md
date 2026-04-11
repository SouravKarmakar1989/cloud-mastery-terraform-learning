# Amazon RDS Overview

## Pointwise No-Loss Summary

1. Amazon RDS is a managed relational database service using SQL engines.
2. Supported engines listed:
   - PostgreSQL,
   - MySQL,
   - MariaDB,
   - Oracle,
   - Microsoft SQL Server,
   - IBM DB2,
   - Aurora.

## Why Use RDS Instead of Self-Managed DB on EC2

1. Automated provisioning.
2. Automated OS patching.
3. Continuous backups and point-in-time restore.
4. Built-in monitoring dashboards.
5. Read replicas for read scaling.
6. Multi-AZ option for disaster recovery/high availability.
7. Maintenance windows for upgrades.
8. Vertical and horizontal scaling options.
9. Storage backed by EBS.
10. Limitation: no SSH access to underlying host.

## RDS Storage Auto Scaling

1. Helps avoid manual storage scaling operations.
2. User sets a maximum storage threshold.
3. Auto scaling triggers when:
   - free storage is below 10% of allocated storage,
   - low-storage condition lasts at least 5 minutes,
   - at least 6 hours since last storage modification.
4. Good for unpredictable workloads.
5. Supported across RDS engines.

## Outcome

1. Lecture establishes RDS as managed SQL database platform and highlights storage auto scaling behavior and trigger conditions.
