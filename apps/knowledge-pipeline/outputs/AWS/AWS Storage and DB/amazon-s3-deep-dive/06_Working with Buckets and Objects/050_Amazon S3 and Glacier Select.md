# Amazon S3 and Glacier Select

## Pointwise No-Loss Summary

1. S3 Select and Glacier Select enable querying subsets of object data without retrieving entire objects.
2. Primary benefits:
   - reduced transferred data,
   - faster analytics workflows,
   - lower transfer/request cost impact.

## Problem Framing in Lesson

1. Without Select, full large object retrieval is required even for small needed subset.
2. This increases transfer volume and cost unnecessarily.

## Select-Based Approach

1. Use SQL select expressions to retrieve only needed rows/columns/content subset.
2. Data filtering occurs close to storage side before returning results.

## Format and Compression Notes Mentioned

1. Supported data examples called out include:
   - CSV,
   - JSON,
   - Apache Parquet.
2. Compressed files (for example gzip/bzip2) are discussed as usable in this context.

## Constraints Highlighted

1. Query command focus is SQL SELECT expression style.
2. Select behavior has tier/class constraints:
   - objects in certain archive/deep archive states are not eligible for this query style,
   - reduced redundancy class also noted as unsupported in this context.

## Outcome

1. Learner understands Select services as targeted-data extraction tools for large-object efficiency.
