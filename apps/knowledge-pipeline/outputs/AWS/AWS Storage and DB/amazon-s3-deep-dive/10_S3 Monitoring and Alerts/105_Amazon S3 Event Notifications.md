# Amazon S3 Event Notifications

## Pointwise No-Loss Summary

1. S3 Event Notifications trigger downstream workflows when configured bucket events occur.
2. Supported destinations include SNS, SQS, Lambda, and EventBridge-based patterns.

## Typical Trigger Examples Mentioned

1. Object created events.
2. Object removed events.
3. Tagging and ACL change-related events.
4. Lifecycle and replication-related event patterns.

## Workflow Value

1. Enables event-driven processing pipelines (for example transformations, alerts, queue-based processing).
2. Supports near-real-time automation after object state changes.

## Operational Notes

1. Delivery is at-least-once style and typically fast.
2. Destination integrations require correct permissions so S3 can publish/invoke.
3. EventBridge integration is configured in its own path alongside bucket notification features.

## Outcome

1. Learner understands S3 notifications as native event trigger mechanism for automation and alerting workflows.
