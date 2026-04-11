# Lambda Synchronous Invocations

## Pointwise No-Loss Summary

1. Lecture explains synchronous invocation model for Lambda.
2. Synchronous means caller waits for Lambda response.
3. Response (or error) is returned directly to caller.

## What Counts as Synchronous Invocation

1. CLI invocation.
2. SDK invocation.
3. API Gateway integration.
4. Application Load Balancer integration.

## Error-Handling Responsibility

1. In synchronous mode, Lambda errors are returned to client.
2. Client-side logic must decide what to do next.
3. Typical client actions include:
   - retry,
   - retry with exponential backoff,
   - fail/handle according to application behavior.

## Request/Response Flow Example

1. Direct client call (CLI/SDK):
   - client invokes Lambda,
   - Lambda processes request,
   - Lambda returns response directly.
2. API Gateway flow:
   - client calls API Gateway,
   - API Gateway invokes Lambda,
   - Lambda response goes back to API Gateway,
   - API Gateway returns response to client.
3. In both cases, caller waits for response, so invocation is synchronous.

## Services Mentioned as Synchronous with Lambda

1. User-invoked calls are synchronous by nature.
2. Elastic Load Balancing (Application Load Balancer).
3. API Gateway.
4. CloudFront with Lambda@Edge.
5. Amazon S3 Batch.
6. Cognito.
7. Step Functions.
8. Lex.
9. Alexa.
10. Kinesis Data Firehose.

## Course Scope Note Mentioned

1. Lecturer marks some services as covered later in course:
   - Application Load Balancer,
   - API Gateway,
   - CloudFront,
   - Cognito,
   - Step Functions.

## Transition

1. Next step is synchronous invocation hands-on.
