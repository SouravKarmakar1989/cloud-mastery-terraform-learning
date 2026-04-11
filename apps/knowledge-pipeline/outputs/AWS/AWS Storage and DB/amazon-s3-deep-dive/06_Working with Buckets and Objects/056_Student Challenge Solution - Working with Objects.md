# Student Challenge Solution - Working with Objects

## Pointwise No-Loss Summary

1. Solution addresses three tasks:
   - download required object,
   - delete outdated object,
   - apply required bucket tag for accounting allocation.

## Task 1: Download world-map.jpg

1. Navigate to object location in bucket (homepage prefix in demo context).
2. Download object using console Download action.
3. Alternate retrieval paths are discussed (object URL if public, S3 URI/CLI methods for authenticated tooling).

## Task 2: Delete transportation-stats.csv

1. Navigate to data prefix containing target file.
2. Select object and run Delete action.
3. Confirm deletion prompt.
4. Object no longer appears in listing after delete.

## Task 3: Add Bucket Tag for Cost Allocation

1. Open bucket -> Properties -> Tags.
2. Add key:
   - costcenter.
3. Add value:
   - 0884 (marketing department identifier provided in challenge).
4. Save changes and verify bucket tag present.

## Clarification Included

1. Bucket tags apply to bucket resource.
2. Object tags are configured separately per object when needed.

## Outcome

1. Challenge confirms ability to retrieve objects, remove stale data, and apply cost-accounting tags correctly.
