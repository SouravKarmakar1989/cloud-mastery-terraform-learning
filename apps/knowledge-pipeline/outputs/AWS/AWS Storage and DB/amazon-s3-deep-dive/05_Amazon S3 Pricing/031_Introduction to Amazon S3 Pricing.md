# Introduction to Amazon S3 Pricing

## Pointwise No-Loss Summary

1. S3 pricing is presented around three primary drivers:
   - amount of data stored,
   - storage class selected,
   - AWS region where data is stored.
2. More stored data increases total cost.
3. Storage class selection significantly changes per-GB pricing.
4. Region choice impacts pricing because operational factors differ by region.

## Core Pricing Drivers Explained

1. Data volume:
   - S3 charges based on total GB stored in buckets.
2. Storage class:
   - frequent-access classes are higher-priced than colder archival classes,
   - long-term classes like Glacier/Deep Archive are much cheaper.
3. Region:
   - same workload can cost more/less depending on selected region.

## Example Per-GB Monthly Comparison Shared

1. S3 Standard:
   - about $0.023 per GB-month.
2. S3 Standard-IA:
   - about $0.0125 per GB-month.
3. S3 One Zone-IA:
   - about $0.01 per GB-month.
4. Glacier Instant Retrieval:
   - about $0.004 per GB-month.
5. Glacier Flexible Retrieval:
   - about $0.0036 per GB-month.
6. Glacier Deep Archive:
   - about $0.00099 per GB-month.

## Intelligent-Tiering Cost Behavior

1. Intelligent-Tiering prices align with underlying access tiers it uses.
2. Frequent tier maps to Standard-like pricing.
3. Infrequent tier maps to IA-like pricing.
4. Archive/deeper tiers map toward Glacier-like lower pricing.

## Simple Cost Formula Example

1. Monthly storage estimate:
   - stored GB x per-GB-month rate.
2. Example shown:
   - 40 GB x $0.023 = $0.92 per month.

## Volume Discounts (S3 Standard) Mentioned

1. First 50 TB uses baseline S3 Standard rate.
2. 50 TB to 499 TB gets lower per-GB rate.
3. 500 TB and above gets further reduced rate.
4. Discount note applies specifically to S3 Standard class.

## Outcome

1. Learner gets baseline model for estimating S3 storage costs and understanding why class and region strategy are key cost levers.
