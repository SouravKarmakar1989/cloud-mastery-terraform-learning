# Lambda Function URL

## Pointwise No-Loss Summary

1. Lambda Function URL exposes Lambda directly over HTTPS without API Gateway/ALB setup.
2. URL is stable for the configured function target (alias or $LATEST scope).
3. Supports IPv4 and IPv6.

## Access Model

1. Endpoint is publicly accessible over internet.
2. Intended for HTTP clients such as browser, CLI, Postman, and other HTTPS callers.
3. Private-only endpoint model is not provided by Function URL itself.

## Configuration Scope

1. Function URL can be attached to:
   - unpublished function ($LATEST),
   - alias.
2. Not attached directly to immutable numbered version targets.

## CORS

1. CORS settings are available for cross-origin browser access.
2. Needed when frontend origin and Function URL/API domain differ.

## Security and Authorization

1. Controlled by Lambda resource-based policies.
2. AuthType NONE:
   - public/unauthenticated access pattern,
   - resource policy determines who can invoke.
3. AuthType AWS_IAM:
   - IAM authentication/authorization required,
   - identity policy and resource policy evaluation behavior applies.

## Same-Account vs Cross-Account Note

1. Same-account IAM evaluation follows standard policy-allow logic.
2. Cross-account invocation requires correct resource policy and principal-side IAM policy alignment.

## Throttling / Rate Control Note

1. Function URL-specific throttle control ties back to Lambda concurrency controls (reserved concurrency strategy).

## Overall Takeaway

1. Function URL is the simplest native HTTPS exposure option for Lambda, with policy-based security and optional CORS.
