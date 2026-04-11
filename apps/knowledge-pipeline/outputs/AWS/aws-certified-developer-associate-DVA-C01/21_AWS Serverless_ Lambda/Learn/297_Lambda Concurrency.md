# Lambda Concurrency

## Pointwise No-Loss Summary

1. Lambda scales concurrent executions automatically with request volume.
2. Concurrency limits and throttling behavior are key operational controls.
3. Lecture covers reserved concurrency, throttling behavior, async retry effects, and cold-start mitigation.

## Core Concurrency Concept

1. More invocations cause more concurrent Lambda executions.
2. Account has regional concurrency quota (lecture uses default 1000 framing).
3. Limit increases can be requested through AWS support.

## Reserved Concurrency

1. Reserved concurrency is configured per function.
2. It sets max concurrent executions that function can use.
3. Requests beyond limit are throttled.

## Throttling Behavior by Invocation Type

1. Synchronous invocation throttling returns error (HTTP 429 style behavior).
2. Asynchronous invocation throttling triggers retries and eventual failure-routing behavior (retry and DLQ/destination flow).

## Shared Account Quota Risk

1. Without per-function controls, one high-traffic function can consume most account concurrency.
2. Other functions can then be throttled even if their own traffic is moderate.
3. Reserved concurrency helps isolate and protect workloads.

## Async Queue Retry Dynamics

1. For async sources, throttled/system-error events return to internal async queue.
2. Lambda retries over extended window (lecture references up to 6 hours behavior context).
3. Backoff increases over time (exponential style up to longer intervals).

## Cold Starts and Provisioned Concurrency

1. Cold start occurs when new execution environment initializes code/dependencies.
2. First request to new environment can have higher latency.
3. Provisioned concurrency pre-allocates warm execution environments.
4. This reduces cold-start latency for traffic served by pre-provisioned capacity.
5. Provisioned concurrency can be managed with Application Auto Scaling policies.

## VPC Cold Start Note

1. Lecture references AWS improvements that reduced historical VPC-related cold-start impact.

## Overall Takeaway

1. Concurrency strategy should combine quota awareness, per-function controls, and cold-start mitigation where latency matters.
