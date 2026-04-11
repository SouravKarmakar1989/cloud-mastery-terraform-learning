# Comparing Amazon S3 Storage Classes

## Pointwise No-Loss Summary

1. Lesson summarizes all S3 storage classes and compares them by access frequency, retrieval behavior, resiliency, and billing characteristics.
2. Recommended conceptual ordering:
   - frequent-access classes on left,
   - cold/archive classes on right.

## Quick Role of Each Class (As Summarized)

1. S3 Standard:
   - general-purpose, frequently accessed data.
2. S3 Intelligent-Tiering:
   - automatic movement across tiers based on access patterns for cost savings.
3. S3 Standard-IA:
   - less frequent access with instant retrieval.
4. S3 One Zone-IA:
   - lower cost by using one AZ (with resiliency tradeoff).
5. S3 Glacier Instant Retrieval:
   - archival-focused with immediate retrieval.
6. S3 Glacier Flexible Retrieval:
   - archival-focused with minutes-to-hours retrieval options.
7. S3 Glacier Deep Archive:
   - archival-focused with longest retrieval windows and lowest cost.

## Comparison Dimensions Highlighted

1. Durability:
   - 11 nines shown across classes.
2. Availability:
   - varies by class (highest in Standard/Intelligent-Tiering, lower in One Zone-IA).
3. AZ placement:
   - multi-AZ for most classes,
   - one-zone placement for One Zone-IA.
4. Retrieval time:
   - immediate to minutes/hours to up to days depending on class.
5. Retrieval cost:
   - absent in some classes, present in IA/Glacier classes.
6. Minimum storage duration:
   - none for Standard and Intelligent-Tiering,
   - enforced minimums for IA/Glacier classes.
7. Minimum billable object size:
   - class-dependent (examples discussed include 128 KB for some classes and smaller 40 KB for others).

## Repeated Operational Reminder

1. Storage class selection is at object level, not bucket level.
2. Objects in the same bucket can be in different classes.

## Outcome

1. Learner gets a consolidated framework to pick class by frequency, urgency, resilience requirement, and cost policy constraints.
