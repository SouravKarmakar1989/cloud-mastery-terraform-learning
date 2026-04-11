# AWS Transfer Family

## Pointwise No-Loss Summary

1. AWS Transfer Family provides managed file-transfer endpoints to S3/EFS using traditional transfer protocols.
2. Main value: use FTP-style workflows without direct S3/EFS native client behavior.

## Supported Protocols

1. FTP (unencrypted).
2. FTPS (FTP over SSL/TLS).
3. SFTP (secure file transfer protocol).

## Service Characteristics

1. Fully managed, scalable, and highly available.
2. Pricing model includes endpoint-hour plus data transfer charges.

## Authentication Options

1. Native service-managed user credentials.
2. External identity integration options (examples mentioned include AD, LDAP, Okta, Cognito, custom source).

## Backend Access Model

1. Service assumes IAM role permissions to access S3/EFS backend.
2. Optional custom DNS via Route 53 for endpoint naming.

## Outcome

1. Transfer Family is positioned as protocol-adapter service for enterprise file-transfer compatibility with AWS storage.
