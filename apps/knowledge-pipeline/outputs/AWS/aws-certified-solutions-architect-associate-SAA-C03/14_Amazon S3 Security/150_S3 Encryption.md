# S3 Encryption

## Pointwise No-Loss Summary

1. S3 object encryption options are introduced with exam-focused comparison.
2. Four methods covered:
   - SSE-S3,
   - SSE-KMS,
   - SSE-C,
   - client-side encryption.

## SSE-S3 (Server-Side Encryption with S3-Managed Keys)

1. Encryption key is handled/owned/managed by AWS.
2. Customer does not access key material.
3. Encryption type is AES-256.
4. Request header uses x-amz-server-side-encryption: AES256.
5. SSE-S3 is enabled by default for new buckets/objects.

## SSE-KMS (Server-Side Encryption with KMS Keys)

1. Uses AWS KMS keys (customer-managed control model).
2. Benefits:
   - key control via KMS,
   - key usage auditing via CloudTrail.
3. Request header uses x-amz-server-side-encryption: aws:kms.
4. Object reads require both:
   - S3 object access permission,
   - permission to use the KMS key.
5. Throughput caveat:
   - KMS API calls (GenerateDataKey/Decrypt) count against KMS quotas,
   - very high S3 throughput may hit KMS request limits unless quotas are adjusted.

## SSE-C (Server-Side Encryption with Customer-Provided Keys)

1. Customer manages key outside AWS.
2. Key is sent with each request in HTTP headers.
3. S3 does not persist customer key after use.
4. HTTPS is required.
5. Same customer key must be supplied again for decryption/read.

## Client-Side Encryption

1. Client encrypts data before upload.
2. Client decrypts after download.
3. Key lifecycle is fully managed outside S3.
4. Client-side encryption libraries can simplify implementation.

## Encryption in Transit

1. In-transit encryption uses TLS/SSL (HTTPS endpoint).
2. HTTP endpoint is not encrypted in transit.
3. HTTPS is recommended for secure data transport.
4. SSE-C specifically requires HTTPS.

## Enforcing HTTPS with Bucket Policy

1. Bucket policy can deny operations when aws:SecureTransport is false.
2. This blocks non-encrypted HTTP requests and enforces TLS usage.

## Outcome

1. Lecture distinguishes at-rest encryption choices and in-transit enforcement patterns for S3 security design and exam scenarios.
