# Cost Breakdown: specialized/batch

## Components
- Underlying compute (Fargate or EC2) used by jobs.
- Batch job queue orchestration (no major standalone charge, but related services bill).
- Data transfer, logs, and container image pulls.

## Pre-Deploy Cost Checklist
1. Estimate vCPU-hours and memory-hours for jobs.
2. Estimate job concurrency and queue depth.
3. Include log and data transfer costs.
