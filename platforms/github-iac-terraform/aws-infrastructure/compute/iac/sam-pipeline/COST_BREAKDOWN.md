# Cost Breakdown: iac/sam-pipeline

## Components
- S3 packaging artifact storage and requests.
- Build/deploy execution costs from CI runner (external to this module).

## Pre-Deploy Cost Checklist
1. Estimate package artifact churn and retention.
2. Align S3 lifecycle to release retention policy.
