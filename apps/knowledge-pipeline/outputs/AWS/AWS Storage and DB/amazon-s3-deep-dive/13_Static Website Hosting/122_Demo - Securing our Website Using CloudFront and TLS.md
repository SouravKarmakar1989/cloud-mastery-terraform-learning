# Demo - Securing our Website Using CloudFront and TLS

## Pointwise No-Loss Summary

1. Demo fronts S3 website origin with CloudFront and adds TLS using ACM certificate.
2. Final result is custom-domain HTTPS website with optional HTTP->HTTPS redirect behavior.

## Steps Demonstrated

1. Create CloudFront distribution with S3 website endpoint as origin.
2. Configure viewer protocol policy to redirect HTTP to HTTPS.
3. Add alternate domain name for custom hostname.
4. Request ACM public certificate for custom domain.
5. Validate certificate via DNS record in hosted zone.
6. Attach issued certificate to CloudFront distribution.
7. Update DNS custom-domain record to point at CloudFront distribution domain.
8. Wait for distribution deployment and DNS propagation.
9. Test custom domain over HTTPS and confirm certificate lock.
10. Test HTTP URL and verify redirect to HTTPS.

## Outcome

1. Learner can deliver S3-hosted static site securely with CloudFront edge distribution and TLS encryption.
