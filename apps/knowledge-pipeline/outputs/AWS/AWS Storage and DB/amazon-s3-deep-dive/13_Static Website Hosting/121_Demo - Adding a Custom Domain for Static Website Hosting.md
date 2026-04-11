# Demo - Adding a Custom Domain for Static Website Hosting

## Pointwise No-Loss Summary

1. Demo maps friendly custom domain to S3 website endpoint using DNS.
2. It validates website access via custom hostname.

## Steps Demonstrated

1. Copy S3 static website endpoint.
2. Open DNS hosted zone (Route 53 in demo).
3. Create CNAME-style record for desired subdomain.
4. Point record value to S3 website endpoint host.
5. Wait for DNS propagation.
6. Test custom domain URL and verify static site loads.

## Outcome

1. Learner can replace raw S3 website endpoint with user-friendly domain name.
