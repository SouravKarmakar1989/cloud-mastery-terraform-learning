# Lambda and S3 Event Notifications - Hands On

## Pointwise No-Loss Summary

1. Hands-on configures S3 object-created notification to invoke Lambda.
2. Integration is built in same region for bucket and Lambda.
3. Lambda prints full event payload so S3 event structure can be inspected.

## Create Lambda Function

1. Create function named Lambda S3 (Lambda-S3 style naming in lecture).
2. Runtime selected: Python 3.8.

## Create S3 Bucket

1. Create S3 bucket (demo naming shown in lecture).
2. Ensure bucket region matches Lambda region (example used: Ireland).

## Configure S3 Event Notification

1. Open bucket properties.
2. Create event notification (example name: invoke Lambda).
3. Event type selected: all object created events.
4. Destination type selected: Lambda.
5. Destination function selected: Lambda S3.
6. Save notification.

## Verify Trigger in Lambda

1. Refresh Lambda page.
2. S3 appears as function trigger.

## Modify Lambda for Event Inspection

1. Update handler to print incoming event object.
2. Deploy updated function.

## Resource-Based Policy Verification

1. In Lambda permissions, inspect resource-based policy statements.
2. Policy allows the configured S3 bucket to invoke this Lambda function.
3. Full JSON policy can be viewed from policy document view.

## End-to-End Test

1. Upload sample file to bucket (example: coffee.jpeg).
2. Upload triggers S3 event.
3. Open Lambda monitor and CloudWatch logs.
4. Latest log stream confirms S3-triggered invocation.

## Event Fields Observed in Logs

1. eventSource indicates aws:s3.
2. Region and actor/request metadata are present.
3. Bucket name appears in event.
4. Object section includes key, size, and ETag.

## Practical Processing Insight

1. Event provides enough metadata for Lambda to call S3 GetObject.
2. Lambda can fetch uploaded object and perform downstream processing.

## Overall Takeaway

1. Demonstrates another asynchronous Lambda invocation pattern.
2. Reinforces trigger setup and resource-based invocation policy mechanics.
