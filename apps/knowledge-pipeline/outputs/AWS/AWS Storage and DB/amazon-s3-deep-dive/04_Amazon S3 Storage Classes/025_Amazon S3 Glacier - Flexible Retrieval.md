# Amazon S3 Glacier - Flexible Retrieval

## Pointwise No-Loss Summary

1. Glacier Flexible Retrieval corresponds to the legacy Glacier-style retrieval model from earlier AWS service history.
2. It is designed for long-term backups and archives with selectable retrieval speed tiers.

## Retrieval Options Mentioned

1. Expedited retrieval:
   - approximately 1 to 5 minutes.
2. Standard retrieval:
   - approximately 3 to 5 hours.
3. Bulk retrieval:
   - approximately 5 to 12 hours.

## Pricing/Policy Notes Mentioned

1. Faster retrieval options cost more.
2. Bulk retrieval is described as not having additional retrieval charge in lesson context.
3. 90-day minimum storage duration charge applies.

## Access Pattern Guidance

1. Use for very infrequent access, long-lived archival datasets.
2. Choose retrieval type based on urgency vs cost.

## Example Workloads Mentioned

1. Historical records.
2. Financial records.
3. Healthcare records.
4. Legal documents.
5. Other long-term archival data.

## Outcome

1. Flexible Retrieval offers lower archival storage cost than instant-access classes while letting you trade retrieval speed for price when restore is needed.
