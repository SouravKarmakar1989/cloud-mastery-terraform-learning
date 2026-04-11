# Introduction to Amazon S3 Glacier

## Pointwise No-Loss Summary

1. Lesson explains Glacier evolution from a separate AWS service into S3-integrated storage classes.
2. Historically:
   - S3 and Glacier were treated as separate services,
   - Glacier retrieval was commonly associated with long restore times,
   - lifecycle transitions were used to move data from S3 to Glacier.
3. Current model presents Glacier as part of S3 class ecosystem.

## Glacier Family Introduced

1. S3 Glacier Instant Retrieval.
2. S3 Glacier Flexible Retrieval.
3. S3 Glacier Deep Archive.

## Concept Framing

1. Glacier classes are long-term archival-oriented storage options inside S3.
2. They provide stronger cost optimization for cold data, with retrieval-speed and policy differences by class.

## Outcome

1. Establishes Glacier as integrated S3 archival tier set, preparing for detailed breakdown of each Glacier class.
