# Aurora Instance Classes

## Pointwise No-Loss Summary

1. Aurora supports both serverless and provisioned compute models.
2. Provisioned model requires selecting specific instance class families/sizes.

## Compute Model Options

1. Serverless:
   - Aurora dynamically adjusts CPU/memory/network resources.
2. Provisioned:
   - fixed instance classes are selected and managed.

## Provisioned Instance Class Concepts

1. Instance naming reflects family, generation, and architecture suffix.
2. Memory-optimized families and burstable families are available.
3. Different engines/versions have instance compatibility constraints.
4. Newer generations generally provide better performance characteristics.

## Compatibility Considerations

1. Not all instance classes support every Aurora engine/version combination.
2. Must verify class support matrix for selected MySQL/Postgres-compatible edition.

## Pricing Considerations

1. Instance class materially affects hourly cost.
2. Newer generations can sometimes be both faster and cheaper than older generations.
3. Selection should balance:
   - workload performance needs,
   - engine compatibility,
   - cost profile.

## Key Takeaway

1. Aurora sizing is a compute-model decision first (serverless vs provisioned), then class compatibility/performance/cost optimization.
