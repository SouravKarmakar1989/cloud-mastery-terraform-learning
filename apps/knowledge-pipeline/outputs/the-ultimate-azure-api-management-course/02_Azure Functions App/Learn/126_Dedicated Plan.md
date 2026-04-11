# Dedicated Plan for Function App

## Pointwise No-Loss Summary

1. The video explains hosting Function App on a Dedicated plan.
2. Demo starts by creating a dedicated App Service plan in a new Resource Group.

## Dedicated App Service Plan Setup in Demo

1. Create Resource Group (example wording: RG dedicated).
2. Create Windows App Service plan (example name: ASP dedicated) in Australia East.
3. During tier selection, multiple App Service tiers are shown.
4. Video guidance on tiers:
	- Basic is minimum tier for development/testing workloads.
	- Standard and above are positioned for production workloads.
5. Demo uses Basic tier.

## Function App Creation on Dedicated Plan

1. Create Function App in dedicated Resource Group.
2. Use .NET 6 and Australia East.
3. Keep OS as Windows.
4. In hosting selection, choose App Service plan option and select created dedicated plan.
5. This places Function App on dedicated App Service plan hosting model.

## Billing and Runtime Notes Mentioned

1. Dedicated plan billing is based on the plan itself.
2. Cost applies regardless of number of apps/web apps inside that plan.
3. This is contrasted with Consumption/Premium-style billing behavior.
4. Always On should be configured for Function App on dedicated plan.

## Scaling and Isolation Options Mentioned

1. Scaling can be manual or automatic depending on App Service plan configuration.
2. For deeper isolation, App Service Environment (ASE) is mentioned.
3. ASE can host App Service plans in a more isolated environment.

## Cleanup Mentioned

1. Delete dedicated Resource Group at end to remove created resources.

## Overall Takeaway

1. Dedicated plan hosting uses App Service plan capacity model rather than execution-based billing.
2. Tier choice (Basic vs Standard+) aligns to dev/test vs production workload intent in the video.
3. Always On and plan-level scaling strategy are important operational considerations in dedicated hosting.

---

