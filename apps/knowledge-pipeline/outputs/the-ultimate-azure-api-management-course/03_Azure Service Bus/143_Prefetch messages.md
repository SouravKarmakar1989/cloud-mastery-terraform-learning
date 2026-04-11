# Prefetch Messages in Azure Service Bus

## Pointwise No-Loss Summary

1. The video explains Service Bus prefetch behavior and tradeoffs.
2. Prefetch is configured in SDK code, not in Azure portal queue settings.
3. SDK availability mentioned:
   - supported in .NET, Java, Python,
   - not available in JavaScript SDK at the time of recording.

## What Prefetch Does

1. Prefetch allows receiver to acquire more messages than initially requested.
2. Amount is controlled by prefetch count value.
3. Prefetch count 0 means prefetch disabled.
4. Prefetch count > 0 enables prefetch buffering.

## Buffer Behavior Explained

1. Messages are loaded into a memory prefetch buffer.
2. Application receive operations are served from that buffer.
3. Buffer is automatically refilled from queue/subscription.
4. When queue has no additional messages, receive operations drain remaining buffered messages.

## Demo Setup

1. Create Resource Group (example: RG prefetch).
2. Create Service Bus namespace (example naming includes SB prefetch + initials).
3. Region: Australia East.
4. Tier: Standard.
5. Create queue named basicq/basic queue (as used in sample).
6. Add Service Bus connection string in sample project.

## Code Scenario Used in Demo

1. Sample sends 100 messages and receives them twice.
2. Run 1:
   - prefetch count = 0 (off),
   - stopwatch measures receive duration.
3. Run 2:
   - send another 100 messages,
   - prefetch count = 10,
   - stopwatch measures receive duration.

## Observed Result

1. With prefetch off, receive duration is longer.
2. With prefetch on, receive duration is faster.
3. Demo reports several seconds of improvement (around 4 seconds faster in the shown run).
4. Conclusion from demo: prefetch improves retrieval throughput/performance.

## Reliability Caveats (Important)

1. Prefetch buffer is memory-based.
2. In receive-and-delete mode:
   - messages are removed from queue before full app processing,
   - if app crashes with messages still in prefetch buffer, those messages can be lost.
3. In peek-lock mode:
   - lock expiration timing must be considered for prefetched messages.
4. Therefore, prefetch is throughput-oriented but can reduce reliability in some processing models.

## Usage Guidance from Video

1. If strict reliability is top priority, avoid or carefully limit prefetch usage.
2. If throughput is priority, prefetch can be a useful optimization.

## Overall Takeaway

1. Prefetch can significantly speed up message consumption by buffering ahead.
2. It must be tuned from SDK code (prefetch count), not portal configuration.
3. Throughput gain comes with reliability/lock-management considerations, especially under failures.

## Cleanup Mentioned

1. Delete Resource Group at end.
