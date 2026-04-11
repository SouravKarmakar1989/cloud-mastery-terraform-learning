# S3 Access Points

## Pointwise No-Loss Summary

1. S3 Access Points simplify managing access to shared buckets with multiple datasets and user groups.
2. Alternative to one increasingly complex bucket policy.

## Multi-Access Model

1. Separate access points can be created per consumer/domain (example: finance, sales, analytics).
2. Each access point has its own policy (bucket-policy-like syntax).
3. Policies can restrict by prefix and access mode (read/write vs read-only).
4. Users are granted IAM permissions to specific access points matching their scope.

## Security/Scale Benefits

1. Security controls are decomposed per access path.
2. Bucket policy remains simpler.
3. Access management scales better as users and datasets grow.

## Access Point Networking and Identity

1. Each access point has its own DNS name.
2. Access point can be internet-facing or VPC-origin (private).

## VPC-Origin Pattern

1. For private VPC access, create VPC endpoint.
2. VPC endpoint policy must allow target bucket/access point usage.
3. Effective security layers include:
   - VPC endpoint policy,
   - access point policy,
   - bucket policy.

## Outcome

1. Access points are positioned as scalable, policy-isolated access front doors to a shared S3 bucket.
