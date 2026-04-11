# Hands-On: Configure DynamoDB Capacity - Provisioned and On-Demand

## Pointwise No-Loss Summary

1. Demo edits table capacity settings and compares provisioned vs on-demand behavior.
2. It also demonstrates enabling autoscaling for provisioned mode.

## Switch Capacity Modes

1. Open existing table and edit read/write capacity settings.
2. Switch between:
   - Provisioned,
   - On-demand.
3. Notes service limits for how often mode switches are allowed in rolling time windows.

## Provisioned Capacity Configuration

1. Set explicit read/write capacity values.
2. Capacity calculator can estimate required units from:
   - item size,
   - read/write request rates,
   - consistency model.
3. Demonstration compares eventual vs strong consistency impact on required RCUs.

## Provisioned Autoscaling Demo

1. Enable autoscaling for reads and writes.
2. Configure min/max capacity boundaries.
3. Configure target utilization percentage.
4. Observe autoscaling activity reducing provisioned units when demand is low.

## On-Demand Configuration

1. Switch table to on-demand mode.
2. Optionally set maximum request-unit ceilings for guardrails.
3. Simpler operations with usage-based billing model.

## Practical Takeaway

1. Provisioned + autoscaling offers controlled/cost-tuned capacity for predictable loads.
2. On-demand offers convenience for bursty/unpredictable loads with less planning overhead.
