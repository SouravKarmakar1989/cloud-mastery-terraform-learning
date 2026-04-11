# Demo: Create an Aurora Database Cluster

## Pointwise No-Loss Summary

1. Demo creates provisioned Aurora MySQL-compatible cluster.
2. Cluster is configured with one writer and one reader for HA/read distribution.

## Create Cluster

1. Open RDS -> Create database.
2. Choose Standard create.
3. Select Aurora MySQL-compatible engine.
4. Filter/select version supporting desired features (global database/serverless-v2 compatibility filters discussed).
5. Choose environment preset (production selected in demo to include HA posture).
6. Set cluster identifier and master credentials.

## Capacity and Storage Choices

1. Choose Aurora storage class (Aurora Standard in demo).
2. Select provisioned instance class (demo uses burstable generation class).
3. Configure high availability by adding reader in second AZ.

## Connectivity and Security

1. Select target VPC and DB subnet group.
2. Public access disabled.
3. Attach security group(s).
4. RDS Proxy option reviewed but not enabled in demo.
5. Keep default DB port/auth mode in demo path.

## Monitoring and Encryption

1. Performance Insights left enabled in demo.
2. Encryption enabled with default KMS key.

## Additional Configuration

1. Initial database name set.
2. Parameter/option groups left at defaults.
3. Failover priority concept shown (0-15 range across potential nodes).
4. Automated backup retention configured.
5. Copy tags to snapshots option reviewed.
6. Backtrack option discussed (not enabled in demo due cost/need).
7. Maintenance/deletion-protection options reviewed.

## Resulting Cluster State

1. Cluster created with:
   - one writer instance,
   - one reader instance.
2. Connectivity section shows:
   - writer endpoint,
   - reader endpoint.
3. Reader endpoint abstracts read routing as cluster scales readers.
4. Actions available include:
   - add reader,
   - cross-region replica options,
   - snapshots,
   - clone,
   - point-in-time restore workflows.

## Key Takeaway

1. Aurora cluster setup combines engine/storage/instance/network decisions, with endpoint abstraction simplifying client read/write routing.
