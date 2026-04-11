# Aurora Serverless

## Pointwise No-Loss Summary

1. Aurora Serverless dynamically adjusts compute resources to workload demand.
2. It is designed for variable/elastic traffic patterns where fixed provisioning is inefficient.

## Problem with Fixed Provisioned Sizing

1. Provisioned clusters require pre-sizing of CPU/memory capacity.
2. Overprovisioning wastes cost during low demand.
3. Underprovisioning degrades performance during spikes.

## Aurora Serverless Behavior

1. Scale up automatically during traffic surges.
2. Scale down during low usage to reduce compute cost.
3. User sets min/max bounds and Aurora adjusts within those boundaries.
4. Billing aligns more closely to actual consumed capacity.

## Aurora Serverless v2 Context

1. Compatible with modern Aurora MySQL/Postgres variants in lecture context.
2. Can be introduced within mixed clusters alongside provisioned instances.

## Mixed Cluster Patterns Discussed

1. Provisioned writer + serverless readers (when write demand is steady/high but reads vary).
2. Serverless writer + provisioned readers (when write demand fluctuates heavily).
3. Fully serverless topology for broad elasticity.

## Migration/Testing Flexibility

1. Existing provisioned clusters can add serverless instances.
2. Serverless readers can be used to evaluate behavior before broader role changes.

## Key Takeaway

1. Serverless is not all-or-nothing; Aurora supports hybrid deployment patterns to fit workload profiles.
