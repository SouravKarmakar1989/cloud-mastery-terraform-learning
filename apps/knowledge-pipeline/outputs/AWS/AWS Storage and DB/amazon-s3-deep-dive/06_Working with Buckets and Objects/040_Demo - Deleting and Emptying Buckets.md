# Demo - Deleting and Emptying Buckets

## Pointwise No-Loss Summary

1. Demo distinguishes emptying a bucket from deleting a bucket.
2. AWS requires bucket to be empty before deletion.

## Steps Demonstrated

1. Create a temporary bucket.
2. Upload sample objects into that bucket.
3. Attempt to delete bucket directly.
4. Console returns message that non-empty bucket cannot be deleted.
5. Open bucket and use Empty operation.
6. Confirm permanent object deletion prompt.
7. After bucket is empty, run Delete bucket and confirm bucket-name prompt.

## Behavioral Notes

1. Empty bucket:
   - removes objects,
   - keeps bucket resource/name.
2. Delete bucket:
   - removes bucket resource,
   - releases name ownership.

## Practical Guidance Highlighted

1. Keeping an empty bucket can preserve bucket name used by apps/pipelines.
2. If name continuity matters, empty rather than delete.

## Outcome

1. Learner can safely perform cleanup while understanding naming and dependency implications.
