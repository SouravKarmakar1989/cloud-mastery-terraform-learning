# Using Multipart Uploads for Files

## Pointwise No-Loss Summary

1. Multipart upload is for large-object transfer efficiency and resiliency.
2. A single object (up to 5 TB) is split into multiple parts and uploaded independently.

## Core Multipart Characteristics

1. Parts can upload:
   - independently,
   - in any order,
   - in parallel.
2. S3 assembles parts into final single object after completion.

## Advantages Mentioned

1. Improved throughput via parallel part uploads.
2. Better failure recovery:
   - only failed parts need retry, not full file restart.
3. Pause/resume behavior across upload timeline.
4. Can begin upload before final full object size is fully known/completed.

## Outcome

1. Learner understands why multipart is preferred for very large objects and unstable/network-sensitive transfer scenarios.
