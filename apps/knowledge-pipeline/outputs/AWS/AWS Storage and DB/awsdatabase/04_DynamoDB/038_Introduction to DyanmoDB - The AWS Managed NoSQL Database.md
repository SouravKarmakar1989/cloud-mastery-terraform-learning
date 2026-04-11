# Introduction to DynamoDB - The AWS Managed NoSQL Database

## Pointwise No-Loss Summary

1. DynamoDB is fully managed, serverless, highly available NoSQL database.
2. Built for very high scale and low-latency request handling.

## Service Characteristics

1. AWS manages infrastructure, clustering, and replication.
2. Data is replicated across multiple AZs for durability.
3. Supports large-scale throughput and storage use cases.
4. Integrates with IAM, streams/event workflows, autoscaling, and storage-tier cost controls.

## Data Model Basics

1. Table contains items (item concept loosely similar to rows).
2. Items contain attributes (loosely similar to columns).
3. DynamoDB is schemaless at attribute level:
   - different items can have different attribute sets.
4. Item size has service limits (lecture mentions 400 KB per item).
5. Attributes support scalar/document/set data types.

## Primary Key Design

1. Every table must define primary key at creation.
2. Two models:
   - partition key only (simple primary key),
   - partition key + sort key (composite primary key).

## Partition Key Guidance

1. Partition key determines data distribution across partitions.
2. High-cardinality, well-distributed key values are preferred.
3. Low-cardinality keys can create hot partitions and hurt performance.

## Composite Key Benefit

1. Partition + sort key helps model grouped related records and efficient ordered queries within partition scope.

## Key Takeaway

1. DynamoDB performance and scalability depend heavily on good key design, especially partition-key cardinality and access-pattern alignment.
