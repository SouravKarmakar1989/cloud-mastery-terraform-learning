# Cost Breakdown: networking/elb-alb

## Components
- ALB hourly charge.
- LCU usage (new/active connections, rule evaluations, bytes processed).
- Cross-zone data transfer (if applicable).
- TLS certificate cost components (if using ACM private CA).

## Pre-Deploy Cost Checklist
1. Estimate requests/sec and active connections.
2. Estimate processed bytes/GB per month.
3. Estimate number of listener rules and evaluations.
4. Validate cross-zone balancing requirements.
