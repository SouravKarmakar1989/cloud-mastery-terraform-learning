# Cost Breakdown: networking/elb-nlb

## Components
- NLB hourly charge.
- NLCU usage (new/active flows, processed bytes, rule usage).
- Data processing and cross-zone transfer where enabled.

## Pre-Deploy Cost Checklist
1. Estimate concurrent flows and new connections/sec.
2. Estimate monthly processed GB.
3. Decide whether cross-zone load balancing is required.
