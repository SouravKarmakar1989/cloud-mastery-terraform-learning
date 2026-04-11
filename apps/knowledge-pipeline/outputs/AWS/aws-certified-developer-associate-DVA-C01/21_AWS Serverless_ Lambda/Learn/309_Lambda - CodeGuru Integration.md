# Lambda - CodeGuru Integration

## Pointwise No-Loss Summary

1. Lambda integrates with CodeGuru Profiler for runtime performance insights.
2. Supported runtimes mentioned in lecture:
   - Java,
   - Python.

## What Integration Provides

1. Runtime profiling visibility for Lambda function behavior/performance.
2. Profiler group is associated for the Lambda function.

## Activation Path

1. Integration is enabled from Lambda console configuration flow.

## What Gets Added Automatically

1. CodeGuru profiler layer is attached as Lambda layer.
2. CodeGuru-related environment variables are configured on function.
3. Required IAM permissions are added to function role.

## IAM Permission Mentioned

1. Managed policy referenced: AmazonCodeGuruProfilerAgentAccess.

## Overall Takeaway

1. CodeGuru integration gives low-friction profiling setup for Lambda performance analysis.
