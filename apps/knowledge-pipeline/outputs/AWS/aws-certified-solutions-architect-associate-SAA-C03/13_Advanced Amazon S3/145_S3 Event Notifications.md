# S3 Event Notifications

## Pointwise No-Loss Summary

1. S3 Event Notifications let applications react to bucket events.
2. Example events include:
   - object created,
   - object removed,
   - object restored,
   - replication events.
3. Event filters can be applied (example suffix filter like .jpeg).

## Example Use Case

1. Automatically generate thumbnails when images are uploaded to S3.

## Direct Event Targets

1. SNS topic.
2. SQS queue.
3. Lambda function.
4. Multiple notifications can be created per bucket.
5. Delivery is typically within seconds, but can occasionally take a minute or longer.

## Required Permissions Model

1. S3 must be authorized via destination resource policies:
   - SNS resource policy for SNS target,
   - SQS resource policy for SQS target,
   - Lambda resource policy for Lambda target.
2. Emphasis: uses resource-based permissions on destination, not IAM role on S3 bucket for this integration path.

## EventBridge Integration

1. S3 events can also be routed through Amazon EventBridge.
2. EventBridge enables routing to many additional AWS services (18+ mentioned).
3. Benefits include:
   - more advanced filtering (metadata, object size, name),
   - fan-out to multiple destinations,
   - capabilities like archiving/replay and more reliable delivery.

## Outcome

1. Learner should remember S3 event reaction pattern and destination options: SNS, SQS, Lambda, and EventBridge.
