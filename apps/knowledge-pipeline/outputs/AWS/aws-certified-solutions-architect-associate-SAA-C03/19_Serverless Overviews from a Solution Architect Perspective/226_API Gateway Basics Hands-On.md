# API Gateway Basics Hands-On

## Pointwise No-Loss Summary

1. Demo creates REST API and integrates routes with Lambda functions.

## API Creation Flow

1. API Gateway console shows API types (HTTP, WebSocket, REST).
2. REST API selected for demo.
3. New API created (regional endpoint type).

## Method and Integration Setup

1. Root resource GET method created.
2. Integration type selected: Lambda function with proxy integration.
3. Lambda function created in Python and returns JSON payload with status code 200.
4. API Gateway permission to invoke Lambda is auto-created (resource policy shown).

## Testing and Debugging

1. Method test in console returns expected body/status/headers.
2. Lambda logging used to inspect incoming API Gateway event payload (path, method, headers, query params, etc.).

## Additional Resource Route

1. New resource /houses created.
2. Separate GET method integrated to second Lambda function.
3. Route test confirms distinct response.

## Deployment

1. API deployed to stage dev.
2. Invoke URL used from browser:
   - /dev returns root Lambda response,
   - /dev/houses returns houses Lambda response.
3. Unmapped path returns missing-authentication-token style API error.

## Outcome

1. Hands-on demonstrates full REST API lifecycle: design routes, connect Lambda, test, observe logs, deploy stage, and invoke publicly.
