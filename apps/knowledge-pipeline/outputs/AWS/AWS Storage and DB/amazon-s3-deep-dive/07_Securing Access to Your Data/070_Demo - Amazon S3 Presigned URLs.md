# Demo - Amazon S3 Presigned URLs

## Pointwise No-Loss Summary

1. Demo generates presigned URL from console for object in non-public bucket.
2. It confirms object remains inaccessible via normal URL but accessible via presigned URL until expiry.

## Steps Demonstrated

1. Verify bucket is private (BPA posture + no public bucket policy path).
2. Open object details.
3. Use Object actions -> Share with presigned URL.
4. Set expiration duration (example uses short minutes window).
5. Generate URL and test access in browser/incognito context.

## Validation Behavior

1. Normal object URL returns AccessDenied.
2. Presigned URL returns object successfully during validity window.
3. URL contains signed query parameters tied to temporary access delegation.

## Practical Note

1. Real-world usage is often app-driven (backend creates URLs dynamically for authorized users) rather than manual console generation.

## Outcome

1. Learner can generate/test presigned URLs and distinguish them from static public object URLs.
