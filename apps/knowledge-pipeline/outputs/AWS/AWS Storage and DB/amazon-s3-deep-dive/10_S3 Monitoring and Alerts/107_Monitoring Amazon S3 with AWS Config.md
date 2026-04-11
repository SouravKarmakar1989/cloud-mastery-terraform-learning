# Monitoring Amazon S3 with AWS Config

## Pointwise No-Loss Summary

1. AWS Config continuously records resource configuration history and relationships, including S3 resources.
2. It provides timeline-based change visibility useful for troubleshooting and governance.

## What Config Adds for S3

1. Resource configuration history over time.
2. Detection of drift/non-compliant settings via Config rules.
3. Compliance dashboards identifying which buckets violate defined policy expectations.

## Rule-Based Governance

1. Managed rules can evaluate common S3 controls (examples discussed include logging/public access/encryption/TLS requirements).
2. Custom rules can be built when organization-specific requirements are not covered.

## Operational Value

1. Faster root-cause investigation of configuration changes.
2. Continuous policy compliance posture monitoring for S3 estates.

## Outcome

1. Learner understands AWS Config as compliance/troubleshooting layer for S3 configuration governance.
