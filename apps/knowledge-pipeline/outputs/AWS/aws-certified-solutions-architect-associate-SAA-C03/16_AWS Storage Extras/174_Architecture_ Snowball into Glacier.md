# Architecture: Snowball into Glacier

## Pointwise No-Loss Summary

1. Snowball cannot import data directly into Glacier.
2. Required architecture pattern:
   - import via Snowball into S3 first,
   - use S3 lifecycle policy to transition objects into Glacier.

## Outcome

1. Key exam pattern is S3 as mandatory intermediate landing zone between Snowball ingestion and Glacier archival.
