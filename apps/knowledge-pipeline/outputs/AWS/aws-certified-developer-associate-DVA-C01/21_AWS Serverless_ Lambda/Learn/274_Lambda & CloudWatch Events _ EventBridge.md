# Lambda and CloudWatch Events / EventBridge

## Pointwise No-Loss Summary

1. Lecture introduces EventBridge (CloudWatch Events) integration with Lambda.
2. Two practical patterns are highlighted.

## Pattern 1: Serverless Schedule (CRON/Rate)

1. Create an EventBridge rule.
2. Use schedule expression (for example, every hour).
3. Rule triggers Lambda function on schedule.
4. Lambda performs periodic background task without dedicated server.

## Pattern 2: AWS Service Event Reaction

1. Create EventBridge rule for service events (example: CodePipeline state changes).
2. On matching event, EventBridge invokes Lambda.
3. Lambda runs automation/workflow task in response.

## Overall Takeaway

1. EventBridge enables time-based and event-based asynchronous Lambda execution.
2. Common use is infrastructure or pipeline automation triggers.
