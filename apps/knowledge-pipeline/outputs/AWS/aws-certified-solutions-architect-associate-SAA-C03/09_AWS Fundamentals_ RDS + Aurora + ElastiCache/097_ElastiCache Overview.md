# ElastiCache Overview

## Pointwise No-Loss Summary

1. ElastiCache is managed in-memory caching service (Redis/Memcached), analogous to how RDS manages relational engines.
2. Main value is low-latency/high-throughput cache access.

## Why Use Cache

1. Offload read-heavy pressure from databases.
2. Cache common query results.
3. Improve response times.
4. Enable stateless application session pattern.

## Managed-Service Benefits

1. AWS handles provisioning, patching, monitoring, failure recovery, and backups.

## Important Design Reality

1. Cache adoption requires application code changes and cache strategy design.
2. Cache invalidation/staleness handling is key complexity.

## Pattern 1: Query Cache

1. App checks cache first.
2. Cache hit returns response immediately.
3. Cache miss reads from DB and writes result back to cache.

## Pattern 2: Session Store

1. Session state stored in ElastiCache.
2. Any app instance can read session for user continuity.
3. Helps support stateless app tier behavior.

## Redis vs Memcached Highlights

1. Redis highlights:
   - Multi-AZ/replication/read replica options,
   - persistence/backup capabilities,
   - rich data structures (sets/sorted sets).
2. Memcached highlights:
   - sharded multi-node model,
   - multi-threaded performance orientation,
   - fewer built-in HA/persistence characteristics in classic mode.

## Outcome

1. Lecture frames ElastiCache as architecture-level performance and state-management accelerator requiring deliberate application integration.
