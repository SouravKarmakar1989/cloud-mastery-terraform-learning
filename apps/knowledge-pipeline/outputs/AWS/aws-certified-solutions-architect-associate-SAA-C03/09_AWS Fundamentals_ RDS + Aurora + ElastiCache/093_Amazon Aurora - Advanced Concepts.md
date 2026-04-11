# Amazon Aurora - Advanced Concepts

## Pointwise No-Loss Summary

1. Lecture covers advanced Aurora features likely to appear in architecture/exam scenarios.

## Replica Auto Scaling

1. Read pressure increases CPU on reader fleet.
2. Auto scaling can add Aurora replicas automatically.
3. Reader endpoint automatically includes new replicas for distributed reads.

## Custom Endpoints

1. Multiple replica instance classes can coexist in cluster.
2. Custom endpoints can route specific workloads to chosen subset of replicas.
3. Example use case: route analytical reads to larger instances.
4. Reader endpoint still exists, but workload-specific routing can shift to custom endpoints.

## Aurora Serverless

1. Automatically instantiates/scales capacity by usage.
2. Good for intermittent/unpredictable workloads.
3. Reduces capacity planning burden.
4. Billing is per-second usage pattern of active capacity.

## Aurora Global Database

1. Cross-region architecture with one primary read-write region.
2. Up to 10 secondary read-only regions.
3. Replication lag target highlighted as typically under one second.
4. Supports low-latency global reads.
5. Disaster recovery promotion can achieve RTO under one minute.

## Aurora ML Integration

1. Aurora can integrate with ML services (for example SageMaker/Comprehend) through SQL-facing workflow.
2. Use cases include fraud detection, ad targeting, sentiment analysis, recommendations.

## Babelfish for Aurora PostgreSQL

1. Enables Aurora PostgreSQL to accept SQL Server-style T-SQL interactions.
2. Reduces application code/driver changes during SQL Server migration scenarios.
3. Migration tooling context mentions AWS SCT and DMS in broader workflow.

## Outcome

1. Advanced Aurora concepts center on read scaling control, serverless elasticity, multi-region resilience, ML augmentation, and SQL Server migration simplification.
