# RDS Security

## Pointwise No-Loss Summary

1. Lecture summarizes core RDS/Aurora security controls.

## Encryption at Rest

1. Data-at-rest encryption supported via KMS.
2. Applies to primary and replicas when configured.
3. Encryption choice is set at launch time.
4. If primary is unencrypted, encrypted replicas are not directly available.
5. To encrypt an existing unencrypted DB, use snapshot and restore into encrypted DB.

## Encryption in Transit

1. TLS in-flight encryption is available.
2. Clients should use AWS-provided TLS root certificates.

## Authentication Modes

1. Traditional username/password auth supported.
2. IAM-based DB authentication also supported.

## Network Security

1. Security groups control inbound network access.

## Host Access Note

1. No SSH access for standard managed RDS/Aurora.
2. Exception context is RDS Custom.

## Auditing

1. Audit logs can be enabled.
2. For long-term retention/analysis, logs can be exported to CloudWatch Logs.

## Outcome

1. Security model combines encryption, auth, network controls, and audit logging, with snapshot-restore pattern for retrofitting encryption.
