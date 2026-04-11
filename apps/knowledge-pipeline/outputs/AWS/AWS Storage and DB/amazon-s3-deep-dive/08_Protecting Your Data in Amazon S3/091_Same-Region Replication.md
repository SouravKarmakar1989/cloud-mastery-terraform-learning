# Same-Region Replication

## Pointwise No-Loss Summary

1. Same-Region Replication (SRR) copies data between buckets within the same AWS region.
2. Commonly used for account-separation and workflow segregation without regional movement.

## Use Cases Mentioned

1. Log consolidation patterns.
2. Replication between production/test account boundaries in same region.
3. Data-sovereignty scenarios where data must stay in-region but still needs additional controlled copies.

## Security/Operations Benefit

1. Cross-account SRR can improve blast-radius control by storing replicated copies in separate account context.

## Outcome

1. Learner understands SRR as in-region replication strategy for governance, operations, and sovereignty needs.
