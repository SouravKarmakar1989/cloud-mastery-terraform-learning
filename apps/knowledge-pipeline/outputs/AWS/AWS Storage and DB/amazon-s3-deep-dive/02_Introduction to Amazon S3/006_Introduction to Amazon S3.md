# Introduction to Amazon S3

## Pointwise No-Loss Summary

1. Amazon S3 stands for Simple Storage Service.
2. It is one of the earliest publicly available AWS services.
3. S3 is object storage.
4. It supports storing any amount of data, from small sets to very large-scale datasets.
5. Service is presented as effectively unlimited at practical cloud scale.

## Core Characteristics Introduced

1. Durability:
   - S3 provides 11 nines durability target.
   - data is expected to remain intact and retrievable after upload.
2. Scalability:
   - S3 is available across AWS regions globally.
   - can scale to very large workloads.
   - can extend through hybrid options like Outposts contexts.

## Object Storage Basics

1. S3 stores data as objects (not block-level file-system semantics).
2. Each object is self-contained with associated metadata.
3. Objects are accessed by unique identifier/key.
4. Object model avoids strict traditional file-system hierarchy constraints.

## Why S3 as an IaaS Storage Service

1. Customers consume storage without managing storage infrastructure operations.
2. AWS manages maintenance and backend durability mechanics.
3. Organizations can focus on business outcomes instead of storage hardware management.

## Shared Responsibility Context

1. AWS manages storage platform infrastructure.
2. Customer manages their data and configuration choices:
   - encryption,
   - versioning,
   - replication,
   - access/security setup.

## Common File Types Mentioned

1. Text, video, archives, backups, audio, config files, images, and documents.

## Not Ideal / Not Intended Use Cases Mentioned

1. Running application code execution directly.
2. Operating-system/software-install execution model.
3. Block-level storage workloads.
4. Certain low-latency high-performance compute patterns (where other services may fit better).
5. Transactional relational database engine runtime storage path (use dedicated DB services for that).

## Key Takeaway

1. S3 is highly durable, massively scalable object storage with broad use cases and clear boundaries versus compute/database/block-storage services.
