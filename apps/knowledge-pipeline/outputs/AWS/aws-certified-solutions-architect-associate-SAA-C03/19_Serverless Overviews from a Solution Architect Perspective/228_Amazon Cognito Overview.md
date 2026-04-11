# Amazon Cognito Overview

## Pointwise No-Loss Summary

1. Cognito provides identities for web/mobile users outside IAM-native workforce/admin identity model.
2. Two major components:
   - Cognito User Pools,
   - Cognito Identity Pools (Federated Identities).

## Cognito User Pools (CUP)

1. Serverless user directory for app sign-in.
2. Supports username/email+password flows.
3. Supports password reset, phone/email verification, MFA.
4. Supports social/federated logins.
5. Integrates with API Gateway and Application Load Balancer for token validation and identity propagation to backend.

## Cognito Identity Pools

1. Exchanges trusted identity token for temporary AWS credentials.
2. Identity sources can include User Pools and external providers.
3. Allows direct AWS service access (for example S3/DynamoDB) from app clients.
4. IAM roles/policies are assigned through identity-pool mapping.
5. Supports guest/authenticated default role patterns.
6. Can apply fine-grained policy conditions by user identity.

## Fine-Grained Access Example

1. DynamoDB row-level style access can be constrained through IAM condition expressions tied to Cognito identity.

## Architectural Value

1. User Pools handle app-user authentication.
2. Identity Pools handle AWS authorization credentials for those users.
3. Combined model supports secure mobile/web auth and controlled direct AWS access patterns.

## Outcome

1. Cognito is presented as external-user identity and temporary-credential framework integrating deeply with API front doors and fine-grained data access.
