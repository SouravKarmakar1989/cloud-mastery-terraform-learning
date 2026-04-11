# Lambda and S3 Event Notifications

## Pointwise No-Loss Summary

1. Lecture explains S3 event notifications integration with Lambda.
2. S3 can emit notifications for object lifecycle events.
3. Lambda invocation from S3 event notifications is asynchronous.

## S3 Event Notification Triggers Mentioned

1. Object created.
2. Object removed.
3. Object restored.
4. Replication-related events.
5. Notifications can be filtered by prefix and suffix.

## Classic Use Case

1. Generate image thumbnails when images are uploaded to S3.

## Notification Routing Options Mentioned

1. S3 to SNS, then fan-out to multiple subscribers.
2. S3 to SQS, then Lambda reads from queue.
3. S3 directly to Lambda via event notification.

## Error Handling Note

1. Since invocation is asynchronous, DLQ patterns can be applied for failures.
2. Example DLQ target mentioned: SQS.

## Delivery Timing and Reliability Notes

1. Event notifications usually arrive within seconds.
2. Delivery can occasionally take a minute or longer.
3. Reliability caveat noted for same-object simultaneous writes.
4. Recommendation stated: enable S3 versioning to avoid missing notification scenarios when competing writes occur.

## Typical Processing Pattern

1. New file event occurs in S3 bucket.
2. Lambda is triggered.
3. Lambda processes object data.
4. Lambda writes processed output to downstream store such as:
   - DynamoDB,
   - RDS.

## Transition

1. Next lecture performs hands-on implementation.
