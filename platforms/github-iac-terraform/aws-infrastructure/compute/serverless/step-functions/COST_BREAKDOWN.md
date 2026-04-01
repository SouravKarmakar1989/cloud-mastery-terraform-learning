# Cost Breakdown: serverless/step-functions

## Components
- State transitions (Standard workflows) OR duration/memory (Express workflows).
- Downstream service invocations (Lambda, Batch, ECS, etc.).
- CloudWatch logs for execution history.

## Pre-Deploy Cost Checklist
1. Estimate transitions per execution.
2. Estimate executions per month.
3. Validate Standard vs Express economics.
4. Include downstream service costs.
