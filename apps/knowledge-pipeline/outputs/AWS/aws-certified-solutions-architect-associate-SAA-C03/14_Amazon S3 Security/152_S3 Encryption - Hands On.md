# S3 Encryption - Hands On

## Pointwise No-Loss Summary

1. Demo creates a bucket with:
   - versioning enabled,
   - default encryption set to SSE-S3.

## Verifying Default SSE-S3 Behavior

1. Upload coffee.jpg.
2. Object details confirm server-side encryption with Amazon S3 managed keys (SSE-S3).

## Per-Object Encryption Override

1. Editing object encryption creates a new object version.
2. Demo overrides default encryption for object to SSE-KMS.
3. KMS key selection options shown:
   - provide key ARN,
   - choose from available keys.
4. Demo uses default AWS managed KMS key aws/s3 (no custom key creation).
5. After save, versions view shows two versions.
6. Current version confirms SSE-KMS with selected key.

## Upload-Time Encryption Selection

1. Upload flow can also set encryption per object from Properties section.
2. Options shown include:
   - use bucket default,
   - SSE-S3,
   - SSE-KMS,
   - DSSE-KMS.

## Bucket Default Encryption Settings

1. In bucket Properties, default encryption can be edited between:
   - SSE-S3,
   - SSE-KMS,
   - DSSE-KMS.
2. When using SSE-KMS, bucket key option is available to reduce KMS API cost.
3. Bucket key is enabled by default in shown flow.

## Console Scope Clarification

1. SSE-C is not configurable via S3 console (CLI/API path).
2. Client-side encryption is handled outside AWS and not declared as S3 console encryption mode.

## Outcome

1. Hands-on demonstrates bucket-default, upload-time, and object-level encryption control plus versioning impact of encryption changes.
