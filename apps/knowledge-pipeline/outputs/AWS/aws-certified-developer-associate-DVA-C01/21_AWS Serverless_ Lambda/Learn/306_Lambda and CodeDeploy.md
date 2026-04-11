# Lambda and CodeDeploy

## Pointwise No-Loss Summary

1. Lambda integrates with CodeDeploy to automate traffic shifting between versions via aliases.
2. This builds on Lambda version + alias deployment model.
3. Lecture notes hands-on appears later through SAM-focused workflow.

## Core Deployment Concept

1. Start with alias (for example prod) pointing to current stable version.
2. Target is new Lambda version.
3. CodeDeploy adjusts alias traffic weights over time from current to target version.

## Traffic Shifting Strategies Mentioned

1. Linear:
   - increase target traffic incrementally at fixed intervals.
   - examples: Linear10PercentEvery3Minutes, Linear10PercentEvery10Minutes.
2. Canary:
   - route small initial percentage, then full switch.
   - examples: Canary10Percent5Minutes, Canary10Percent30Minutes.
3. AllAtOnce:
   - immediate full cutover.

## Rollback Safety

1. Pre-traffic and post-traffic validation hooks can be used.
2. CloudWatch alarms can signal unhealthy rollout.
3. On failure signal, CodeDeploy can rollback traffic to prior stable version.

## AppSpec Parameters Highlighted

1. Name:
   - Lambda function name.
2. Alias:
   - alias being updated.
3. CurrentVersion:
   - currently serving version.
4. TargetVersion:
   - version receiving rollout traffic.

## Operational Flow

1. CodeDeploy updates alias from CurrentVersion to TargetVersion using selected strategy.
2. Provides controlled rollout instead of manual abrupt alias switch.

## Overall Takeaway

1. CodeDeploy adds deployment orchestration, safety checks, and rollback support to Lambda version promotion.
