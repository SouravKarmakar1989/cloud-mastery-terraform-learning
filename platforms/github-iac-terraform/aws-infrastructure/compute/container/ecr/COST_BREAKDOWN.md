# Cost Breakdown: container/ecr

## Components
- Private repository storage (GB-month).
- Data transfer out from ECR.
- Image scanning charges (if enhanced scanning mode is enabled separately).

## Pre-Deploy Cost Checklist
1. Estimate image size and retention horizon.
2. Estimate image pull volume and regions.
3. Define image lifecycle policy to limit stale image storage.
