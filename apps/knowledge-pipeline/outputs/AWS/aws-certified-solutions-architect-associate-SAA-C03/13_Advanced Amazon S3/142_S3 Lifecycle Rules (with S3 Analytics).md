# S3 Lifecycle Rules (with S3 Analytics)

## Pointwise No-Loss Summary

1. Lifecycle rules are used to automate object transitions between storage classes and object expiration/deletion actions.
2. A transition-path diagram is referenced to show allowed class movement combinations.
3. Core guidance:
   - move infrequently accessed objects to Standard-IA,
   - move archival data to Glacier tiers / Deep Archive.

## Lifecycle Rule Action Types

1. Transition actions:
   - move objects to another storage class after age thresholds (for example 60 days to Standard-IA, six months to Glacier).
2. Expiration actions:
   - delete/expire objects after retention period,
   - delete old versions when versioning is enabled,
   - delete incomplete multi-part uploads older than threshold (example two weeks).

## Rule Scope Options

1. Rules can apply at entire-bucket level.
2. Rules can target object key prefixes.
3. Rules can target specific object tags (example: department=finance).

## Scenario 1 (Images and Thumbnails)

1. Application stores source profile images and generated thumbnails in S3.
2. Thumbnails are recreatable and only needed for 60 days.
3. Source images need immediate retrieval for 60 days; after that retrieval can tolerate waiting up to around 6 hours.
4. Suggested design:
   - source images in Standard with lifecycle transition to Glacier after 60 days,
   - thumbnails in One Zone-IA with lifecycle expiration after 60 days,
   - prefix-based separation for rule targeting.

## Scenario 2 (Recover Deleted Objects)

1. Requirement:
   - immediate recovery capability for first 30 days,
   - recovery within 48 hours up to 365 days.
2. Suggested design:
   - enable S3 versioning,
   - transition non-current versions to Standard-IA,
   - later transition non-current versions to Glacier Deep Archive for longer archival window.

## S3 Analytics for Lifecycle Tuning

1. S3 Analytics helps estimate optimal transition timing.
2. Provides recommendations for Standard and Standard-IA transitions.
3. Not available for One Zone-IA or Glacier transitions.
4. Produces CSV report with recommendations/statistics.
5. Report updates daily.
6. Initial analytics data may take 24-48 hours to appear.

## Outcome

1. Lecture links lifecycle automation, retention logic, and S3 Analytics recommendations for cost/performance-aware storage management.
