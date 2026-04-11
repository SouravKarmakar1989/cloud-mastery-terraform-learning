# S3 Event Notifications - Hands On

## Pointwise No-Loss Summary

1. Demo creates a new S3 bucket for event notification testing.
2. In bucket Properties -> Event notifications, two paths are shown:
   - create direct event notification,
   - enable EventBridge integration for all bucket events.
3. EventBridge toggle is shown conceptually, but direct notification path is implemented in detail.

## Creating Notification to SQS

1. Notification name example: DemoEventNotification.
2. Prefix/suffix filters are available but left unset.
3. Event type selected: all object create events.
4. Destination selected: SQS queue.

## SQS Queue Setup and Permission Issue

1. SQS queue is created (example: DemoS3Notification).
2. First attempt to save S3 notification fails with destination validation error.
3. Cause: SQS access policy does not yet allow S3 to send messages.

## Fixing Destination Permissions

1. Queue access policy is edited.
2. Policy generator used to create SQS queue policy allowing SendMessage to queue ARN.
3. Policy shown as permissive principal ("*") for demo simplicity.
4. After policy update, S3 event notification saves successfully.

## Validation Flow

1. SQS receive/poll shows initial S3 test event message (connectivity validation).
2. Test message is deleted.
3. Upload coffee.jpeg into bucket.
4. Poll SQS again and receive event record.
5. Event payload confirms:
   - eventName ObjectCreated:Put,
   - object key coffee.jpeg.

## Outcome

1. Hands-on confirms end-to-end event delivery from S3 object creation to SQS queue after correct destination resource policy is configured.
