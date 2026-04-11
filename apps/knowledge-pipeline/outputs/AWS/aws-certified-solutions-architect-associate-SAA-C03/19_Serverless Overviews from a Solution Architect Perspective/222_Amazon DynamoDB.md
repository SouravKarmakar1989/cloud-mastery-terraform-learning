# Amazon DynamoDB

## Pointwise No-Loss Summary

1. DynamoDB is fully managed, highly available, multi-AZ replicated NoSQL database.
2. It is AWS-native/proprietary and supports transactional behavior despite non-relational model.

## Scale and Performance

1. Designed for massive scale (millions of requests/sec, very large table sizes).
2. Delivers consistent single-digit millisecond performance.
3. Integrates with IAM for security/authorization/administration.
4. No patching/maintenance provisioning burden for user.

## Data Model Basics

1. Users create tables directly (no separate DB server provisioning flow).
2. Table has primary key at creation:
   - partition key,
   - optional sort key.
3. Table holds items (rows) with attributes (column-like fields).
4. Schema can evolve easily; items can have different attribute sets.
5. Max item size is 400 KB.
6. Supports scalar, list, map, and set data types.

## Table Classes

1. Standard table class for frequent access.
2. Infrequent Access table class for less frequently accessed data.

## Capacity Modes

1. Provisioned mode:
   - plan RCU/WCU in advance,
   - can use autoscaling,
   - cost-efficient for predictable/smooth workloads.
2. On-demand mode:
   - no capacity planning,
   - pay per request,
   - more expensive but ideal for unpredictable/spiky or very low-frequency workloads.

## Outcome

1. Lecture positions DynamoDB as flexible-schema, ultra-scalable, low-latency NoSQL service with exam-critical choice between provisioned and on-demand capacity behavior.
