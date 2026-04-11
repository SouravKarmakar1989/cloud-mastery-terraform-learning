# Introduction to Amazon S3 Objects

## Pointwise No-Loss Summary

1. S3 stores files as objects inside buckets.
2. Object is the fundamental storage unit in S3.

## Object Limits and Scale

1. Single object size can be up to 5 TB.
2. Buckets have no practical object-count limit.
3. Buckets have no fixed maximum aggregate storage size.

## Consistency Behavior

1. New object writes have immediate read-after-write consistency.
2. S3 now provides strong consistency for updates as well.
3. Updated objects are immediately readable as latest version after successful write.
4. Historical eventual-consistency caveats for updates are described as legacy behavior.

## Key Takeaway

1. S3 objects provide massive-scale storage with strong read consistency for both new writes and updates.
