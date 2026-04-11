# Amazon Aurora

## Pointwise No-Loss Summary

1. Aurora is AWS proprietary relational database technology.
2. It is compatible with MySQL and PostgreSQL drivers/protocol expectations.
3. Performance positioning mentioned:
   - around 5x MySQL-on-RDS performance,
   - around 3x PostgreSQL-on-RDS performance.

## Core Characteristics

1. Storage auto grows from 10 GB up to 256 TB.
2. Supports up to 15 read replicas.
3. Typical replica lag is very low (sub-10 ms highlighted).
4. Failover is very fast compared with traditional RDS patterns.
5. High availability is built-in by architecture.

## Storage/Availability Model

1. Data replicated six ways across three AZs.
2. Writes require four of six copies.
3. Reads require three of six copies.
4. Self-healing behavior and distributed volume design are emphasized.

## Cluster and Endpoints

1. One writer instance handles writes.
2. Multiple reader instances handle reads.
3. Writer endpoint always points to current writer.
4. Reader endpoint load-balances read connections across replicas.
5. Replica auto scaling can adjust reader count dynamically.

## Additional Managed Features Mentioned

1. Automated failover.
2. Backup/recovery.
3. Isolation/security/compliance.
4. Patching with minimal downtime.
5. Monitoring/maintenance.
6. Backtrack capability for point-in-time rewind behavior.

## Outcome

1. Lecture frames Aurora as high-performance, highly available, cloud-optimized relational platform with endpoint-based connection abstraction and storage-driven resilience.
