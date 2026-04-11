# Lambda Environment Variables

## Pointwise No-Loss Summary

1. Lambda supports environment variables as key/value string pairs.
2. Environment variables allow behavior changes without modifying function code.
3. Values are available to function runtime during execution.

## Core Concept

1. Environment variables externalize runtime configuration.
2. Lambda service also provides system environment variables.
3. This pattern is common across application development workflows.

## Security and Encryption Note

1. Environment variables can hold sensitive values.
2. Encryption can be applied using KMS.
3. Secrets can use:
   - AWS-managed Lambda service key,
   - customer-managed KMS key.

## Lecture Direction

1. Next hands-on demonstrates practical use of environment variables.
2. Encryption deep dive is deferred to security-focused section.
