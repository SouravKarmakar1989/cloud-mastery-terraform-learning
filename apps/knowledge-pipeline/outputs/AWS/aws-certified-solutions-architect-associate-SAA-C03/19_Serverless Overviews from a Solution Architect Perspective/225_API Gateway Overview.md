# API Gateway Overview

## Pointwise No-Loss Summary

1. API Gateway is serverless service for exposing APIs, commonly in front of Lambda.
2. Enables public HTTP API exposure without direct Lambda invocation by clients.

## Positioning in Serverless Stack

1. Client can call Lambda directly (requires IAM) or via ALB, but API Gateway adds richer API-management features.
2. Common architecture: client -> API Gateway -> Lambda -> data services (for example DynamoDB).

## Feature Set Highlighted

1. REST and WebSocket capabilities.
2. API versioning.
3. Environment stages (dev/test/prod).
4. Security/authn/authz options.
5. API keys and throttling.
6. Swagger/OpenAPI import/export.
7. Request/response transformation and validation.
8. SDK/spec generation and response caching.

## Integration Types Mentioned

1. Lambda integration.
2. HTTP backend integration (on-prem or ALB).
3. AWS service integration (for example Step Functions, SQS, Kinesis patterns).

## Endpoint Types

1. Edge-optimized:
   - global client access via CloudFront edge routing.
2. Regional:
   - region-local endpoint, optional self-managed CloudFront in front.
3. Private:
   - accessible only via VPC interface endpoints.

## Security Notes

1. IAM auth for internal AWS callers.
2. Cognito for external/mobile/web user auth.
3. Custom Lambda authorizer option.
4. Custom domain with ACM certificate support.
5. Certificate region nuance:
   - edge-optimized custom domain cert in us-east-1,
   - regional endpoint cert in API region.
6. Route 53 DNS mapping used for custom domain routing.

## Outcome

1. API Gateway is presented as API-management control plane, not just transport proxy, for secure and scalable serverless and hybrid integrations.
