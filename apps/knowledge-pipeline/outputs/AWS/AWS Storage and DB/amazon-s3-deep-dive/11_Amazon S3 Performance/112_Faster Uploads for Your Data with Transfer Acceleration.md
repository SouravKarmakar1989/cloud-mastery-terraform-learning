# Faster Uploads for Your Data with Transfer Acceleration

## Pointwise No-Loss Summary

1. S3 Transfer Acceleration improves long-distance upload performance by routing via nearby AWS edge locations and AWS backbone network.
2. It is most beneficial when clients are far from target S3 region.

## How It Works

1. Client uploads to acceleration endpoint.
2. Edge location receives data close to client location.
3. AWS backbone carries data to destination bucket region.

## Operational Notes

1. Requires enabling transfer acceleration on bucket.
2. Uses acceleration-specific endpoint format.
3. Has additional pricing considerations.
4. Measured gain varies by client location/path and can be validated using AWS acceleration speed test tools.

## Outcome

1. Learner can evaluate and use transfer acceleration for globally distributed ingest/upload workflows.
