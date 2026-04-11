# Lambda@Edge and CloudFront Functions

## Pointwise No-Loss Summary

1. Edge customization means running logic close to users at CloudFront edge locations.
2. AWS provides two edge function options:
   - CloudFront Functions,
   - Lambda@Edge.
3. Both are serverless and globally deployed through CloudFront workflow.

## Why Edge Functions

1. Execute logic before request reaches origin application or before response returns to user.
2. Reduce latency for specific customization tasks.
3. Support CDN-level behavior customization.

## Use Cases Mentioned

1. Security/privacy controls.
2. Dynamic web app behavior at edge.
3. SEO adjustments.
4. Intelligent origin/data-center routing.
5. Bot mitigation.
6. Real-time image transformation.
7. A/B testing.
8. Authentication/authorization handling.
9. User prioritization.
10. Tracking and analytics.

## CloudFront Request/Response Stages

1. Viewer request (client to CloudFront).
2. Origin request (CloudFront to origin).
3. Origin response (origin to CloudFront).
4. Viewer response (CloudFront back to client).

## CloudFront Functions

1. Lightweight JavaScript-only functions.
2. Designed for very high scale and extremely low latency.
3. Typical startup/execution profile is sub-millisecond style.
4. Trigger points limited to viewer request and viewer response.
5. Managed natively inside CloudFront configuration.

## Lambda@Edge

1. Supports Node.js and Python.
2. Can trigger on all four CloudFront phases:
   - viewer request,
   - origin request,
   - origin response,
   - viewer response.
3. Author/publish in us-east-1, then replicated by CloudFront globally.
4. Supports more complex processing with longer execution window than CloudFront Functions.

## Key Differences Highlighted

1. Runtime support:
   - CloudFront Functions: JavaScript only,
   - Lambda@Edge: Node.js/Python.
2. Scale profile:
   - CloudFront Functions: very high request rates,
   - Lambda@Edge: lower but still high scale.
3. Trigger scope:
   - CloudFront Functions: viewer phases only,
   - Lambda@Edge: viewer + origin phases.
4. Execution time:
   - CloudFront Functions: extremely short,
   - Lambda@Edge: multi-second budget.

## Typical Fit by Capability

1. CloudFront Functions:
   - cache-key normalization,
   - header manipulation,
   - URL rewrites/redirects,
   - lightweight token/JWT checks.
2. Lambda@Edge:
   - heavier logic,
   - third-party library usage,
   - network calls to external services,
   - deeper request-body/file-system dependent processing.

## Overall Takeaway

1. Choose CloudFront Functions for ultra-fast simple viewer-level logic.
2. Choose Lambda@Edge for richer logic and broader trigger coverage.
