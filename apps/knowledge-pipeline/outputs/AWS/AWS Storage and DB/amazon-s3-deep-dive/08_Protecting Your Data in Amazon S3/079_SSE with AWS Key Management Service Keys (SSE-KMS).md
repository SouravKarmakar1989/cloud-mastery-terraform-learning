# SSE with AWS Key Management Service Keys (SSE-KMS)

## Pointwise No-Loss Summary

1. SSE-KMS uses AWS KMS keys for S3 at-rest encryption.
2. Customer can choose between AWS-managed default key and customer-managed KMS keys.

## Core Characteristics

1. Object encryption at rest is performed by S3 using selected KMS key.
2. Data transfer still protected in transit via TLS.
3. KMS integration enables stronger policy control and auditability compared with pure SSE-S3 model.

## Key-Management Notes

1. AWS-managed default KMS key exists but has policy-control limitations.
2. Customer-managed KMS keys provide full control over key policies, rotation configuration, and aliasing.
3. KMS keys incur service cost considerations (for example CMK/key management pricing).

## Operational Implication

1. Accessing KMS-encrypted objects requires both S3 permissions and relevant KMS key-use permissions.

## Outcome

1. Learner understands SSE-KMS as higher-control encryption mode with additional governance and permission considerations.
