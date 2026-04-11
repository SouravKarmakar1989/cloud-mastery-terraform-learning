# Demo: Read Replicas

## Pointwise No-Loss Summary

1. Demo creates read replica from existing RDS instance.
2. Then promotes replica to standalone DB to show lifecycle transition.

## Create Read Replica

1. Select source RDS instance.
2. Choose Actions -> Create read replica.
3. Configure replica identifier.
4. Select replica instance class.
5. Choose region (same region in demo; cross-region supported).
6. Storage and autoscaling settings inherit source-style defaults unless changed.
7. Optionally enable Multi-AZ on replica.
8. Select subnet group, security group, and auth settings.
9. Create read replica.

## Provisioning Outcome

1. Snapshot-based initialization occurs.
2. Replica appears after build time and begins asynchronous replication.
3. Replica has distinct endpoint/DNS from source instance.

## Promote Replica

1. Select read replica.
2. Choose Actions -> Promote.
3. Configure backup retention and related settings for new standalone instance.
4. Confirm promotion.
5. Replica enters modifying/reboot/backing-up phases.

## Post-Promotion State

1. Former replica is no longer linked to source as read replica.
2. It becomes independent RDS instance with separate management lifecycle.
3. Endpoint remains distinct from source; clients must be pointed to correct endpoint based on intended role.

## Practical Takeaway

1. Read replicas support read scaling and can be converted into standalone instances for migration/DR/topology changes.
