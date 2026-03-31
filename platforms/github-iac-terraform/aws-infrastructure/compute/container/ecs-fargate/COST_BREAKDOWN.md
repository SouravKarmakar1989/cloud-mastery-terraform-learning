# Cost Breakdown: container/ecs-fargate

## Components
- Fargate vCPU-hours.
- Fargate memory GB-hours.
- Ephemeral storage over included baseline (if configured separately).
- CloudWatch logs ingestion/storage.
- Data transfer in/out.

## Pre-Deploy Cost Checklist
1. Estimate average and peak task count.
2. Finalize task CPU/memory profile.
3. Estimate runtime schedule (24x7 vs bursty).
4. Estimate log ingestion volume.
5. Estimate outbound transfer profile.
