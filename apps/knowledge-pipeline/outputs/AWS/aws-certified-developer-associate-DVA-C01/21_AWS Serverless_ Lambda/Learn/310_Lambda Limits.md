# Lambda Limits

## Pointwise No-Loss Summary

1. Lecture highlights exam-relevant Lambda limits (regional context).
2. Limits grouped across execution and deployment dimensions.

## Execution-Oriented Limits Mentioned

1. Memory allocation range:
   - 128 MB to 10 GB.
2. Memory increments mentioned in lecture context.
3. CPU scales with memory.
4. Maximum execution time:
   - 900 seconds (15 minutes).
5. Environment variables total size:
   - 4 KB.
6. /tmp temporary storage:
   - up to 10 GB.
7. Account-level concurrent executions:
   - default 1000 (can request increase).

## Deployment-Oriented Limits Mentioned

1. Max compressed deployment zip:
   - 50 MB.
2. Max uncompressed package size:
   - 250 MB.

## Practical Decision Guidance

1. If workload needs exceed Lambda limits (for example much more RAM or >15 min runtime), choose different compute service pattern.
2. Large transient files should use /tmp working space where appropriate.

## Overall Takeaway

1. Knowing hard limits is essential for both architecture choices and exam scenario elimination.
