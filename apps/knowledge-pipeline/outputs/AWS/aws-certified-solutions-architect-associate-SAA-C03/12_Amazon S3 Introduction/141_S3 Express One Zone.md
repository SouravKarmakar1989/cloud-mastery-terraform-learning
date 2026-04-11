# S3 Express One Zone

## Pointwise No-Loss Summary

1. S3 Express One Zone is presented as a distinct high-performance storage class.
2. It differs from other classes because it uses directory buckets rather than standard S3 buckets.

## Architecture Characteristics

1. Data is stored in a single availability zone chosen by user.
2. Unlike standard multi-AZ S3 bucket design, this is single-AZ placement.
3. This enables very high throughput and low latency profile:
   - hundreds of thousands of requests per second,
   - single-digit millisecond latency.

## Performance/Cost Positioning

1. Claimed around 10x performance versus S3 Standard.
2. Claimed around 50% lower cost.

## Durability/Availability Tradeoff

1. Durability remains good.
2. Availability is lower than multi-AZ alternatives because storage is single AZ.
3. AZ outage/problem directly impacts this storage class.

## Design Goal and Use Cases

1. Enables co-location of compute and storage in same AZ.
2. Co-location can reduce latency and possibly networking costs.
3. Mentioned use cases:
   - latency-sensitive applications,
   - data-intensive workloads,
   - AI/ML training,
   - financial modeling,
   - media processing,
   - high-performance computing.
4. Mentioned service integrations include SageMaker model training, Athena, EMR, and Glue.

## Outcome

1. Lecture frames S3 Express One Zone as specialized single-AZ, high-performance option for tightly coupled compute-storage workloads.
