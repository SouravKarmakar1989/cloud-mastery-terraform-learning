# Lambda Permissions - IAM Roles and Resource Policies - Hands On

## Pointwise No-Loss Summary

1. Hands-on contrasts Lambda execution role permissions versus Lambda resource-based policies.
2. Demonstration uses multiple previously created Lambda functions (S3, EventBridge, SQS integrations).
3. Key distinction shown: push-style triggers rely on resource policy; poll-style integrations rely on execution role permissions.

## Review Lambda Execution Roles in IAM

1. Open IAM Roles and filter for Lambda roles.
2. Multiple roles are visible (for demo Lambda functions such as ALB/S3/SQS/EventBridge flows).
3. Example baseline role includes LambdaBasicExecutionRole policy.
4. LambdaBasicExecutionRole allows CloudWatch Logs actions (create log group/stream and put log events).

## Resource-Based Policy Example: S3 Trigger

1. Open Lambda function invoked by S3.
2. Trigger view confirms S3 trigger attached.
3. In permissions, resource-based policy statement allows s3.amazonaws.com principal to invoke function.
4. Policy includes conditions such as:
   - source account,
   - source ARN matching specific S3 bucket.

## Resource-Based Policy Example: EventBridge Trigger

1. Open Lambda function invoked by EventBridge rule.
2. In permissions, resource-based policy statement allows events.amazonaws.com principal.
3. Condition restricts source ARN to specific EventBridge rule ARN.

## Execution Role Example: SQS Event Source Mapping

1. Open Lambda function connected to SQS via Event Source Mapping.
2. No resource-based policy statement appears for SQS invoke case.
3. Reason: SQS does not invoke Lambda directly in this pattern.
4. Lambda polls SQS, so permissions are required on execution role.
5. Execution role contains SQS permissions (receive/delete/get attributes).

## Key Takeaway

1. Resource policy is used when external service invokes Lambda.
2. Execution role is used when Lambda function/service needs to call/read another AWS resource.
