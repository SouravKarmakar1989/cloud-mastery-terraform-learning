# Demo - Creating and Naming Amazon S3 Buckets

## Pointwise No-Loss Summary

1. Demo creates buckets using both AWS Console and AWS CLI.
2. It also demonstrates global uniqueness enforcement when duplicate names are attempted.

## Console Creation Flow Shown

1. Open S3 bucket list.
2. Click Create bucket.
3. Enter bucket name following naming rules.
4. Select region (demo keeps us-east-1).
5. Leave defaults for now.
6. Create bucket.

## Uniqueness Validation Demonstration

1. Attempting to create a bucket name that already exists (even in another account) fails.
2. Console returns duplicate-name error indicating bucket name already exists.

## CLI Creation Flow Shown

1. Use AWS CLI with configured credentials.
2. Example command pattern uses s3api create-bucket with:
   - --bucket,
   - --region.
3. Successful response includes location confirmation.
4. Refreshing console confirms bucket created via CLI appears in bucket list.

## Outcome

1. Learner sees practical bucket creation in both interfaces and understands uniqueness validation behavior in real time.
