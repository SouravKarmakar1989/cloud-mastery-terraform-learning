# Lambda Event Source Mapping

## Pointwise No-Loss Summary

1. Event Source Mapping is presented as the third Lambda event processing category after synchronous and asynchronous invocations.
2. Applies to sources where Lambda must poll records.
3. Main services covered:
   - Kinesis Data Streams,
   - SQS (standard and FIFO),
   - DynamoDB Streams.

## Core Mechanism

1. Lambda creates an internal Event Source Mapping between source and function.
2. Mapping polls source for records.
3. Source returns records as batches.
4. Lambda function is invoked synchronously with batch payload.

## Two Event Source Mapping Categories

1. Streams:
   - Kinesis Data Streams,
   - DynamoDB Streams.
2. Queues:
   - SQS Standard,
   - SQS FIFO.

## Streams Behavior (Kinesis / DynamoDB Streams)

1. Event Source Mapping creates iterator per shard.
2. Processing is in order at shard level.
3. Start position options include:
   - latest/new records,
   - from beginning,
   - from specific timestamp.
4. Processed items are not removed from streams.
5. Other consumers can still read same stream data.

## Streams Throughput Controls

1. Low traffic case: use batch window to accumulate records before invoke.
2. High traffic case: process multiple batches in parallel at shard level.
3. Parallelization can go up to 10 batch processors per shard.
4. In-order guarantee under parallelization is maintained at partition-key level.

## Streams Error Handling Notes

1. Default behavior on function error is reprocessing full batch.
2. Reprocessing continues until success or record expiration.
3. A bad record can block shard progress.
4. In-order processing implies affected shard processing pauses until error resolution.
5. Mentioned control options include:
   - discard old events,
   - limit retries,
   - split batch on errors,
   - configure destination handling.

## Queues Behavior (SQS Standard / FIFO)

1. Event Source Mapping polls SQS using long polling.
2. Batch size is configurable.
3. Recommended queue visibility timeout is six times Lambda timeout.
4. For Event Source Mapping with SQS, DLQ is configured on SQS queue (not Lambda async DLQ).
5. Lambda async DLQ applies to asynchronous invocation model, not this synchronous polling model.

## FIFO vs Standard Queue Notes

1. FIFO:
   - in-order processing is supported,
   - Lambda concurrency scales with number of active message groups.
2. Standard:
   - ordering is not guaranteed,
   - Lambda scales aggressively to drain queue.

## Queue Error / Duplication Notes

1. On errors, batch items can return to queue and be regrouped differently.
2. Same item can occasionally be received more than once.
3. Idempotent processing is required.
4. After successful processing, Lambda deletes items from SQS.
5. Source queue can route repeatedly failing messages to SQS DLQ.

## Scaling Summary Mentioned

1. Kinesis/DynamoDB Streams:
   - one Lambda invocation per shard by default,
   - up to 10 concurrent batches per shard with parallelization.
2. SQS Standard:
   - scales quickly,
   - lecture mentions growth of additional consumers per minute,
   - maximum concurrent batch processing ceiling highlighted.
3. SQS FIFO:
   - scaling tied to active message groups,
   - per-group order preserved.

## Exam Note

1. Lecture emphasizes Event Source Mapping details are exam-relevant and worth revisiting.
