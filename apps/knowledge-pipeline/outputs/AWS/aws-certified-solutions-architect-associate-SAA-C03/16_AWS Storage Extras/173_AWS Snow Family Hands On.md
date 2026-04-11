# AWS Snow Family Hands On

## Pointwise No-Loss Summary

1. Demo walks through Snow job creation workflow in console.

## Job Setup Flow

1. Enter job name.
2. Choose job type:
   - import into AWS (from customer to AWS),
   - export from AWS (from S3 to device),
   - local compute/storage use case.
3. Select Snow device type (storage-optimized vs compute-optimized options shown).

## Configuration Options Reviewed

1. Pricing mode visibility (on-demand/day and transfer context).
2. Target S3 bucket mapping for imports/exports.
3. Service role selection to grant required S3 access.
4. Shipping address and shipping speed options.
5. Notification settings for job status updates.

## Operational Model Reminder

1. Device is delivered physically.
2. Data is loaded by customer.
3. Device is shipped back using provided logistics labels.

## Outcome

1. Hands-on demonstrates end-to-end ordering/configuration flow for Snow Family jobs.
