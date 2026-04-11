# Using CloudFront to Serve Data to Customers

## Pointwise No-Loss Summary

1. CloudFront improves S3 content-delivery performance by serving from nearby edge caches.
2. Users geographically far from source bucket benefit most from CDN edge proximity.

## Delivery Behavior

1. Request goes to nearest edge location.
2. Cached content serves immediately when available.
3. Cache miss fetches from S3 origin, then stores at edge for subsequent requests.

## Performance Benefit

1. Reduces repeated long-haul requests to single origin region.
2. Lowers perceived latency and buffering for distributed customer populations.

## Outcome

1. Learner can apply CloudFront as primary S3 egress-performance acceleration layer for global audiences.
