# Using Amazon S3 to Host a Static Website

## Pointwise No-Loss Summary

1. S3 can host static websites by serving HTML/CSS/JS/image assets directly from bucket objects.
2. This approach simplifies hosting for static content workloads without server-side compute management.

## Hosting Modes Mentioned

1. Direct static website hosting from bucket endpoint.
2. Redirection-style behavior using bucket website configuration where needed.

## URL and Domain Concepts

1. S3 provides default website endpoint tied to bucket/region.
2. Custom domain can be mapped via DNS CNAME/alias patterns.
3. CloudFront can be layered in front for global distribution and TLS support.

## Security and Access Requirements

1. Bucket/object access must be configured correctly for public web delivery where intended.
2. Public-access controls and bucket policy need explicit alignment for website objects.

## Architectural Enhancements Discussed

1. Optional CloudFront + ACM TLS for HTTPS delivery.
2. Optional Route 53 DNS mapping for friendly domain names.
3. Optional DevOps workflow integration (code pipeline, IaC, monitoring/logging).

## Outcome

1. Learner gets end-to-end blueprint for S3 static website delivery from basic endpoint to production-style custom-domain/TLS architecture.
