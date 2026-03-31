# Cost Breakdown: networking/elb-gwlb

## Components
- GWLB hourly charge.
- GLCU usage based on flows and bytes inspected.
- Appliance fleet costs behind GWLB target group.

## Pre-Deploy Cost Checklist
1. Estimate traffic flows and inspection throughput.
2. Estimate appliance EC2 requirements and autoscaling policy.
3. Include cross-AZ traffic implications.
