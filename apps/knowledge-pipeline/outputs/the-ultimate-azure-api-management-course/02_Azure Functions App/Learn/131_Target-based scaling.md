# Target-Based Scaling in Function App

## Pointwise No-Loss Summary

1. The video explains target-based scaling and positions it as improvement over incremental scaling.
2. Supported extension types mentioned:
	- Service Bus queues/topics,
	- Storage Queues,
	- Event Hub,
	- Cosmos DB extensions.

## Incremental vs Target-Based Scaling

1. Incremental model adds/removes at most one worker instance per scaling action.
2. Target-based model can add up to four instances at a time.
3. This enables faster scale response under rising backlog/load.

## Scaling Decision Basis

1. Desired instance count is calculated from event-source length and target executions per instance.
2. Calculation is handled by Azure.
3. SDK/extensions provide default target-execution values.
4. Those defaults can be tuned if needed.

## Runtime and Default-Enablement Notes

1. Runtime must be 4.3 or later for target-based scaling support.
2. Video also calls out default-enable behavior on newer 4.x runtime line (4.19+ context in narration).
3. Feature is enabled by default; disabling requires opt-out app setting with value 0 (as shown in docs reference).

## Important Behavioral Considerations

1. If max scale-out limits are overridden, target-based scaling respects those limits.
2. Best accuracy guidance in video:
	- use one target-based triggered function per Function App when possible.
3. If multiple functions in same app request scale operations:
	- requests are aggregated,
	- scale-out requests take precedence over scale-in,
	- scale-in behavior then follows resulting max-scaling logic.

## Runtime Scale Monitoring and Concurrency Notes

1. Premium plan exposes runtime scale monitoring option in Function Runtime Settings.
2. Target-based scaling supports dynamic concurrency.
3. Service Bus and Storage Queue scenarios can use concurrency app settings for this feature.
4. Concurrency details are referenced as a separate upcoming topic in the course.

## Overall Takeaway

1. Target-based scaling improves responsiveness versus incremental scaling by allowing larger step scale-out.
2. It is default-enabled on supported runtime versions and remains configurable.
3. Accurate behavior depends on trigger composition, limits configuration, and proper runtime/monitoring settings.

---

