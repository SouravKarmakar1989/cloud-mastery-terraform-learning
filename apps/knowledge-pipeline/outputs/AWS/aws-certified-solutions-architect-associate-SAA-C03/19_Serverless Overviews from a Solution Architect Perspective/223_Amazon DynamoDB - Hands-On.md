# Amazon DynamoDB - Hands On

## Pointwise No-Loss Summary

1. Demo creates DynamoDB table directly (no separate DB server creation step).
2. Example table uses partition key userID and no sort key.

## Capacity Configuration Walkthrough

1. Two capacity modes shown:
   - on-demand (pay per actual requests, good for unpredictable workloads),
   - provisioned (allocate read/write capacity ahead of time).
2. Provisioned mode options include:
   - fixed RCU/WCU,
   - optional autoscaling with min/max and target utilization.
3. Cost estimate display reflects configured capacity.

## Table Creation and Data Insert

1. Encryption at rest enabled in setup flow.
2. Items inserted manually via console.
3. Example shows different items can have different attributes.
4. Demonstrates flexible-schema/noSQL behavior compared with rigid relational schemas.

## Scope Note

1. Lecture intentionally limits to foundational creation, capacity settings, and item insertion while deferring deeper features.

## Outcome

1. Hands-on reinforces core operational decisions: key design and capacity mode choice, plus schema flexibility in practical item insertion.
