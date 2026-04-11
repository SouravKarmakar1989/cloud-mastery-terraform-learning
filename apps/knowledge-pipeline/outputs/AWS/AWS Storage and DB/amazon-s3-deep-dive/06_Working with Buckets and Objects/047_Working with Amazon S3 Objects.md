# Working with Amazon S3 Objects

## Pointwise No-Loss Summary

1. Lesson focuses on common object operations:
   - changing storage class,
   - deleting objects,
   - moving/copying objects,
   - version-aware behavior impacts.

## Changing Storage Class

1. Storage class is object-level, not bucket-level.
2. Class can be changed manually, by Intelligent-Tiering, or by lifecycle transitions.
3. Manual class-change operation creates updated object copy behavior with new modified date characteristics.

## Deleting Objects

1. Delete unneeded objects to reduce costs.
2. Deletion can be manual (console/CLI/API/SDK) or automated (lifecycle expiration rules).

## Versioned Bucket Delete Behavior

1. In versioned buckets, delete adds a delete marker as latest version rather than immediately erasing prior versions.
2. Older versions remain retrievable by version ID unless permanently removed.

## Move/Copy Behavior

1. Move operation is effectively:
   - copy object to destination,
   - delete source object.
2. Version ID is not preserved as original when object is moved/copied into versioned destination; destination receives new version identity.

## Outcome

1. Learner understands operational and billing/governance implications of core object-management actions.
