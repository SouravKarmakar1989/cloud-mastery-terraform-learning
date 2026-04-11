# Bi-Directional Replication

## Pointwise No-Loss Summary

1. Bi-directional replication uses paired rules so each bucket replicates to the other.
2. Goal is keeping object data and metadata changes synchronized in both directions.

## Conceptual Behavior

1. Writes in region/bucket A replicate to region/bucket B.
2. Writes in region/bucket B replicate to region/bucket A.

## Use Cases Mentioned

1. Shared datasets across regions.
2. Region-failover readiness with synchronized copies.
3. High-availability application patterns needing consistent multi-region object state.

## Outcome

1. Learner can apply two-way replication model where active write/read patterns exist in more than one region/account path.
