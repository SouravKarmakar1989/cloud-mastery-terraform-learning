# Introduction to NoSQL Databases

## Pointwise No-Loss Summary

1. Lecture explains why NoSQL emerged for flexible schema and massive scale.
2. Historical framing uses Amazon product-expansion example.

## Schema Rigidity Problem

1. Relational schema works well when records share same structure.
2. As product diversity increases, rigid schema becomes awkward.
3. Different item types require different attributes that may not fit one table shape.

## NoSQL Core Characteristics

1. NoSQL = not only SQL.
2. Non-relational model with flexible item structures.
3. Supports document/key-value/graph-style organization patterns.
4. Designed for horizontal scalability and large throughput.
5. Often emphasizes eventual consistency tradeoffs for scale/performance.

## DynamoDB Framing

1. DynamoDB is AWS managed NoSQL service.
2. Data is spread across backend partitions/nodes managed by AWS.
3. Capacity scales by adding/removing backend partitions transparently.
4. Data is replicated across multiple AZs for durability/fault tolerance.

## Node/Partition Abstraction

1. Users do not provision or manage nodes directly.
2. AWS handles partitioning, scaling, replication, and backend distribution.

## Consistency Note

1. Distributed replication can introduce eventual consistency behavior in certain read paths.

## Key Takeaway

1. NoSQL systems trade rigid schema and some consistency semantics for flexibility, elasticity, and high-scale performance.
