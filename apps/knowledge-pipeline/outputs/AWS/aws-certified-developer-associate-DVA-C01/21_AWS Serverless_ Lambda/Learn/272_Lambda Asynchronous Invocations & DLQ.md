# Lambda Asynchronous Invocations and DLQ

## Pointwise No-Loss Summary

1. Lecture introduces Lambda asynchronous invocation model.
2. Asynchronous invocations are common when AWS services invoke Lambda behind the scenes.
3. Example sources mentioned include S3, SNS, and CloudWatch Events/EventBridge.

## Asynchronous Processing Flow

1. Source service emits event (example: S3 new-object event).
2. Event is placed into Lambda internal event queue.
3. Lambda service processes events from that queue.
4. If processing fails, Lambda automatically retries.

## Retry Behavior Mentioned

1. Total of three attempts described:
   - first attempt immediately,
   - second attempt after about 1 minute,
   - third attempt after an additional delay (described as 2 minutes after second).
2. Retries can cause same event to be processed multiple times.

## Idempotency Requirement

1. Because retries can occur, Lambda code should be idempotent.
2. Idempotent means repeated processing yields same final result.
3. Non-idempotent code can cause duplicate side effects.
4. Duplicate retries may also appear as duplicate log entries in CloudWatch Logs.

## DLQ (Dead-Letter Queue) Use

1. After retry exhaustion, failed events can be routed to DLQ.
2. Supported DLQ targets mentioned:
   - Amazon SQS,
   - Amazon SNS.
3. DLQ allows later inspection/reprocessing of failed events.

## Why Asynchronous Invocation

1. Some service integrations are inherently asynchronous (no choice).
2. Async model can improve throughput when immediate response is not required.
3. Enables launching many processing tasks in parallel without waiting per task response.

## Services Mentioned as Asynchronous with Lambda

1. Amazon S3 event notifications.
2. Amazon SNS.
3. CloudWatch Events / EventBridge.
4. Additional mentions (not focus hands-on):
   - CodeCommit,
   - CodePipeline,
   - CloudWatch Logs,
   - SES,
   - CloudFormation,
   - AWS Config,
   - IoT,
   - IoT Events.

## Certification Focus Note

1. Key integrations emphasized for exam context:
   - S3,
   - SNS,
   - CloudWatch Events/EventBridge.
