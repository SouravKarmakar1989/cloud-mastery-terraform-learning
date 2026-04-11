# Lambda Asynchronous Invocations Hands On

## Pointwise No-Loss Summary

1. Hands-on demonstrates asynchronous invocation through CLI.
2. Key behavior shown: invocation API returns HTTP 202 regardless of function success/failure.
3. Actual execution outcome is observed in CloudWatch Logs (not direct invoke response).
4. DLQ configuration with SQS is demonstrated for failed asynchronous events.

## Baseline Function

1. Demo uses existing Lambda function (demo-lambda).
2. Function prints values and returns event key in normal success path.

## Invoke Asynchronously via CLI

1. Asynchronous invocation is performed from CLI/CloudShell (not console test flow).
2. Invocation response returns status code 202.
3. 202 indicates request accepted for async processing, not execution result.

## Verify Outcome in Logs

1. Open CloudWatch logs from Lambda monitoring tab.
2. Locate latest log stream to confirm actual run status.
3. Success/failure is visible in logs.

## Demonstrate Failure Case

1. Lambda code is modified to fail (raise exception).
2. Console test confirms failure.
3. Async CLI invoke still returns 202 even when function execution fails.
4. Failure is confirmed only via CloudWatch logs.

## Configure Async Retry + DLQ

1. In Lambda asynchronous invocation settings:
   - retry attempts configured (0/1/2 options shown; demo keeps 2 retries).
2. Configure failed-event destination to SQS DLQ.
3. Create standard SQS queue (example name shown as lambda-DLQ/lambda-GLQ in transcript flow).

## IAM Permission Fix Required

1. Saving DLQ config initially fails due to missing SQS send permissions for Lambda role.
2. Open Lambda execution role in IAM.
3. Attach SQS permissions policy (demo uses broad AmazonSQSFullAccess for simplicity).
4. Return to Lambda async settings and save DLQ config successfully.

## Observe Retries and DLQ Delivery

1. Reinvoke failing function asynchronously.
2. Wait for retry cycle to complete.
3. In CloudWatch logs, same request ID appears across initial try and retries, all failing.
4. After retries are exhausted, failed event appears in SQS DLQ.
5. DLQ message includes payload plus attributes (including error context/request ID correlation).

## Overall Takeaway

1. Async invoke response is acceptance-only.
2. Reliability operations require logs, retry settings, idempotency, and DLQ wiring.
