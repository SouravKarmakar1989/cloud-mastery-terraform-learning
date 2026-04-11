# Amazon S3 Glacier - Deep Archive

## Pointwise No-Loss Summary

1. Glacier Deep Archive is presented as the lowest-cost S3 storage class.
2. It targets very long-term retention where access is extremely rare (for example, yearly or less).
3. It is positioned as a cloud replacement for hardware/tape-style deep archival retention.

## Retrieval Options Mentioned

1. Standard retrieval:
   - up to 12 hours.
2. Bulk retrieval:
   - up to 48 hours.

## Design Tradeoff

1. Extremely low storage cost comes with longest retrieval delays among S3 classes discussed.
2. Best for data retained for policy/compliance, not operational access.

## Example Workloads Mentioned

1. Rarely accessed historical records.
2. Legal/compliance retention records.
3. Deep archival datasets unlikely to be retrieved.

## Outcome

1. Deep Archive is the most cost-efficient class for coldest data where long restore windows are acceptable.
