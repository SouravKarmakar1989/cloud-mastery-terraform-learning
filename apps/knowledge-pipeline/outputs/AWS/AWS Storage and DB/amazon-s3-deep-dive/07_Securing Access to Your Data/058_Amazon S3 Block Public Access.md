# Amazon S3 Block Public Access

## Pointwise No-Loss Summary

1. S3 Block Public Access is a guardrail to prevent accidental public exposure of buckets/objects.
2. It can be configured at multiple scopes:
   - bucket,
   - account,
   - organization-wide via SCP guardrails.

## Why It Matters

1. Common S3 incidents are frequently linked to misconfiguration, not platform compromise.
2. Block Public Access helps prevent unintended public permissions from ACLs/policies.

## Capability Overview

1. Can block public exposure introduced by ACLs.
2. Can block public exposure introduced by bucket policies.
3. Can block new-public-permission changes and/or broadly enforce no-public-access behavior depending on specific option selected.
4. Not configurable per individual object as a direct BPA setting.

## Option Families Explained

1. ACL-related controls:
   - block new public ACL grants,
   - ignore/block any public ACL behavior broadly.
2. Bucket-policy-related controls:
   - block new public bucket policies,
   - block/limit access through any public policy paths.

## Operational Effect

1. If block settings conflict with attempted policy/ACL change, request is denied.
2. Account-level settings can enforce stricter posture than individual bucket settings.

## Guidance Emphasized

1. Recommended secure default is enabling full block-public-access posture unless explicit public-data use case exists.
2. Public-serving workloads should be intentionally designed and isolated with clear controls.

## Outcome

1. Learner understands Block Public Access as first-line preventative control against accidental internet exposure.
