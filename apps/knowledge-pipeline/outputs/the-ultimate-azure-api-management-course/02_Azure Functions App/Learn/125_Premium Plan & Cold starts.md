# Premium Plan and Cold Starts

## Pointwise No-Loss Summary

1. The video explains Function App Premium plan behavior.
2. Demo starts by switching an existing Function App from Consumption to Premium and creating a new premium App Service plan.
3. Function App premium maps to Elastic Premium SKU (EP1/EP2/EP3).
4. Important distinction made:
	- EP* is Elastic Premium for Functions,
	- P*V* is Dedicated App Service plan and behaves differently for dynamic scaling/cost.

## Premium Plan Benefits Mentioned

1. Reduced/avoided cold starts.
2. Virtual network connectivity support.
3. Longer runtime duration compared with consumption.
4. Choice of premium instance sizes.
5. More predictable pricing model.
6. High-density allocation scenarios for multiple Function Apps.

## Billing Model Difference Mentioned

1. Premium billing is based on allocated core-seconds and memory across instances.
2. Video explicitly notes no separate execution-charge style used in consumption model.
3. Minimum active-plan cost applies regardless of function activity/idle state.

## Cold Start Concept and Why Premium Helps

1. In consumption, low/no traffic can scale app down, then startup latency appears when traffic returns.
2. That startup latency is described as cold start.
3. Premium introduces two mechanisms:
	- always ready instances,
	- pre-warmed instances.

## Always Ready vs Pre-Warmed

1. Always ready instances:
	- preallocated active instances,
	- receive traffic,
	- not dependent on immediate scaling event.
2. Pre-warmed instances:
	- standby buffer prepared in background,
	- initially do not receive traffic,
	- promoted into traffic path when load exceeds always-ready capacity.
3. After a pre-warmed instance is promoted, another pre-warmed buffer instance is prepared.

## Scale-Out Settings and Plan Math Explained

1. In Function App scale-out, always-ready instance count is configurable.
2. Video notes max always-ready count of 20.
3. Plan minimum instance count follows highest always-ready requirement among apps in same plan.
4. Example in video:
	- if app A has always-ready 5 and app B has 2,
	- plan minimum is 5.
5. This minimum affects baseline billable instances.

## Premium Scaling Behavior Notes

1. Additional instances are added as traffic grows up to configured burst/limits.
2. Unlike shared-consumption behavior discussed earlier, premium apps in same plan can scale independently.
3. Apps in same plan still share underlying VM resources.

## Runtime Duration and Operational Caveats Mentioned

1. Consumption single execution limit referenced as 10 minutes.
2. Premium default referenced as 30 minutes (to prevent runaway execution by default).
3. Runtime duration can be adjusted via host/runtime configuration (as referenced in video).
4. Important caveats mentioned:
	- platform upgrades/outages can trigger managed shutdown,
	- idle timer can stop worker after 60 minutes without new executions,
	- scaling behavior and slot swap events can terminate active execution.

## Networking and Capacity Notes Mentioned

1. Premium + VNet deployment needs adequate subnet sizing.
2. Video calls out at least 100 available IPs in subnet to support scaling.

## SKU, Memory, and Platform Notes

1. EP1/EP2/EP3 provide step-up compute/memory capacity.
2. Example note for JavaScript/Node memory behavior:
	- default runtime limits may need app-setting adjustment to use more memory.
3. For higher-memory tiers (EP2/EP3), video advises using 64-bit setting in Function App general settings.
4. Region/platform max-scale limits differ between Windows and Linux (as referenced in docs section shown).

## UI Quirk Demonstrated

1. A portal scale-out UI inconsistency is shown:
	- displayed max scale-out value may conflict with max burst,
	- toggling enforce-scale settings reveals validation error,
	- described as UI bug in demo.

## End-of-Video Action

1. Revert Function App back to Consumption.
2. Delete premium plan created for demonstration.

## Overall Takeaway

1. Premium plan is designed for predictable performance and reduced cold starts via always-ready and pre-warmed capacity.
2. Correct tuning of always-ready, pre-warmed, and burst limits is central to performance and cost control.
3. EP SKU selection, runtime settings, subnet sizing, and identity of plan type (EP vs P*V*) are key operational decisions.

---

