# The Storage Solution That Never Fails

## Pointwise No-Loss Summary

1. Lecture focuses on S3 durability, scalability, and availability distinctions.
2. Main trust question addressed: long-term data safety and retrievability in S3.

## Durability Model

1. S3 is engineered for 11 nines durability.
2. On write, S3 stores data redundantly across multiple devices and at least three AZs before success acknowledgment.
3. Goal is preserving data integrity despite device or facility failures.

## Scale Characteristics

1. S3 backend spans enormous fleet scale.
2. Service can support extremely large customer footprints and datasets.
3. High horizontal distribution contributes to resilience and scale.

## "Culture of Durability" Areas Mentioned

1. Facility-level failure assumptions and isolation-aware placement.
2. Hardware failure handling and rereplication/repair processes.
3. Data corruption protections and integrity checks (including checksum concepts).
4. Software-change safeguards and deployment controls to prevent data-impacting bugs.
5. Operator-risk reduction through automation and least-privilege principles.

## Durability vs Availability

1. Durability and availability are different metrics.
2. Durability:
   - long-term integrity and persistence of stored data.
3. Availability:
   - service uptime and ability to access data when needed.
4. S3 availability target is discussed separately from durability target.

## Outage Context

1. Historical S3 events can affect dependent AWS services because S3 is foundational.
2. Some AWS services rely on S3 behind the scenes (example contexts discussed around dependent artifacts).

## Key Takeaway

1. S3 reliability model is multi-layered: durability engineering, availability goals, and operational controls all work together to protect customer data at cloud scale.
