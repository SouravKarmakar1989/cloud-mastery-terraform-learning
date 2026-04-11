# S3 Access Logs

## Pointwise No-Loss Summary

1. S3 server access logging records requests made to a bucket.
2. Logged requests include authorized and denied requests from any account.
3. Logs are delivered as files into a separate target S3 bucket.
4. Log data can be analyzed with tools such as Amazon Athena.
5. Target logging bucket must be in the same AWS region as source bucket.

## Critical Warning

1. Never set logging target bucket equal to source monitored bucket.
2. Doing so creates recursive logging loop and rapid storage growth/cost explosion.

## Outcome

1. Feature is framed as audit trail for bucket access activity, with strict same-region and separate-bucket design requirement.
