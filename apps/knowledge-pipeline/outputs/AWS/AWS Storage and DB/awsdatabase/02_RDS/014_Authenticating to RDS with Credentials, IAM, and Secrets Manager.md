# Authenticating to RDS with Credentials, IAM, and Secrets Manager

## Pointwise No-Loss Summary

1. Lecture separates two IAM roles in RDS context:
   - IAM for managing RDS resources,
   - IAM database authentication for DB login path.
2. Secrets Manager is presented for secure credential storage and rotation.

## IAM for RDS Resource Administration

1. IAM controls who can create/modify/delete RDS resources.
2. Least-privilege permission model is emphasized.
3. IAM policy conditions can add constraints such as:
   - source IP restrictions,
   - MFA requirements for sensitive operations.

## IAM Database Authentication (Engine Login)

1. Can be used so clients avoid static password embedding.
2. Flow requires enabling IAM DB authentication on RDS instance.
3. Create DB user mapped for AWS auth token usage.
4. Create IAM policy/role mapping that user access path.
5. Client obtains temporary auth token via IAM-backed request.
6. Token is presented to RDS for login and is time-limited (lecture references ~15 minutes).

## Conceptual Flow (IAM Auth)

1. Client (for example EC2 workload) has IAM role permissions.
2. Client requests temporary DB auth token.
3. Token is used to authenticate to DB user configured for IAM auth.
4. Database access granted according to DB user privileges.

## Secrets Manager Integration

1. Store DB credentials in AWS Secrets Manager instead of hardcoding in client.
2. Associate secret with target RDS database.
3. Configure rotation schedule using Lambda-backed rotation workflow.
4. Credentials are rotated regularly for security.
5. Clients retrieve current secret at runtime (with IAM permission) before DB login.

## Key Takeaway

1. IAM can secure both control-plane administration and data-plane DB auth paths.
2. Secrets Manager + rotation is preferred for password lifecycle hygiene when password auth is used.
