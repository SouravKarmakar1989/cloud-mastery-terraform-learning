# Error Handling and Retries in Azure Functions

## Pointwise No-Loss Summary

1. The video emphasizes that proper error handling and retry strategy are essential in Function Apps.
2. Even if your code is clean, failures can still happen from dependencies and integrated services.
3. Error sources mentioned include:
	- other Azure services used as triggers/bindings,
	- Azure service-side availability issues,
	- throttling limits,
	- third-party APIs/packages/libraries,
	- incorrect parameters/values passed to service APIs.
4. The goal is clear logging and resilient execution, not just code-level correctness.

## Recommended Error Handling Practices

1. Enable Application Insights for Function App.
2. Reason given: collect error data and performance metrics for troubleshooting.
3. Use structured try/catch handling.
4. Do not rely only on a single generic catch.
5. Add specific catch blocks for expected exception types based on the code path.
6. Example context given: database interactions should consider auth/deadlock-type failure handling plus a general fallback catch.

## Retry Strategy Areas Mentioned

1. Plan retry strategy explicitly.
2. Design function processing for idempotency so duplicates can be handled safely.
3. Idempotency is called out as particularly important for Service Bus queue message processing.

## Two Retry Approaches Discussed

1. Built-in retry behavior (trigger-extension related).
2. Retry policies (runtime-level policy support from Functions runtime v3 onward).

## Built-In Retry Behavior (Trigger Extension Context)

1. Service Bus queue example is used.
2. Scenario: repeated failures on a poisoned message.
3. After exceeding configured retry count, poisoned message is moved to dead-letter queue.
4. Purpose: stop endless processing attempts of bad messages.

## Retry Policies (v3+)

1. Mentioned trigger types for policy support:
	- Timer,
	- Kafka,
	- Event Hub.
2. Policy retries function execution until one of two outcomes:
	- successful completion,
	- configured max retries exhausted.

## Fixed Delay vs Exponential Backoff

1. Fixed delay:
	- same wait time between retries (example values mentioned like 30 seconds or one minute),
	- useful to allow transient conditions to clear.
2. Motivation example:
	- if database deadlock occurs, immediate rapid retries are unlikely to help,
	- short waiting period can allow backend issue to resolve.
3. Exponential backoff (recommended in video):
	- start with small wait,
	- increase wait as retry count grows,
	- example progression discussed: 1s, 1s, 2s, 3s, and so on.
4. Benefit explained:
	- keeps early retries fast for user experience,
	- increases delay when failures persist.

## Max Retry Count Nuance (In-Memory State)

1. Retry counter is in-memory per function instance.
2. If instance crashes/restarts, retry counter state is lost.
3. Counter then restarts from zero.
4. Because of this, observed executions in logs can exceed configured max retry count.
5. Example in video: max set to 10 but logs may show 13 or 14 executions due to restart behavior.

## Configuration Example Mentioned

1. Retry policy can be configured at function attribute level.
2. Example shown uses exponential backoff retry attribute pattern.

## Overall Takeaway

1. Strong error handling improves diagnostic clarity by producing actionable logs.
2. Well-designed retry strategy improves Function App resiliency and availability.
3. Together, these practices improve overall architecture reliability when functions interact with external systems.

