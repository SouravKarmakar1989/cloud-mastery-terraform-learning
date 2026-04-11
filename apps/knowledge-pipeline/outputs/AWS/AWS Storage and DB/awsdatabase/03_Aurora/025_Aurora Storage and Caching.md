# Aurora Storage and Caching

## Pointwise No-Loss Summary

1. Lecture covers Aurora storage class choices and caching behavior.
2. Storage classes differ by IO billing model and performance profile.

## Storage Classes

1. Aurora IO-Optimized:
   - higher-cost profile,
   - intended for IO-intensive workloads,
   - IO operation billing model differs from standard (positioned for high-IO scenarios).
2. Aurora Standard:
   - lower base storage cost profile,
   - IO operations billed separately,
   - suitable for moderate IO workloads.
3. Switching between classes is supported with timing limits (lecture mentions once per 30 days).

## Cost/Workload Framing

1. Class choice depends on balance of storage spend versus IO operation spend.
2. IO-heavy workloads may favor IO-optimized economics/performance.

## Caching Concept

1. Aurora includes built-in write-through style caching behavior.
2. Frequently repeated query results can be served from memory cache.
3. Cache reduces repeated compute/IO work for identical repeated requests.
4. Cache capacity depends on available instance memory.

## Outcome of Caching

1. Lower response latency for repeated query patterns.
2. Reduced repeated processing burden on database engine.

## Key Takeaway

1. Aurora storage class selection and memory cache behavior both materially influence performance and cost efficiency.
