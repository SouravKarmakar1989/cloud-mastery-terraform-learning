# Demo: Add Serverless to a Provisioned Database Cluster

## Pointwise No-Loss Summary

1. Demo adds Aurora Serverless v2 reader to an existing provisioned Aurora cluster.
2. Then demonstrates making serverless node become writer via failover-priority strategy.

## Add Serverless Reader

1. Open Aurora cluster and choose Actions -> Add reader.
2. Provide reader identifier.
3. Select instance type as Aurora Serverless v2.
4. Set min/max Aurora Capacity Units (ACUs) or keep defaults.
5. Configure AZ placement, auth, and failover priority.
6. Create/add reader and wait for provisioning.

## Post-Add Topology

1. Cluster now has mixed compute model:
   - provisioned instances,
   - serverless instance.
2. Endpoint model remains cluster-level:
   - writer endpoint unchanged,
   - reader endpoint load-balances across available readers.

## Path to Serverless Writer

1. Option A: modify current writer instance type directly to serverless.
2. Option B (demo focus): assign failover priorities and trigger failover so desired serverless reader takes writer role.

## Failover Demonstration

1. Set serverless reader with higher failover priority than other readers.
2. Trigger cluster failover.
3. After failover completes, serverless instance becomes writer.
4. Former provisioned writer becomes reader.

## Practical Takeaway

1. Aurora supports incremental serverless adoption in existing provisioned clusters, including eventual serverless writer promotion.
