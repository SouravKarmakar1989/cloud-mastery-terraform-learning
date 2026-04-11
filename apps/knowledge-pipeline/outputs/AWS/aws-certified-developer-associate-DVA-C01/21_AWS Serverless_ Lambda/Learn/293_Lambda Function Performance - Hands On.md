# Lambda Function Performance - Hands On

## Pointwise No-Loss Summary

1. Hands-on demonstrates memory/CPU coupling, timeout behavior, and initialization placement impact.
2. Uses lambda-config-demo function to test practical outcomes.

## Inspect General Configuration

1. Open Lambda configuration -> General configuration.
2. Memory can be adjusted from low values up to max limit.
3. CPU scales proportionally with memory; CPU cannot be tuned independently.
4. Cost implication noted: over-allocating memory increases cost.

## Timeout Demonstration

1. Keep timeout at 3 seconds.
2. Add simulated work using sleep(2): invocation succeeds.
3. Increase simulated work to sleep(5): invocation fails with timeout at 3 seconds.
4. Increase timeout to 6 seconds: same 5-second workload succeeds.
5. Operational guidance: set timeout intentionally, not blindly to maximum, to fail fast on stuck code paths.

## Initialization Placement Demonstration

1. Simulate expensive DB connection with sleep(3).
2. Case A: connection call inside handler:
   - every invocation pays 3-second setup cost.
3. Case B: connection initialized outside handler:
   - first invoke pays init cost,
   - subsequent warm invokes are much faster.
4. Logs/metrics show distinction between init duration and handler duration.

## Practical Takeaway

1. Memory controls CPU and therefore compute speed.
2. Timeout must align to expected execution profile.
3. Moving expensive initialization outside handler significantly improves warm-invocation latency.
