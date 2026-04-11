# Demo: Add a Region to an Aurora Cluster (Global Database)

## Pointwise No-Loss Summary

1. Demo converts/extends an Aurora cluster into global topology by adding secondary region.
2. Process is done from existing primary cluster actions.

## Add Region Workflow

1. Select Aurora cluster in primary region.
2. Choose Actions -> Add AWS Region.
3. Select target secondary region.
4. Configure cluster settings for secondary region (similar to normal cluster creation flow).

## Prerequisites and Region-Local Setup

1. Secondary region must have required networking primitives:
   - VPC,
   - DB subnet group,
   - security config.
2. Many other cluster options mirror standard Aurora cluster setup.

## Capacity Configuration

1. Secondary region cluster capacity parameters (including serverless ACU ranges when applicable) can be configured during add-region workflow.

## Result

1. New Aurora cluster is created in additional region.
2. Changes from primary cluster are synchronized to secondary region as part of global database behavior.

## Key Takeaway

1. Global Aurora setup is operationally an extension of normal cluster provisioning plus cross-region replication topology enablement.
