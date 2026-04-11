# Student Challenge Solution - Amazon S3 Storage Classes

## Pointwise No-Loss Summary

1. Challenge objective: reduce storage cost while keeping needed files.
2. Two required tasks are completed in solution:
   - change existing object class,
   - upload new files using specified class.

## Task 1: Change Existing Object Storage Class

1. Target object: course-cover.jpg.
2. Navigate to object (shown under homepage prefix).
3. Open object details and use Edit to change storage class.
4. Set class to S3 Standard-IA.
5. Save changes and verify class now shows Standard-IA.
6. Alternate console path also shown:
   - object Actions -> Edit storage class.

## Task 2: Upload New Files with Intelligent-Tiering

1. Target upload location: blog prefix.
2. Files uploaded:
   - working.jpg,
   - laptop.jpg,
   - site.jpg.
3. During upload, in Properties section choose Intelligent-Tiering storage class.
4. Complete upload and verify objects are in Intelligent-Tiering.

## Validation Notes

1. Object detail view shows selected storage class after update/upload.
2. Intelligent-Tiering object also displays current access tier and can transition over time based on access.

## Outcome

1. Challenge confirms learner can both reclass existing objects and ingest new objects directly into required storage classes.
