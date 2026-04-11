# Set Function App Runtime Version

## Pointwise No-Loss Summary

1. The video explains Function App runtime version configuration.
2. Major runtime versions mentioned: 4, 3, 2, and 1.
3. New Function Apps default to the latest available major version (version 4 in the video timeframe).

## Where Runtime Version Is Set

1. Runtime version is controlled in app settings via Functions extension version.
2. Example shown: changing extension version value from 4 to 3 downgrades major runtime.

## Major vs Minor Version Behavior

1. When only major version is specified, minor updates are applied automatically.
2. Reason stated: minor updates generally do not introduce breaking changes.
3. If desired, you can explicitly specify minor version for tighter control.

## Important Caveat About Pinned Minor Versions

1. Microsoft may remove older versions from the platform over time.
2. If pinned minor version is removed, Function App is upgraded to the latest available version.
3. Therefore, pinned-version users must actively monitor supported versions.

## Overall Takeaway

1. Functions extension version setting determines runtime major version.
2. Major-only configuration gives automatic minor-version updates.
3. Pinning minor versions increases control but requires ongoing version governance due to deprecation/removal behavior.

