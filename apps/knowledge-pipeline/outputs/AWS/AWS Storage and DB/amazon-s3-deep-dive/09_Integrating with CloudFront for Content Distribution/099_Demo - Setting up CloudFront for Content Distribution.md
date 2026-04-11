# Demo - Setting up CloudFront for Content Distribution

## Pointwise No-Loss Summary

1. Demo creates CloudFront distribution with S3 origin and OAC-enabled access model.
2. It updates bucket policy using CloudFront-provided statement and validates object delivery through CloudFront domain.

## Steps Demonstrated

1. Open CloudFront and create distribution.
2. Select S3 bucket as origin.
3. Configure OAC mode and choose/sign origin access control.
4. Set viewer protocol policy (HTTP redirect to HTTPS in demo).
5. Configure cache/security/distribution options as needed.
6. Create distribution and copy generated bucket-policy snippet.
7. Go to S3 bucket permissions and paste/apply policy allowing only that distribution path.
8. Wait for distribution deployment.
9. Test access via CloudFront domain plus object key path.

## Validation Behavior

1. Root CloudFront URL without specific object path returns access behavior consistent with bucket/list policy scope.
2. Object path requests succeed and are served via CloudFront.
3. Subsequent requests benefit from edge caching behavior.

## Outcome

1. Learner can implement end-to-end CloudFront fronting for S3 content with policy-secured origin access.
