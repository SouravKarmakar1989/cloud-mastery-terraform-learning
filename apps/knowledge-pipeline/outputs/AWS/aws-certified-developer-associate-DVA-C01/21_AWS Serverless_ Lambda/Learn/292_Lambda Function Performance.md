# Lambda Function Performance

## Pointwise No-Loss Summary

1. Lecture focuses on performance-impacting Lambda configuration areas.
2. Key topics: memory-to-CPU scaling, timeout, execution context reuse, and /tmp storage behavior.

## Memory and CPU Relationship

1. Lambda memory can be increased up to 10 GB range in 1 MB increments.
2. More memory gives more CPU capacity.
3. vCPU is not configured directly; it scales with memory.
4. Around 1,792 MB memory corresponds to about one full vCPU equivalent.
5. Above that, multi-threading may be needed to leverage additional CPU effectively.
6. For CPU-bound workloads, increasing memory is the primary performance lever.

## Timeout

1. Default timeout is 3 seconds.
2. Maximum timeout is 900 seconds (15 minutes).
3. Workloads above 15 minutes are generally better suited for other services (for example ECS/Fargate/EC2 patterns).

## Execution Context Reuse

1. Lambda runtime maintains execution context for some time between invocations.
2. Reuse can preserve initialized clients/connections and reduce repeated startup overhead.
3. Best practice is to initialize expensive dependencies outside handler when possible.
4. Examples include DB connections, HTTP clients, SDK clients.

## Good vs Bad Initialization Pattern

1. Inefficient pattern: connect to database inside handler on every invocation.
2. Better pattern: initialize DB connection outside handler so warm invocations reuse it.
3. This is highlighted as exam-relevant reasoning.

## /tmp Storage

1. Lambda provides temporary disk space at /tmp (up to 10 GB in lecture framing).
2. Useful for temporary file operations during execution.
3. Content may persist across warm invocations in reused execution context.
4. /tmp is not permanent durable storage.
5. For persistence, use durable service such as S3.
6. For encryption of temp data, app-level encryption strategy with KMS data keys is required (no simple toggle noted in lecture).

## Overall Takeaway

1. Performance tuning is mostly memory sizing + smart initialization placement + timeout hygiene.
2. Reused execution context is a major practical optimization.
