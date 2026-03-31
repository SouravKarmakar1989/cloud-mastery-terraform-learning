# Cost Breakdown: iaas/asg

## Components
- EC2 instances in ASG: billed per node-hour by instance type.
- EBS volumes per node: GB-month (+ IOPS/throughput if provisioned).
- CloudWatch metrics/alarms for scaling: metric/alarm charges.
- Data transfer and load balancer integration costs (if attached).

## Cost Drivers
- min_size / desired_capacity / max_size
- scaling policy behavior and traffic patterns
- instance family and purchase option (On-Demand/Spot)

## Pre-Deploy Cost Checklist
1. Set min/desired/max with realistic demand profile.
2. Decide On-Demand vs mixed Spot strategy.
3. Estimate average and peak node-hours.
4. Include per-instance storage costs.
5. Include associated load balancer and data transfer costs.
