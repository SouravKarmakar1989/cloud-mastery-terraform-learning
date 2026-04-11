# Access Control Lists (ACLs)

## Pointwise No-Loss Summary

1. ACLs are presented as legacy access-control mechanism in S3.
2. AWS recommendation is to prefer object ownership + bucket policies over ACL-centric designs.

## Current Positioning

1. New buckets default posture disables ACL-driven usage patterns in modern setup flows.
2. ACLs may still be required in limited legacy/specific integrations.

## ACL Basics Covered

1. ACLs can exist at:
   - bucket level,
   - object level.
2. ACLs specify grantees and allowed permissions.
3. ACLs can be evaluated alongside IAM and bucket policies.

## Evaluation Principles Reiterated

1. Explicit deny overrides allow.
2. If no explicit allow applies, implicit deny remains.
3. Effective decision is based on combined policy/ACL evaluation path.

## Practical Guidance

1. Do not build new broad access models around ACLs when bucket policies/object ownership can solve requirement.
2. Understand ACL locations and behavior for maintaining existing/legacy environments.

## Outcome

1. Learner gains ACL literacy without over-investing in deprecated operational patterns.
