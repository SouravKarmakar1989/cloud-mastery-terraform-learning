# S3 Storage Classes Hands On

## Pointwise No-Loss Summary

1. Demo creates bucket for storage class experimentation (example name includes storage-classes demo).
2. Object upload flow is used to inspect storage class options directly in console.

## Storage Class Selection at Upload

1. coffee.jpeg is selected for upload.
2. Under object properties, storage class dropdown shows classes and related characteristics.
3. Classes discussed in console view include:
   - S3 Standard,
   - Intelligent-Tiering,
   - Standard-IA,
   - One Zone-IA,
   - Glacier Instant Retrieval,
   - Glacier Flexible Retrieval,
   - Glacier Deep Archive,
   - Reduced Redundancy (noted as deprecated).
4. Demo uploads object with Standard-IA class.

## Verifying and Editing Storage Class

1. Object list shows class as Standard-IA.
2. Object Properties allows editing storage class after upload.
3. Class is changed to One Zone-IA and saved.
4. Object class display confirms change.
5. Instructor notes it can also be changed to Glacier tiers or Intelligent-Tiering.

## Automating Class Transitions with Lifecycle

1. In bucket Management, lifecycle rule is created (example rule name: DemoRule).
2. Rule applies to all objects in bucket.
3. Transition actions are configured by object age, with sample sequence:
   - move to Standard-IA after 30 days,
   - move to Intelligent-Tiering after 60 days,
   - move to Glacier Flexible Retrieval after 180 days.
4. Console provides review of configured transitions.

## Outcome

1. Hands-on demonstrates all three movement patterns for storage classes:
   - choose class at upload,
   - manually edit class later,
   - automate transitions via lifecycle policy.
