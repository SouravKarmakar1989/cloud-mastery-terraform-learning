# Amazon DynamoDB - Advanced Features

## Pointwise No-Loss Summary

1. Lecture covers advanced DynamoDB capabilities for caching, streaming, global replication, lifecycle, backup, and S3 integration.

## DynamoDB Accelerator (DAX)

1. Managed in-memory cache for DynamoDB.
2. Targets read congestion with microsecond latency for cached data.
3. API-compatible with DynamoDB (minimal app logic change).
4. Default TTL context shown as 5 minutes (configurable).
5. Differentiated from ElastiCache: DAX is specialized for DynamoDB request patterns.

## Stream Processing Options

1. DynamoDB Streams:
   - captures create/update/delete changes,
   - 24-hour retention,
   - commonly used with Lambda.
2. Kinesis Data Streams integration:
   - longer retention (up to 1 year),
   - broader consumer/processing ecosystem.
3. Use cases include real-time reactions, analytics, derivative-table updates, replication workflows.

## Global Tables

1. Multi-region active-active replication.
2. Reads/writes can occur in participating regions.
3. Requires Streams enablement as underlying mechanism.

## Time To Live (TTL)

1. Item expiry attribute can trigger automatic deletion after timestamp.
2. Common use cases:
   - keep only recent data,
   - regulatory retention limits,
   - session expiration handling.

## Backup and Recovery

1. Continuous backup with point-in-time recovery (up to 35 days window).
2. On-demand backups retained until explicitly deleted.
3. Backup operations are designed not to impact table performance.
4. AWS Backup can manage policies and cross-region copy for DR.
5. Restores create new tables.

## DynamoDB and S3 Integration

1. Export table data to S3 (requires PITR context).
2. Export supports point-in-time within backup window.
3. Export does not consume table read capacity.
4. Useful for Athena analysis, archival, ETL pipelines.
5. Export formats include DynamoDB JSON and Ion.
6. Import from S3 to new DynamoDB table supports CSV/JSON/Ion.
7. Import does not consume write capacity; errors go to CloudWatch Logs.

## Outcome

1. Advanced feature set extends DynamoDB into high-performance caching, event-driven data pipelines, global low-latency architecture, and robust backup/export workflows.
