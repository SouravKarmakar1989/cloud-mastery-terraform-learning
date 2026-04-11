# Consumption Plan for Function App

## Pointwise No-Loss Summary

1. The video explains Function App Consumption plan.
2. Consumption plan is presented as a fully serverless hosting option.
3. Function hosts/instances are added and removed dynamically based on incoming workload.

## Benefits and Runtime Behavior Mentioned

1. Autoscaling is built in.
2. Billing occurs when function is running (pay-for-execution behavior highlighted).
3. Function execution timeout is configurable.

## Billing Factors Mentioned

1. Number of executions.
2. Execution time.
3. Memory used.

## Plan Identity and Defaults

1. Consumption is the default hosting option when creating Function App in portal.
2. It is referred to as Y1/dynamic plan type in the video.

## Scale and Hosting Limits Discussed

1. Up to 100 app service plans per region in consumption tier (as stated in demo).
2. Up to 100 Function Apps per app service plan.
3. Even though multiple Function Apps per plan are possible, recommendation given is generally one Function App per plan.
4. If multiple apps share one plan, scale activity affects all apps in that shared plan.

## When to Consider Other Plans

1. If environment scale approaches/exceeds consumption limits, consider Premium or Dedicated plans.
2. Video notes that those tiers use different planning constraints compared to region-based consumption limit handling.

## Overall Takeaway

1. Consumption plan provides dynamic serverless scale and usage-based billing.
2. Shared-plan scaling behavior and plan limits should be considered in larger environments.
3. Premium/Dedicated plans are the next option when higher capacity/control is needed.

---

