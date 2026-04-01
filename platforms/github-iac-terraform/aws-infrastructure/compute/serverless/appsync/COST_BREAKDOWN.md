# Cost Breakdown: serverless/appsync

## Components
- GraphQL query and data modification operations.
- Real-time websocket connection minutes (if subscriptions used).
- Resolver backend costs (Lambda/DynamoDB/etc.).

## Pre-Deploy Cost Checklist
1. Estimate requests by operation type.
2. Estimate subscription connection minutes.
3. Include resolver service costs.
