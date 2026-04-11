# Lambda and Application Load Balancer

## Pointwise No-Loss Summary

1. Lambda can be exposed over HTTP/HTTPS through front-door services.
2. Two approaches mentioned are:
   - Application Load Balancer (ALB),
   - API Gateway (covered later).
3. This lecture focuses on ALB integration.

## Core ALB Integration Flow

1. Lambda function must be registered in an ALB target group.
2. Client sends HTTP/HTTPS request to ALB.
3. ALB invokes Lambda synchronously through target group.
4. ALB waits for Lambda response.
5. ALB returns HTTP response back to client.

## HTTP Request to Lambda Event Transformation

1. ALB transforms incoming HTTP request into JSON payload for Lambda.
2. Event includes ELB metadata, such as:
   - invoking load balancer information,
   - target group context.
3. Event includes request details:
   - HTTP method (example shown: GET),
   - path (example shown: /lambda),
   - query string parameters,
   - headers,
   - body for methods such as POST/PUT,
   - isBase64Encoded flag.
4. Query string parameters and headers are represented as key/value pairs.

## Lambda Response to HTTP Transformation

1. Lambda returns JSON response document.
2. ALB converts this JSON back to HTTP response.
3. Response JSON fields described include:
   - status code,
   - status description,
   - response headers (key/value pairs),
   - body,
   - isBase64Encoded flag.

## ALB Multi-Value Headers Feature

1. ALB setting can preserve multiple values for same header/query key.
2. Without this, duplicate key values may be collapsed to one.
3. Example query string:
   - name=foo&name=bar.
4. With feature enabled, both values are preserved and forwarded.
5. Lambda receives repeated key values as an array (for example name: [foo, bar]).
6. Feature applies to both headers and query string parameters.

## Overall Takeaway

1. ALB-Lambda integration is synchronous request/response.
2. Key exam-relevant concept is HTTP-to-JSON and JSON-to-HTTP conversion behavior, including multi-value handling.
