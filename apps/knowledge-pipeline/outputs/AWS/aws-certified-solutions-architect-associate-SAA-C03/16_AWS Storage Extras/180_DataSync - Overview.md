# DataSync - Overview

## Pointwise No-Loss Summary

1. AWS DataSync is used to move/synchronize large datasets between on-prem/other-cloud/AWS storage endpoints.

## Supported Movement Patterns

1. On-premises (or other cloud) to AWS.
2. AWS to on-premises.
3. AWS-to-AWS storage synchronization.

## Endpoints and Protocol Context

1. On-prem/other-cloud sources can include NFS, SMB, HDFS and related environments.
2. Agent is required for on-prem/other-cloud connectivity.
3. Agent not required for AWS-to-AWS synchronization.

## AWS Storage Targets Mentioned

1. S3 (including Glacier classes context).
2. EFS.
3. FSx variants.

## Operational Characteristics

1. Tasks are scheduled (for example hourly/daily/weekly), not continuous streaming replication.
2. Preserves metadata and permissions (important architecture/exam differentiator).
3. Supports bandwidth control.
4. Per-agent throughput can be high (up to 10 Gbps per task context mentioned).

## Snowcone Integration Note

1. When network transfer is constrained, Snowcone can be used with DataSync agent pre-installed.

## Outcome

1. DataSync is the managed scheduled synchronization service for high-volume transfers where metadata/permission preservation and broad endpoint compatibility are required.
