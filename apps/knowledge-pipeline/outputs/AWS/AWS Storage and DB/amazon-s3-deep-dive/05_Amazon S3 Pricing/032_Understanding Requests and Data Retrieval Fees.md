# Understanding Requests and Data Retrieval Fees

## Pointwise No-Loss Summary

1. S3 cost is not only storage-per-GB; request and retrieval operations also contribute.
2. Lesson covers request pricing patterns and lifecycle/retrieval charge behavior.

## PUT/COPY/POST/LIST Request Cost Example

1. Example request price presented:
   - $0.005 per 1,000 requests (S3 Standard baseline context).
2. Example workload:
   - 5,000 files uploaded = 5,000 PUT-type requests.
3. Calculation shown:
   - (5,000 / 1,000) x $0.005 = $0.025.
4. This is additional to storage charges.

## GET Request Cost Example

1. Example request price presented:
   - $0.0004 per 1,000 GET requests.
2. Example workload:
   - 1,000,000 GET requests per month.
3. Calculation shown:
   - (1,000,000 / 1,000) x $0.0004 = $0.40.

## Lifecycle Transition Request Charges

1. Lifecycle transitions between classes incur transition-request fees.
2. Example fee presented:
   - $0.01 per 1,000 lifecycle transition requests.
3. Each object transitioned counts as a request in that billing model.

## Retrieval Charges by Storage Class

1. Retrieval-fee classes called out:
   - Standard-IA,
   - One Zone-IA,
   - Glacier family (Instant, Flexible, Deep Archive).
2. Faster retrieval options cost more than slower options.
3. Flexible Retrieval and Deep Archive have multiple retrieval-speed options with different pricing.

## Additional Restore Billing Behavior

1. Restoring archived objects creates accessible restored copy behavior.
2. Billing can include both archived object and restored copy period.
3. Operational note: delete temporary restored copies when no longer needed to avoid extra ongoing charges.

## Outcome

1. Learner understands non-storage S3 billing dimensions: request volume, lifecycle transitions, and retrieval/restore economics.
