# SSE with Customer-Provided Keys (SSE-C)

## Pointwise No-Loss Summary

1. SSE-C uses customer-supplied encryption keys in each request.
2. S3 performs encryption/decryption operations but does not persist customer key material.

## Processing Characteristics

1. Client provides key with put/get request path.
2. S3 encrypts object at rest using supplied key context.
3. S3 stores derived/key-reference material needed for validation workflow, not the raw customer-provided key itself.

## Control and Responsibility

1. Customer fully owns key lifecycle outside S3 service:
   - key generation,
   - secure storage,
   - rotation,
   - retrieval for decryption workflows.
2. Lost key material implies data cannot be decrypted/recovered through S3 alone.

## Comparative Positioning

1. Highest key custody control among SSE options.
2. Adds operational overhead versus SSE-S3 and SSE-KMS.

## Outcome

1. Learner understands SSE-C as customer-custody at-rest encryption model with strict key-management accountability.
