# RDS Option Groups

## Pointwise No-Loss Summary

1. Option groups are feature bundles for RDS engines.
2. They enable/disable higher-level engine options not handled via parameter groups.

## Role of Option Groups

1. Used to activate specific engine capabilities/add-ons.
2. Example concept mentioned: enabling cache-related features for performance scenarios.

## Scope Characteristics

1. Option groups are region-scoped.
2. Option groups are VPC-context aware in usage planning.
3. When restoring to another region, source-region option group does not carry over automatically.

## Parameter Group vs Option Group

1. Parameter group:
   - detailed low-level engine parameter tuning.
2. Option group:
   - packaged optional engine features.
3. Both are often needed to fully align DB behavior with application requirements.

## Key Takeaway

1. Option groups manage optional engine feature sets, while parameter groups manage granular engine tuning.
