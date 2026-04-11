# Lambda and CloudWatch Events / EventBridge Hands On

## Pointwise No-Loss Summary

1. Hands-on configures EventBridge rule to invoke Lambda on a schedule.
2. Rule is set to run every minute.
3. Integration demonstrates automatic trigger wiring and Lambda resource-based permission insertion.

## Create Lambda Function

1. Create function named lambda-demo-eventbridge.
2. Runtime selected: Python 3.9.

## Create EventBridge Rule

1. Open EventBridge Rules and create new rule.
2. Rule name used: InvokeLambdaEveryMinute.
3. Event bus selected: default.
4. Two rule styles are discussed:
   - event pattern (for matching AWS events such as service activity),
   - schedule.
5. Demo uses schedule-based rule.
6. UI may suggest EventBridge Scheduler; demo chooses continue with EventBridge Rule creation flow.
7. Schedule pattern chosen: rate expression every 1 minute.

## Select Lambda Target

1. Target type: Lambda function.
2. Target function: lambda-demo-eventbridge.
3. Optional settings noted (version/alias, DLQ, max attempts).
4. EventBridge indicates it will auto-configure required target permissions.
5. Rule is created.

## Verify Trigger in Lambda

1. Initially no trigger shown until Lambda page refresh.
2. After refresh, EventBridge trigger appears on function.
3. Trigger links to created rate(1 minute) rule.

## Verify Resource-Based Policy

1. In Lambda permissions, a resource-based statement is added automatically.
2. Policy allows principal events.amazonaws.com to invoke function.
3. Policy scope includes:
   - Lambda function ARN as resource,
   - condition restricting source ARN to the specific EventBridge rule ARN.
4. Effect: only that EventBridge rule can invoke this function.

## Observe Scheduled Invocations

1. Open Lambda monitor tab / CloudWatch logs.
2. Log stream shows periodic invocations.
3. Function code is updated to print incoming event object.
4. After waiting for next interval, logs show schedule event payload.

## Event Payload Details Seen in Logs

1. version field.
2. detail-type set to Scheduled Event.
3. source set to aws.events.
4. account, time, region.
5. resources containing invoking rule ARN.
6. detail object empty in this simple schedule example.

## Cleanup Mentioned

1. Disable the EventBridge rule after hands-on to stop periodic invocations.
