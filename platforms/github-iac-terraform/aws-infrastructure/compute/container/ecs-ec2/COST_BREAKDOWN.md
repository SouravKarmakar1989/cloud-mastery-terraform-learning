# Cost Breakdown: container/ecs-ec2

## Components
- EC2 instances hosting ECS cluster.
- EBS volume cost per node.
- ECS control plane (no direct ECS charge for EC2 launch type).
- CloudWatch logs and data transfer.

## Pre-Deploy Cost Checklist
1. Estimate required node count and instance class.
2. Estimate utilization and scaling profile.
3. Include EBS and transfer costs.
4. Compare with Fargate cost for breakeven analysis.
