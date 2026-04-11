# S3 Pre-signed URLs

## Pointwise No-Loss Summary

1. Pre-signed URLs provide temporary controlled access to S3 objects.
2. URLs can be generated via console, CLI, or SDK.
3. URLs include expiration.
4. Mentioned expiration limits:
   - console: up to 12 hours,
   - CLI: up to 168 hours.

## Permission Model

1. Recipient of pre-signed URL inherits permissions of URL generator for allowed operation (GET/PUT).

## Core Use Case Pattern

1. Keep bucket/object private.
2. Generate temporary URL for specific object access.
3. Share URL externally for bounded-time download/upload access.

## Example Use Cases Mentioned

1. Logged-in premium user downloads private video.
2. Dynamic user lists get time-bound access links.
3. Temporary upload permission to precise bucket location while bucket stays private.

## Outcome

1. Pre-signed URLs are presented as standard secure mechanism for temporary object access without making buckets public.
