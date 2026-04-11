# Deployment Slots in Function App

## Pointwise No-Loss Summary

1. The video explains deployment slots in Azure Function App.
2. Slot concept explained as separate instances living within the same Function App.
3. Each slot has its own endpoint and can be accessed independently.

## Slot Capacity Note Mentioned

1. Consumption tier supports up to 2 slots.
2. Other App Service plan tiers support more slots.

## Why Deployment Slots Are Useful

1. Enable multiple environments within the same Function App.
2. Typical use:
	- deploy new version to staging slot,
	- test there,
	- then swap with production slot.
3. Pre-warming/restart activities happen in the separate slot before production traffic is switched.
4. This reduces disruption to production traffic.
5. Rollback is faster:
	- if issues occur after swap,
	- reverse swap can restore previous stable version.
6. Compared to direct production deployment, slot swap rollback is quicker and less disruptive.

## Demo Actions Performed

1. Open deployment slots for an existing Function App.
2. Create new slot named staging.
3. Confirm slot has separate endpoint.
4. Assume new code deployed to staging.
5. Perform swap from staging to production.

## Slot Configuration Behavior Highlighted

1. Not all settings behave the same during swap.
2. In Configuration -> App settings, each setting can be marked as deployment slot setting.
3. Demo adds sample app setting (name/value example: test / slot).
4. Checkbox/toggle determines whether setting is slot-specific.

## Swap and Rollback Flow Demonstrated

1. After swap, new version serves production traffic.
2. If unexpected issue appears, perform reverse swap.
3. Reverse swap returns app to prior stable state.

## Slot Cleanup

1. If slot is no longer needed, delete the slot.
2. End state shown: only production slot remains.

## Overall Takeaway

1. Deployment slots provide safer release workflow inside a single Function App.
2. They separate staging validation from production traffic and support quick rollback via reverse swap.
3. Proper slot-setting configuration is important when controlling which app settings stay slot-specific.

