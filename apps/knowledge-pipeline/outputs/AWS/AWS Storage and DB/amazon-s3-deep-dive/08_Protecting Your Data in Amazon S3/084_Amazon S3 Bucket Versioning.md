# Amazon S3 Bucket Versioning

## Pointwise No-Loss Summary

1. Versioning stores multiple versions of same object key in a bucket.
2. It protects against accidental overwrite and accidental delete scenarios.

## Core Behavior

1. Enabling versioning causes new writes of same key to create new version IDs instead of replacing prior data permanently.
2. Earlier versions remain recoverable unless explicitly removed.

## Configuration Notes

1. Versioning is enabled at bucket level.
2. Once enabled, it cannot be fully disabled back to never-versioned state; it can be suspended.
3. Suspended state affects future versioning behavior but does not remove existing versions.

## Operational Value

1. Supports rollback/recovery workflows.
2. Works with lifecycle policies for managing non-current versions and storage-cost controls.

## Outcome

1. Learner understands versioning as fundamental resilience control for object-history retention.
