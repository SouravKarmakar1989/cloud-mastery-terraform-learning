# ElastiCache for Solution Architects

## Pointwise No-Loss Summary

1. Lecture focuses on security and caching-pattern decisions for architecture scenarios.

## Security Summary

1. Redis supports IAM authentication integration (service-specific context).
2. IAM policies also control API-level interactions.
3. Redis AUTH token/password can add cache-level auth.
4. In-flight SSL encryption supported.
5. Memcached supports SASL-based authentication.

## Data-Loading Patterns

1. Lazy loading:
   - cache on read miss,
   - possible stale data risk.
2. Write-through:
   - update cache on DB writes,
   - reduces staleness.
3. Session store pattern:
   - session state in cache,
   - TTL expiration support.

## Complexity Reminder

1. Caching and cache invalidation are highlighted as fundamentally hard design problems.

## Redis Sorted Set Exam Use Case

1. Real-time leaderboard pattern.
2. Sorted sets provide ordered, unique ranking updates.
3. Useful for gaming scoreboards and rank retrieval.

## Outcome

1. Lecture reinforces selecting the right cache strategy and security model while recognizing Redis data-structure advantages for ranking/leaderboard scenarios.
