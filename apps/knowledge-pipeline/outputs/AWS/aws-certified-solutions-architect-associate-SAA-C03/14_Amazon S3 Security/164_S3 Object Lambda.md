# S3 Object Lambda

## Pointwise No-Loss Summary

1. S3 Object Lambda enables per-request transformation of S3 objects at retrieval time.
2. Avoids duplicating objects into separate buckets for each consumer-specific format.

## Architecture Pattern

1. Source data remains in one S3 bucket.
2. Standard S3 access point connects to bucket.
3. Lambda function is attached to process object on read.
4. S3 Object Lambda access point exposes transformed output to consuming application.

## Multi-Consumer Example Pattern

1. E-commerce app can read original object directly.
2. Analytics app can receive redacted object through one Object Lambda path.
3. Marketing app can receive enriched object (for example joined with loyalty DB) through another Object Lambda path.
4. Same underlying bucket serves different transformed views.

## Use Cases Mentioned

1. Redact PII for analytics/non-production use.
2. Convert formats (example XML to JSON).
3. Perform dynamic transformations (example image resize/watermark on the fly, possibly requester-specific).

## Outcome

1. S3 Object Lambda is presented as flexible access-layer transformation mechanism on top of S3 + access points + Lambda.
