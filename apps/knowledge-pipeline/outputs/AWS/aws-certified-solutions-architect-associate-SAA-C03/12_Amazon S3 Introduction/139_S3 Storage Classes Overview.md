# S3 Storage Classes Overview

## Pointwise No-Loss Summary

1. Lecture introduces major Amazon S3 storage classes and exam relevance.
2. Listed classes:
   - S3 Standard (General Purpose),
   - S3 Infrequent Access,
   - S3 One Zone-Infrequent Access,
   - Glacier Instant Retrieval,
   - Glacier Flexible Retrieval,
   - Glacier Deep Archive,
   - S3 Intelligent-Tiering.
3. Object storage class can be chosen at creation, changed manually later, or moved automatically via lifecycle rules.

## Durability vs Availability

1. Durability means likelihood of object loss.
2. S3 durability is presented as 11 nines (99.999999999%).
3. Example interpretation: with 10 million objects, expected loss of one object roughly once every 10,000 years.
4. Durability is stated as same across S3 storage classes.
5. Availability means how often service is ready/responding.
6. Availability varies by class (example: S3 Standard 99.99%; around 53 minutes/year not available).

## Class-by-Class Characteristics

1. S3 Standard:
   - frequent access,
   - low latency/high throughput,
   - can sustain two concurrent facility failures,
   - use cases: big data analytics, mobile/gaming, content distribution.
2. S3 Standard-IA:
   - infrequent access with rapid retrieval,
   - lower storage cost than Standard,
   - retrieval cost applies,
   - availability 99.9%,
   - use cases: disaster recovery and backups.
3. S3 One Zone-IA:
   - single AZ storage,
   - data can be lost if AZ is destroyed,
   - availability 99.5%,
   - use cases: secondary backup copies, recreatable data.

## Glacier Family

1. Glacier classes target low-cost archival/backup with retrieval cost model.
2. Glacier Instant Retrieval:
   - millisecond retrieval,
   - for data accessed occasionally (example: quarterly),
   - minimum storage duration 90 days.
3. Glacier Flexible Retrieval (renamed from older Glacier naming):
   - expedited: 1-5 minutes,
   - standard: 3-5 hours,
   - bulk: 5-12 hours (free),
   - minimum storage duration 90 days.
4. Glacier Deep Archive:
   - very long-term lowest-cost storage,
   - standard retrieval about 12 hours,
   - bulk retrieval about 48 hours,
   - minimum storage duration 180 days.

## Intelligent-Tiering

1. Automatically moves objects based on access patterns.
2. Includes small monthly monitoring and auto-tiering fee.
3. No retrieval charges.
4. Tier model described:
   - Frequent Access tier (default, automatic),
   - Infrequent Access tier (for objects not accessed around 30 days),
   - Archive Instant Access tier (around 90+ days not accessed),
   - optional Archive Access tier (configurable 90 to 700+ days),
   - optional Deep Archive Access tier (configurable 180 to 700+ days).

## Outcome

1. Lecture provides conceptual comparison of durability, availability, latency/retrieval behavior, and cost posture across storage classes.
