# S3 Storage Lens

## Pointwise No-Loss Summary

1. S3 Storage Lens helps understand, analyze, and optimize storage across an AWS Organization.
2. It is used to detect anomalies, identify cost efficiencies, and apply protection best practices.
3. Provides 30-day usage and activity metrics view.
4. Data can be aggregated by organization, account, region, bucket, and prefix.
5. Supports default dashboard and custom dashboards.
6. Metrics/reports can be exported to S3 in CSV or Parquet.

## Dashboard Behavior

1. Default dashboard provides summarized insights and trends.
2. It includes both free and advanced metric perspectives.
3. It is pre-configured across multiple regions and accounts.
4. Default dashboard cannot be deleted, but can be disabled.
5. Filters can focus analysis by region/account/bucket/storage class.

## Metric Families Mentioned

1. Summary metrics:
   - storage bytes,
   - object counts,
   - used to identify growth and low-activity buckets/prefixes.
2. Cost optimization metrics:
   - non-current version bytes,
   - incomplete multi-part upload bytes,
   - used for cleanup and class-transition opportunities.
3. Data protection metrics:
   - versioning enabled bucket counts,
   - MFA delete enabled bucket counts,
   - SSE-KMS enabled bucket counts,
   - CRR rule counts,
   - used to find policy/protection gaps.
4. Access management metrics:
   - ownership-setting visibility.
5. Event metrics:
   - event-notification coverage visibility.
6. Performance metrics:
   - transfer acceleration usage visibility.
7. Activity/status metrics:
   - request patterns (GET/PUT/bytes),
   - HTTP status code metrics (200, 403, etc.).

## Free vs Advanced Metrics

1. Free metrics:
   - automatically available,
   - roughly 28 usage metrics,
   - query data retention around 14 days.
2. Advanced (paid) metrics and recommendations:
   - adds activity and advanced optimization/protection sets,
   - CloudWatch publishing capability,
   - prefix-level metrics collection,
   - data retention up to 15 months.

## Outcome

1. Storage Lens is presented as centralized governance/optimization telemetry for S3 across multi-account, multi-region estates, with clear free vs paid capability split.
