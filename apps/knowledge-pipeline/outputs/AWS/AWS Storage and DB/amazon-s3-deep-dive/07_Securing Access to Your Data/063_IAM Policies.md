# IAM Policies

## Pointwise No-Loss Summary

1. IAM policies can manage S3 access from identity side (user/role based).
2. This is the user-based complement to resource-based controls like bucket policies.

## Positioning in Access Strategy

1. IAM policies can be used as primary control method for S3 actions.
2. IAM and bucket policies can coexist; effective access is still determined by full policy evaluation logic.
3. Consistency in strategy is recommended to reduce operational complexity.

## Practical Scope

1. Same S3 action/resource/condition model applies.
2. Policies are attached to users, groups, or roles in IAM instead of directly on bucket.

## Outcome

1. Learner understands when to use identity-centric S3 authorization and how it relates to resource-centric alternatives.
