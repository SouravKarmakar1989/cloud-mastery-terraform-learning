# Lambda Destinations

## Pointwise No-Loss Summary

1. Lambda Destinations is presented as a feature introduced in late 2019.
2. Purpose is improved visibility and routing for invocation outcomes.
3. It helps route success/failure results to downstream services.

## Problem It Solves

1. With async invocations and Event Source Mapping failures, it can be difficult to track outcomes and payload details.
2. Destinations provide explicit post-processing routing for those outcomes.

## Asynchronous Invocation Destinations

1. For async invokes, destinations can be configured for:
   - success,
   - failure.
2. Supported destination targets mentioned:
   - SQS,
   - SNS,
   - Lambda,
   - EventBridge.
3. Example flow:
   - source (for example S3) invokes Lambda asynchronously,
   - success path can route to success destination,
   - failure path can route to failure destination.

## Destinations vs DLQ

1. Feature overlaps with async DLQ concept for failed events.
2. Recommendation in lecture is to prefer destinations over classic DLQ.
3. Reason: destinations support more target types and both success and failure paths.
4. DLQ is narrower (failure only, SQS/SNS style targets).
5. Both can be used together if needed.

## Event Source Mapping Destinations

1. For Event Source Mapping, destination use is for discarded event batches.
2. Applicable failure destination targets mentioned:
   - SQS,
   - SNS.
3. Example given: Kinesis batch repeatedly fails, discarded batch is routed to failure destination.
4. Benefit: avoids permanent stream processing blockage.

## SQS Event Source Mapping Note

1. When source is SQS, failure handling can be done either by:
   - Event Source Mapping failure destination,
   - DLQ configured directly on SQS queue.

## Overall Takeaway

1. Destinations provide richer and more flexible outcome routing than older DLQ-only patterns.
2. They are key for observability, recovery workflows, and downstream automation.
