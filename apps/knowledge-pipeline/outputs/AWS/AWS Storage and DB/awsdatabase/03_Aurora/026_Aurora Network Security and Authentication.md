# Aurora Network Security and Authentication

## Pointwise No-Loss Summary

1. Aurora security model parallels key RDS networking/authentication patterns.
2. Focus is private network placement, security groups, and IAM-based DB auth.

## Network Placement

1. Aurora clusters run inside a VPC.
2. Recommended placement is private subnet for DB instances.
3. App/web tiers may run in public subnet and reach DB privately.

## Security Groups

1. Security groups restrict who can connect to Aurora and on which ports.
2. Source can be:
   - specific client IP/CIDR,
   - or source security group reference (preferred app-tier pattern).
3. Goal is to allow only intended client paths.

## IAM Authentication Concept

1. Password auth can still be used, but IAM auth is an alternative.
2. IAM role on compute client (for example EC2) is used to request auth token.
3. Token maps to DB user configured for AWS auth flow.
4. This avoids embedding static DB credentials on instances.

## Security Benefits Highlighted

1. Reduces static credential exposure risk on client hosts.
2. Simplifies credential lifecycle compared with hardcoded password distribution.

## Key Takeaway

1. Secure Aurora access should combine private subnet placement, tight SG rules, and modern auth patterns like IAM token-based access where possible.
