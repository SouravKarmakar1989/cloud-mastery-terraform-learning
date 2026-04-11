# S3 Pre-signed URLs - Hands On

## Pointwise No-Loss Summary

1. Demo uses object in private bucket to show difference between public URL and pre-signed URL access.

## Validating Private Object

1. Direct Object URL returns AccessDenied.
2. Using console Open still works because it uses a credential-signed URL.

## Generating Shareable Pre-signed URL in Console

1. From Object actions, choose Share with pre-signed URL.
2. Set short expiration (example: 5 minutes).
3. Create URL.
4. Shared URL successfully opens object despite private bucket/object settings.

## Outcome

1. Hands-on confirms temporary delegated access behavior of pre-signed URLs from console workflow.
