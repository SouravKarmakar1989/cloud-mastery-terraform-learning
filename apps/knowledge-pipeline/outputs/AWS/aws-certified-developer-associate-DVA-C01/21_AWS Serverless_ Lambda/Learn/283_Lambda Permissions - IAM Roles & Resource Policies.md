# Lambda Permissions - IAM Roles and Resource Policies

## Pointwise No-Loss Summary

1. Lambda permission model uses both execution roles and resource-based policies.
2. Execution role grants what Lambda can access.
3. Resource-based policy grants who can invoke/access Lambda resource.

## Execution Role (IAM Role Attached to Function)

1. Every Lambda function must have an IAM execution role.
2. Role allows function to access AWS services/resources.
3. Common managed policy examples mentioned:
   - BasicExecutionRole (CloudWatch Logs),
   - KinesisExecutionRole,
   - DynamoDBExecutionRole,
   - SQSQueueExecutionRole,
   - LambdaVPCAccessExecutionRole,
   - XRayDaemonWriteAccess.
4. Custom policies can also be created.

## Event Source Mapping Relationship

1. With Event Source Mapping, Lambda service reads from source on behalf of function.
2. Therefore function execution role must include permissions required to read event source data.

## Best Practice Mentioned

1. Create one dedicated Lambda execution role per function.

## Resource-Based Policy on Lambda

1. Used to allow other principals/services/accounts to invoke or access Lambda function.
2. Comparable concept to S3 bucket policy.
3. Common use case is service-to-service invocation (for example S3 invoking Lambda).

## Authorization Rule Framing

1. Principal can access Lambda if either:
   - principal IAM policy grants access,
   - Lambda resource-based policy grants access.
2. Example principal IAM policy path:
   - admin user policy permits Lambda operations.
3. Example resource-policy path:
   - service principal (like S3) is explicitly allowed to invoke function.

## Practical Note

1. AWS console often auto-manages resource-policy statements for integrated triggers.
2. In custom integrations, you may need to author those permissions explicitly.
