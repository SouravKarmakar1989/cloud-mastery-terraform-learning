# Lambda SnapStart

## Pointwise No-Loss Summary

1. Lambda SnapStart improves Lambda performance up to 10x.
2. No extra cost is stated for this feature.
3. Supported runtimes mentioned: Java, Python, and .NET.

## Without SnapStart

1. Lambda invocation follows three lifecycle phases:
   - initialize,
   - invoke,
   - shutdown.
2. Initialization can take noticeable time.
3. Example given: Java initialization can be slow because runtime/environment startup is heavy.

## With SnapStart

1. Function is pre-initialized as an optimization.
2. Execution can then move faster into invoke stage.
3. Main mechanism occurs when publishing a new function version.

## Snapshot Mechanism

1. On version publish, Lambda automatically initializes the function.
2. Lambda captures a snapshot of:
   - memory state,
   - disk state.
3. Snapshot is reused for low-latency access.
4. Result is reduced cold-start style initialization overhead before invocation.

## Overall Takeaway

1. SnapStart is a Lambda optimization focused on startup latency reduction.
2. It works by reusing an initialized snapshot instead of repeating full initialization for each cold path.
