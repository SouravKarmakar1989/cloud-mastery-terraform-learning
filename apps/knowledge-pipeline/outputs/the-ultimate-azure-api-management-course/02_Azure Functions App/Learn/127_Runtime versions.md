# Runtime Versions for Function App

## Pointwise No-Loss Summary

1. The video discusses Function App runtime versions and version management.
2. It highlights version 4 as recommended/default and version 1 as legacy/older path.
3. It also references migration urgency for apps still on version 1/2/3.

## Where to Check and Change Runtime Version

1. Runtime version appears in Function App configuration app settings.
2. Guidance in video: do not change runtime version by editing app setting directly.
3. Recommended method: use Function Runtime Settings tab.
4. If already on latest version (v4), upgrade options may not appear.
5. If on older versions (1/2/3), upgrade path to v4 should be available.

## Major and Minor Version Behavior

1. Function Apps are generally assigned major runtime version.
2. Minor updates are applied automatically when major-only targeting is used.
3. You can pin to a specific minor version if you want tighter rollout control after testing.
4. Caveat: older minor versions may be removed by Azure runtime cleanup.
5. If pinned minor is removed, app can be upgraded automatically to available newer runtime.

## Extension and Runtime Compatibility Notes

1. Runtime version and binding extension versions are described as decoupled conceptually.
2. Starting from runtime v4, minimum trigger/binding extension versions are required.
3. If compatibility issue appears, update NuGet package versions for those extensions.

## Support Lifecycle Guidance Mentioned

1. Version 2 and 3 are described as retired/out of support in the video context.
2. Implication noted: no ongoing new features/security/performance improvements for retired versions.
3. Recommendation: migrate to version 4 as soon as practical.

## Local Development Mapping Mentioned

1. In Visual Studio project files, runtime-related settings are visible.
2. Example shown includes:
	- target framework value,
	- Azure Functions runtime version value.

## Additional Notes Referenced

1. Binding extensibility model (from v2 onward) benefits mentioned:
	- runtime-binding decoupling,
	- independent versioning,
	- third-party extension support,
	- lighter execution environment.
2. Trigger/binding support matrix by runtime version is referenced in docs view.
3. Timeout limits by hosting plan are reiterated:
	- consumption default/max,
	- premium/dedicated default and higher/extended limits.

## Overall Takeaway

1. Runtime v4 is the operational target in this course context.
2. Use Function Runtime Settings for upgrades instead of direct app-setting edits.
3. Plan migrations and extension package updates together to avoid runtime compatibility and support-lifecycle issues.

---

