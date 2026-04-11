# Lambda File Systems Mounting

## Pointwise No-Loss Summary

1. Lambda can mount Amazon EFS when function runs inside a VPC.
2. Mounting is configured to local path during Lambda initialization.
3. EFS access points are required in this integration model.

## EFS Mounting Requirements

1. Lambda must be VPC-connected.
2. EFS file system must expose access point configuration.
3. Network path between Lambda subnets and EFS mount targets must be available.

## EFS Scaling/Limit Notes

1. Each Lambda execution environment can create additional EFS connections.
2. Large concurrency can approach EFS connection limits.
3. Burst creation of many Lambda instances can hit burst-related connection constraints.

## Storage Options Comparison Discussed

1. /tmp ephemeral storage:
   - up to 10 GB,
   - temporary/non-durable,
   - mutable file-system operations,
   - fastest local access,
   - not shared globally across all invocations,
   - base amount included with extra beyond threshold billed.
2. Lambda Layers:
   - limited layer/package size budget,
   - immutable durable archive-style content,
   - shared across invocations,
   - fast local-style access,
   - IAM-governed access.
3. Amazon S3:
   - effectively very large capacity,
   - durable object storage,
   - mutable via API operations,
   - network access latency profile,
   - pricing based on storage/requests/transfer,
   - shared across invocations.
4. Amazon EFS:
   - elastic durable file system,
   - mutable shared POSIX-like file operations,
   - mounted network file system,
   - pricing for storage/throughput/transfer,
   - shared across invocations.

## Overall Takeaway

1. Choose storage mode based on durability, mutability, sharing model, size, and latency needs:
   - /tmp for local temporary working set,
   - layers for static reusable dependencies,
   - S3 for durable object persistence,
   - EFS for shared durable file-system semantics.
