# Demo - Lifecycle Rules

## Pointwise No-Loss Summary

1. Demo creates lifecycle rule in S3 console to automate storage-class transitions.
2. Scope is set to all objects in selected bucket.

## Demo Steps Shown

1. Open target bucket.
2. Go to Management -> Lifecycle rules.
3. Create new rule with descriptive name.
4. Apply rule to entire bucket.
5. Choose action to transition current object versions.
6. Add first transition:
   - Standard -> Standard-IA at 30 days.
7. Add second transition:
   - later move to Glacier Instant Retrieval (example at 180 days).
8. Review transition timeline visualization.
9. Create/enable rule.
10. Verify rule appears in lifecycle list with scope and actions.

## Additional Note

1. Multiple lifecycle rules can exist on same bucket; rule design should avoid conflicting intent.

## Outcome

1. Learner can configure and validate lifecycle automation for class transitions directly from console.
