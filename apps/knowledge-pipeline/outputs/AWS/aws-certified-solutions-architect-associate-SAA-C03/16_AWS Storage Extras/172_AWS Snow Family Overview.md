# AWS Snow Family Overview

## Pointwise No-Loss Summary

1. AWS Snow Family provides secure portable devices for data movement and edge processing.
2. Core uses:
   - migrate large datasets in/out of AWS,
   - run edge compute in constrained environments.

## Device Types Highlighted

1. Snowball Edge Storage Optimized:
   - high storage capacity (example shown ~210 TB).
2. Snowball Edge Compute Optimized:
   - lower storage, stronger compute-oriented profile (example shown ~28 TB).

## Data Transfer Motivation

1. Large transfers over network can be too slow/costly/unreliable.
2. If transfer over network takes very long (for example week+), Snow device is preferred.

## Migration Workflow

1. AWS ships physical Snow device.
2. Customer loads data locally onto device.
3. Device is shipped back to AWS.
4. AWS imports data into target service (commonly S3).

## Edge Computing Workflow

1. Snow devices can run compute at edge locations with poor/no connectivity.
2. Workloads can include pre-processing, ML inference/training-adjacent processing, media transcoding.
3. Supports running EC2 instances and Lambda functions on supported Snow devices.

## Outcome

1. Lecture frames Snow Family as physical-data-transfer and disconnected-edge-compute solution when network-only migration is impractical.
