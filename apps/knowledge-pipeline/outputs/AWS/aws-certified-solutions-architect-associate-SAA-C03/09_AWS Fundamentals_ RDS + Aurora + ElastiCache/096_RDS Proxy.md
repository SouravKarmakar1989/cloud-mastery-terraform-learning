# RDS Proxy

## Pointwise No-Loss Summary

1. RDS Proxy is fully managed, serverless, highly available database proxy for RDS/Aurora in VPC.

## Why Use RDS Proxy

1. Pools and shares DB connections from many clients.
2. Reduces direct connection pressure on database (CPU/RAM/open connections/timeouts).
3. Improves failover handling by reducing failover impact time (up to ~66% reduction noted).
4. Helps enforce IAM authentication patterns for database access.
5. Secrets can be stored securely in AWS Secrets Manager.

## Supported Engines Mentioned

1. MySQL.
2. PostgreSQL.
3. MariaDB.
4. Microsoft SQL Server.
5. Aurora MySQL.
6. Aurora PostgreSQL.

## Application Impact

1. Minimal code changes: switch DB endpoint target from DB instance/cluster to proxy endpoint.

## Networking Constraint

1. Proxy is not publicly accessible.
2. Access is from within VPC.

## Lambda Use Case Highlight

1. Lambda burst/concurrency can create excessive direct DB connections.
2. RDS Proxy absorbs/pools these connections and stabilizes database load.

## Outcome

1. RDS Proxy is presented as scalability, resiliency, and security layer between application clients and relational database backends.
