# Demo: Configure Multi-AZ RDS and Test Failover with Reboot

## Pointwise No-Loss Summary

1. Demo converts existing single-AZ RDS instance to Multi-AZ deployment.
2. Then tests failover using reboot-with-failover action.
3. Key validation is primary/secondary AZ role swap while endpoint remains stable.

## Convert to Multi-AZ

1. Select existing RDS instance.
2. Choose Actions -> Convert to Multi-AZ deployment.
3. Decide timing:
   - apply now,
   - or during maintenance window.
4. Demo applies conversion immediately (non-production demo context).
5. Standby instance is created in different AZ.

## Inspect Multi-AZ Configuration

1. Instance overview confirms Multi-AZ enabled.
2. Configuration view shows:
   - primary AZ,
   - secondary/standby AZ.
3. Standby instance is not separately shown as independent user-managed DB entry in same way as primary.

## Test Failover

1. Use Actions -> Reboot and select reboot with failover.
2. Wait for failover process completion (typically minutes).
3. Console AZ display may lag and update after additional time.

## Post-Failover Result

1. Former standby becomes new primary.
2. Former primary becomes secondary.
3. Endpoint/DNS name remains unchanged.
4. Client applications using endpoint continue without endpoint reconfiguration.

## Practical Takeaway

1. Multi-AZ failover is endpoint-stable and designed for resilience during instance/AZ failure events.
