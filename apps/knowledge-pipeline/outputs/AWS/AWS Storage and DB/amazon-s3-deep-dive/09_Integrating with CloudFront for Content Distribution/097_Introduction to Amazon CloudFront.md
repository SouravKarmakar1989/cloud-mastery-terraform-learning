# Introduction to Amazon CloudFront

## Pointwise No-Loss Summary

1. CloudFront is presented as CDN layer for distributing S3-hosted content globally via edge locations.
2. Primary goals:
   - lower latency,
   - improved user experience,
   - scalable content delivery for geographically distributed users.

## Delivery Model Explained

1. User requests hit nearest CloudFront edge location.
2. If object is cached, response is served locally.
3. If not cached, CloudFront fetches from origin (for example S3), serves response, and caches for subsequent requests.

## Why It Matters for S3

1. S3 is a common origin for CloudFront distributions.
2. CloudFront can improve both download/read path and upload/ingress patterns in certain architectures.

## Configuration Concepts Mentioned

1. Origin path and prefix targeting.
2. Public vs restricted access patterns.
3. HTTP method allowances.
4. Compression and caching behavior.
5. TLS/certificate and custom-domain integration.
6. Optional integration with WAF/Shield protections.
7. Geo-distribution scope selection for edge usage.

## Outcome

1. Learner understands CloudFront as performance/security distribution layer in front of S3 origins.
