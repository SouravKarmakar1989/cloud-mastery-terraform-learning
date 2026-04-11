# Lambda Event Source Mapping Hands On (SQS)

## Pointwise No-Loss Summary

1. Hands-on builds Event Source Mapping between SQS and Lambda.
2. Demonstrates trigger setup, IAM permission correction, event payload inspection, and cleanup.
3. Also briefly previews Kinesis Event Source Mapping options.

## Create Resources

1. Create Lambda function named lambda-SQS.
2. Runtime selected: Python 3.8.
3. Create SQS standard queue named lambda-demo-SQS.

## Add SQS Trigger (Event Source Mapping)

1. In Lambda, choose Add trigger.
2. Select SQS as source.
3. Select queue lambda-demo-SQS.
4. Configure batch size and optional batch window.
5. Enable trigger.
6. Initial add fails due to missing SQS ReceiveMessage permissions on Lambda execution role.

## IAM Permission Fix

1. Open Lambda execution role in IAM.
2. Attach policy for Lambda SQS queue execution (AWS managed role/policy shown in demo).
3. Return to Lambda trigger setup and add trigger again.
4. Trigger now succeeds and SQS is linked to Lambda.

## Lambda Code for Verification

1. Update function to print incoming event.
2. Return success-style response.
3. Deploy changes.

## End-to-End Test

1. In SQS queue, send message body "hello world".
2. Add sample message attribute foo=bar.
3. Lambda polls queue and processes message.
4. CloudWatch log stream shows SQS event data including:
   - message body,
   - message attributes,
   - sent timestamp metadata,
   - event source as SQS.
5. Queue message count returns to zero after successful processing.

## Operational Cleanup Step

1. Disable the Event Source Mapping trigger after demo.
2. Reason given: avoid continuous polling-related cost/quota impact over time.

## Kinesis Trigger Options Preview

1. Kinesis can also be used as Lambda Event Source Mapping.
2. Options shown include:
   - stream selection,
   - enhanced fan-out consumer choice,
   - batch size,
   - batch window,
   - start position (latest/earliest/timestamp),
   - failure destination,
   - retry controls,
   - max record age,
   - split batch on error,
   - concurrent batches per shard,
   - tumbling window,
   - batch item failure reporting.
3. Lecture note: memorize core concept for exam; use docs for deeper option specifics.

## Overall Takeaway

1. Event Source Mapping requires correct Lambda execution-role permissions to poll source.
2. SQS-to-Lambda integration is straightforward once IAM is correct.
