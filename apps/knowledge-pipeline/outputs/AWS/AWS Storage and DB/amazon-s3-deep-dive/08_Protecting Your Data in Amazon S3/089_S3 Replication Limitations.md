# S3 Replication Limitations

## Pointwise No-Loss Summary

1. Replication has important behavior constraints that affect architecture expectations.
2. Understanding these avoids incorrect assumptions in chained or retroactive designs.

## Limitations Highlighted

1. Objects replicated by one replication rule are not re-replicated again by another rule in chained path scenarios.
2. Changing destination on existing replication setup does not retroactively re-replicate previously replicated objects to new target automatically.
3. Objects in certain cold/archive classes (for example deep archive/flexible retrieval contexts discussed) are not handled by standard replication path in same way as active-tier objects.

## Practical Consequence

1. Legacy/backfill copy cases often require separate mechanisms (for example batch operations) rather than relying on ongoing replication rule alone.

## Outcome

1. Learner can design replication with correct expectations for chain behavior, destination changes, and archival-class constraints.
