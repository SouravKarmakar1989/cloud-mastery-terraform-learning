# Lambda Monitoring and X-Ray Tracing

## Pointwise No-Loss Summary

1. Lecture covers Lambda observability across logs, metrics, and traces.
2. CloudWatch Logs integration stores Lambda execution logs automatically when permissions are present.
3. CloudWatch Metrics provides operational KPIs for Lambda behavior.
4. X-Ray tracing can be enabled for deeper request-path visibility.

## CloudWatch Logs Integration

1. Lambda writes execution logs to CloudWatch Logs.
2. Requires execution role permissions to write logs.
3. Lambda basic execution role includes required log permissions.

## CloudWatch Metrics Mentioned

1. Invocations.
2. Duration.
3. Concurrent executions.
4. Error counts / success rate indicators.
5. Throttles.
6. Async delivery failures.
7. Iterator age for stream-based sources (Kinesis/DynamoDB Streams lag signal).

## X-Ray Integration

1. Enable active tracing in Lambda configuration.
2. Lambda runs X-Ray daemon integration for tracing.
3. Application code should use X-Ray SDK for trace instrumentation.
4. Execution role must allow X-Ray writes.
5. Managed policy noted: AWSXRayDaemonWriteAccess.

## Environment Variables Mentioned for X-Ray Context

1. Lecture highlights Lambda exposes X-Ray-related environment variables.
2. Important one called out includes daemon address variable used by runtime/components.

## Overall Takeaway

1. Logs answer what happened in function execution.
2. Metrics answer how function behaves over time.
3. Tracing answers how calls flow across components and where latency/errors occur.
