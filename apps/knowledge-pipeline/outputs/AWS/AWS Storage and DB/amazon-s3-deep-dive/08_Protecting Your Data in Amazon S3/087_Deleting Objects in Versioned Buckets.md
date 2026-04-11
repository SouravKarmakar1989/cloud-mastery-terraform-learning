# Deleting Objects in Versioned Buckets

## Pointwise No-Loss Summary

1. Deleting object key in versioned bucket typically creates delete marker as current version.
2. Historical object versions remain stored unless permanently removed.

## Delete-Marker Behavior

1. After simple delete, current version becomes delete marker.
2. Standard get-by-key can return not-found behavior because current version is marker.
3. Data can be effectively restored by removing delete marker, revealing latest prior real version.

## Additional Notes

1. Permanent removal requires version-specific deletion actions.
2. Versioning can be suspended for future behavior but existing version history persists.

## Outcome

1. Learner can reason about apparent deletes vs actual retained historical data in versioned S3 buckets.
