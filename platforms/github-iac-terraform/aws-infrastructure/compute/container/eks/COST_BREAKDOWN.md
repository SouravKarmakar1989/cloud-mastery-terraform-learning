# Cost Breakdown: container/eks

## Components
- EKS control plane hourly charge per cluster.
- Worker nodes (EC2) or Fargate profile costs (if added later).
- EBS volumes for worker nodes.
- Load balancers, CloudWatch logging, and data transfer.

## Pre-Deploy Cost Checklist
1. Estimate number of clusters by environment.
2. Estimate node group size and node type.
3. Estimate ingress/load balancer footprint.
4. Estimate log ingestion and retention.
