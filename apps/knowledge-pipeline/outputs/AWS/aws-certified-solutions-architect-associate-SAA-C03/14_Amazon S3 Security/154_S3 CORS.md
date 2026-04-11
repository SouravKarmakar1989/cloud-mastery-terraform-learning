# S3 CORS

## Pointwise No-Loss Summary

1. CORS means Cross-Origin Resource Sharing.
2. It is browser security behavior relevant for cross-origin web requests.
3. Origin is defined by scheme/protocol, host/domain, and port.

## Same-Origin vs Cross-Origin

1. Requests are same-origin only when scheme, host, and port all match.
2. Requests to different origin (for example different subdomain/domain) are blocked unless allowed by target via CORS headers.

## Browser CORS Flow (Conceptual)

1. Browser loads primary origin content.
2. Page requires resource from other origin.
3. Browser checks/uses CORS permission model (pre-flight/options scenario shown conceptually).
4. Target origin must respond with allow headers (Access-Control-Allow-Origin, allowed methods).
5. If allowed, browser proceeds with cross-origin request.

## Applying CORS to S3

1. If client/browser makes cross-origin request to S3 resource, bucket must provide appropriate CORS configuration.
2. Popular exam scenario: resources in one S3-hosted site requesting assets from another origin bucket.
3. Quick permissive option is allow specific origin or wildcard (*), depending security requirement.

## Outcome

1. Lecture explains CORS as browser-enforced cross-origin gate and frames required S3 CORS headers for multi-origin static website patterns.
