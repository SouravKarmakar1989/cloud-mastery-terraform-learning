# Lambda Monitoring and X-Ray Tracing - Hands On

## Pointwise No-Loss Summary

1. Hands-on demonstrates Lambda monitoring through CloudWatch metrics/logs.
2. Then enables X-Ray tracing and verifies traces in X-Ray console.

## CloudWatch Metrics in Lambda Monitor Tab

1. Open Lambda S3 function -> Monitor -> Metrics.
2. Observe charts for:
   - invocation count,
   - duration,
   - errors/success states,
   - throttles,
   - async delivery failures,
   - iterator age,
   - concurrent executions.
3. Lecture notes these are production-useful trend indicators.

## CloudWatch Logs Inspection

1. Open CloudWatch log groups/streams for Lambda function.
2. Logs show request lifecycle entries and custom prints.
3. Report lines include runtime/billing details such as:
   - duration,
   - billed duration,
   - memory size,
   - max memory used,
   - init duration when relevant.

## Enable X-Ray Active Tracing

1. In Lambda configuration -> monitoring/operations, enable active tracing.
2. If role permissions are missing, console auto-fixes by attaching required X-Ray permissions.
3. Permission summary then includes X-Ray telemetry/segment write capability.

## Generate Trace Data

1. Trigger Lambda via S3 uploads.
2. Ensure code path is successful for trace generation test.
3. Upload one or more objects to invoke Lambda.

## Verify in X-Ray Console

1. Open X-Ray service map.
2. After short delay, map shows Lambda activity path.
3. Visualization reflects request outcomes (healthy and error states as observed during tests).
4. Confirms Lambda-to-X-Ray integration is working.

## Practical Takeaway

1. CloudWatch metrics/logs plus X-Ray traces provide layered observability:
   - metrics for trend/health,
   - logs for execution detail,
   - traces for end-to-end request flow.
