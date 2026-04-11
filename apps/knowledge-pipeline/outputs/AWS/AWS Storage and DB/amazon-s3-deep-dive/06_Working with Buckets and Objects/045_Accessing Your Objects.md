# Accessing Your Objects

## Pointwise No-Loss Summary

1. Lesson covers S3 object access URL styles and access scopes.
2. Emphasis includes current URL recommendations and cross-account/public access concepts.

## URL Styles Discussed

1. Virtual-hosted-style URL:
   - bucket name in hostname with region endpoint.
2. Path-style URL:
   - bucket name in path segment.
3. S3 URI style:
   - s3://bucket/key format (used in many AWS service contexts).

## Deprecation Note

1. Path-style URLs are presented as deprecated directionally by AWS.
2. Virtual-hosted style is recommended for long-term compatibility.

## Access Scope Models

1. Same-account access:
   - identities/services in owning account access bucket according to policy permissions.
2. Cross-account access:
   - other AWS accounts can access when explicitly granted.
3. Public internet access:
   - possible only when public exposure is intentionally configured.

## Outcome

1. Learner can identify URL formats and understand where object access can originate based on policy and public settings.
