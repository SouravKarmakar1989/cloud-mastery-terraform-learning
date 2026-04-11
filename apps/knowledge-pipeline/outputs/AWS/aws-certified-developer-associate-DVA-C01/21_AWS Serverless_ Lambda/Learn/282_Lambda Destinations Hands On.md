# Lambda Destinations Hands On

## Pointwise No-Loss Summary

1. Hands-on configures Lambda destinations for both success and failure outcomes.
2. SQS queues are used as destinations.
3. Demo validates behavior for both successful and failing asynchronous invocations.

## Setup Destination Queues

1. Create SQS queue for success path (example name: S3-success).
2. Create SQS queue for failure path (example name: S3-failure).

## Configure Destinations on Lambda

1. Use existing Lambda function triggered asynchronously by S3.
2. In Lambda configuration, add destination for asynchronous invocations:
   - on failure -> SQS S3-failure.
3. Add second destination:
   - on success -> SQS S3-success.

## Permission Handling

1. Console warns execution role lacks permission to send to destination.
2. Saving destination auto-adds required IAM permissions.
3. Verification in IAM shows destination-related policy added to Lambda role.

## Validate Success Flow

1. Upload file to S3 bucket.
2. Lambda executes successfully.
3. Success destination queue receives message.
4. Queue message body includes rich envelope data, including:
   - request context,
   - source event records,
   - response payload from Lambda.

## Validate Failure Flow

1. Modify Lambda code to raise exception (example message: boom!).
2. Upload another file to trigger asynchronous invocation.
3. Failure message is not immediate due to async retry behavior.
4. After retries are exhausted, failure destination queue receives message.

## Failure Message Details Observed

1. Condition indicates retries exhausted.
2. Approximate invoke count shows retry attempts.
3. Message includes original source record for debugging.
4. Response payload includes:
   - error message,
   - exception type,
   - stack trace.

## Practical Takeaway

1. Destinations provide actionable diagnostics and routing for both outcomes.
2. This is more informative than simple pass/fail signaling.
