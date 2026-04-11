# Amazon S3 Standard

## Pointwise No-Loss Summary

1. S3 Standard is the general-purpose storage class for frequently accessed data.
2. It is positioned as highest-throughput option with low-latency access.
3. Availability SLA referenced: 99.99% uptime for this class.
4. Durability remains 11 nines (99.999999999%) like S3 overall object durability model.

## Write Behavior and Redundancy Model

1. When objects are uploaded, S3 writes data across multiple devices in at least three Availability Zones within the selected region.
2. Successful write confirmation (HTTP 200) indicates data is already written across required AZ redundancy before success is returned.

## Default-Class Behavior

1. If no storage class is explicitly selected during upload, object goes to S3 Standard.
2. For many workloads, this default class is sufficient, especially when high performance is needed and class-level cost optimization is not the top concern.

## Ideal Use Cases Mentioned

1. Website assets.
2. CDN/CloudFront-distributed content.
3. Video files.
4. Big-data analytics data.
5. Application and gaming data.
6. Image files.

## Selection Heuristic

1. Choose S3 Standard when objects need frequent access with low latency and high throughput.

## Outcome

1. Learner gets baseline “performance-first/default” class before moving to adaptive and lower-cost infrequent-access tiers.
