# S3 CORS Hands On

## Pointwise No-Loss Summary

1. Demo activates CORS test logic in index.html by uncommenting the fetch-related block.
2. index.html and extra-page.html are uploaded to same bucket first.
3. Website endpoint confirms same-origin fetch works successfully.

## Building Cross-Origin Scenario

1. A second bucket is created in another region and configured for static website hosting.
2. Public access is enabled and bucket policy is added to allow public reads.
3. extra-page.html is uploaded to second bucket and verified via object URL.
4. extra-page.html is removed from first bucket.
5. index.html in first bucket is updated so fetch points to second bucket URL.
6. Updated index.html is uploaded back to first bucket.

## Observing CORS Failure

1. First site now attempts cross-origin fetch to second bucket.
2. Browser developer tools show blocked cross-origin request due to missing Access-Control-Allow-Origin header.

## Fixing CORS

1. In second bucket Permissions -> CORS configuration, JSON CORS rules are added.
2. AllowedOrigins is set to first bucket website origin URL (without trailing slash).
3. CORS settings are saved.

## Validation

1. Refreshing first site now loads extra page successfully.
2. Network response headers show Access-Control-Allow-Methods and Access-Control-Allow-Origin.

## Outcome

1. Hands-on demonstrates real browser-enforced CORS failure and resolution between two S3 static website origins.
