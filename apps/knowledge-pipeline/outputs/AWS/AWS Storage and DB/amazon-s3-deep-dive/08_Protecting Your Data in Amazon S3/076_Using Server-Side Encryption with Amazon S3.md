# Using Server-Side Encryption with Amazon S3

## Pointwise No-Loss Summary

1. Server-side encryption (SSE) encrypts objects as they are written at rest in S3.
2. Data transfer to S3 still occurs over TLS for in-transit protection.

## SSE Processing Concept

1. Client uploads object.
2. S3 applies encryption at storage layer using selected keying mode.
3. Encrypted object is persisted at rest.
4. Envelope-encryption model protects data-encryption keys with higher-level keying hierarchy.

## SSE Options Introduced

1. SSE-S3:
   - S3-managed keys.
2. SSE-KMS:
   - KMS-managed keys with stronger policy/audit control.
3. SSE-C:
   - customer-provided keys supplied per request path.

## Positioning

1. Choice among SSE types depends on required control level, compliance obligations, and operational overhead preference.

## Outcome

1. Learner gets practical differentiation of SSE families before deep-diving each mode.
