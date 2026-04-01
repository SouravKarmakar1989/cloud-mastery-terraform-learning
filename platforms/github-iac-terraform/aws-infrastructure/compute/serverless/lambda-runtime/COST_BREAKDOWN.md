# Cost Breakdown: serverless/lambda-runtime

## Components
- Lambda request count.
- Lambda duration (GB-seconds based on memory setting).
- Provisioned concurrency (if added later).
- CloudWatch log ingestion/storage.

## Pre-Deploy Cost Checklist
1. Estimate requests per month.
2. Estimate average and p95 duration.
3. Select memory based on profile tests.
4. Estimate logging volume.
