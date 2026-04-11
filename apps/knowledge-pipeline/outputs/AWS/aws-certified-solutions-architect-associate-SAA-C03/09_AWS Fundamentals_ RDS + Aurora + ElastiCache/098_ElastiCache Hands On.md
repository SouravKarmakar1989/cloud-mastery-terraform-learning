# ElastiCache Hands On

## Pointwise No-Loss Summary

1. Demo walks through Redis OSS node-based cluster creation and key configuration options.

## Engine/Deployment Choices Shown

1. Engines/options visible include Valkey, Redis OSS, and Memcached.
2. Deployment options include serverless and node-based cluster.
3. Demo uses node-based Redis with full custom configuration.

## Cluster Configuration Highlights

1. Cluster mode choices:
   - disabled (single shard with primary and optional replicas),
   - enabled (sharded model).
2. Multi-AZ option shown.
3. Auto-failover option shown.
4. Node type selected from small instance class.
5. Replica count configurable.

## Network/Security/Encryption Settings

1. Subnet group creation shown.
2. VPC and security group settings configured.
3. Encryption-at-rest option shown.
4. Encryption-in-transit option shown.
5. Access-control options shown when transit encryption is enabled.

## Operations Settings

1. Backup settings.
2. Maintenance window.
3. Slow/engine log export options.
4. Tagging options.

## Post-Creation Notes

1. Primary endpoint (and reader endpoint if applicable) used by application clients.
2. Console offers nodes, metrics, logs, and security views similar to RDS management experience.

## Cleanup

1. Cluster deletion flow demonstrated.

## Outcome

1. Hands-on provides full survey of Redis cluster provisioning controls in ElastiCache and endpoint-oriented usage model.
