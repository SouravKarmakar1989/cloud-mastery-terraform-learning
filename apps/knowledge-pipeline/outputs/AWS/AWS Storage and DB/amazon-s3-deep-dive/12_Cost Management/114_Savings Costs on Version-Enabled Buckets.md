# Savings Costs on Version-Enabled Buckets

## Pointwise No-Loss Summary

1. Version-enabled buckets can accumulate hidden/non-current object costs quickly.
2. Every retained version contributes to storage billing until removed/expired.

## Cost Pattern

1. New versions of same key do not replace prior storage cost; they add to it.
2. Delete-marker behavior can hide objects logically while historical data may still consume cost.

## Optimization Approaches Mentioned

1. Use Storage Lens to identify version-heavy buckets and delete-marker/object patterns.
2. Apply lifecycle rules to expire non-current versions after retention window.
3. Remove unnecessary historical versions where business requirements allow.

## Outcome

1. Learner can control version-history growth to reduce avoidable storage spend.
