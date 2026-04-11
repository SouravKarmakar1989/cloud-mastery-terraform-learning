# S3 Lifecycle Rules - Hands On

## Pointwise No-Loss Summary

1. Demo creates a lifecycle rule from bucket Management tab.
2. Rule name example is demo rule.
3. Rule is configured to apply to all objects in bucket.

## Lifecycle Rule Action Categories Demonstrated

1. Move current versions between storage classes.
2. Move non-current versions between storage classes.
3. Expire current versions.
4. Permanently delete non-current versions.
5. Delete expired object delete markers or incomplete multi-part uploads.

## Example Transition Timeline (Current Versions)

1. Transition to Standard-IA after 30 days.
2. Transition to Intelligent-Tiering after 60 days.
3. Transition to Glacier Instant Retrieval after 90 days.
4. Transition to Glacier Flexible Retrieval after 180 days.
5. Transition to Deep Archive after 365 days.

## Example Transition Timeline (Non-Current Versions)

1. Non-current versions are moved to Glacier Flexible Retrieval after 90 days.
2. Additional transitions can be added.

## Example Expiration/Deletion Settings

1. Current versions set to expire after 700 days.
2. Non-current versions set to permanent deletion after 700 days.

## Console Validation Aid

1. Console provides timeline-style review of configured transitions/expiration for current and non-current object versions.

## Outcome

1. Hands-on shows full lifecycle rule authoring, including multi-step class transitions and retention/deletion controls for versioned buckets.
