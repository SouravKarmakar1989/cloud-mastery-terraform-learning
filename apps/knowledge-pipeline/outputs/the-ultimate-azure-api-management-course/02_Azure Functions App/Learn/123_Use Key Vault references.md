# Use Key Vault References in Function App Configuration

## Pointwise No-Loss Summary

1. The video deep-dives into Key Vault references for Function App settings.
2. Core objective: keep secrets out of plain app settings and resolve them from Key Vault.

## Resource Setup in Demo

1. Create Resource Group (example wording: RG Function App Key Vault).
2. Create Function App (example naming: function app key vault + initials):
   - .NET 6,
   - Australia East.
3. Create Key Vault in same Resource Group.
4. Key Vault retention setting adjusted to 7 days.

## Create Secret and Resolve Initial Permission Issue

1. Attempt to create Key Vault secret initially fails due to missing permissions.
2. In Key Vault IAM, assign role to current user:
   - role used in demo: Key Vault Secrets Officer.
3. After role assignment, create secret (example naming/value pattern shown in demo).

## Configure Function App to Use Key Vault Reference

1. Enable system-assigned managed identity on Function App.
2. Add app setting in Function App configuration:
   - key example: secret/secrets,
   - value uses Key Vault reference syntax from docs.
3. Insert secret URI into reference value.
4. Save settings.

## Deliberate Failure and RBAC Fix

1. Initial Key Vault reference resolution fails (shown in portal status/details).
2. Cause: Function App identity lacks Key Vault read permission.
3. Fix in Key Vault IAM:
   - assign role to Function App managed identity,
   - role used in demo: Key Vault Secrets User.
4. Refresh Function App config; reference resolves successfully.

## Validate Secret Retrieval in Function Code

1. Create HTTP trigger function.
2. In code, read environment variable by app-setting key.
3. Return value in response.
4. Test GET request shows secret value retrieved via Key Vault reference.

## Secret Version Behavior Demonstrated

1. Remove explicit secret version from reference.
2. Request still works and resolves to current version.
3. Create new secret version in Key Vault.
4. Immediate function request still returns previous value.
5. Explanation given:
   - Key Vault value updates from vault side can take up to 24 hours to refresh in app-service cache.

## Forcing Latest Version and Alternative Syntax

1. Set explicit secret version in reference to retrieve desired version immediately.
2. Request then returns the expected newer value.
3. Switch to alternative reference syntax (VaultName/SecretName[/SecretVersion] form).
4. After app-setting change on Function App side, latest value can refresh immediately.
5. Create another new secret value in Key Vault only; without app-setting change, cache delay behavior remains.

## Practical Security Guidance Reiterated

1. Store connection strings/secrets/confidential values in Key Vault.
2. Use Key Vault references in Function App settings rather than plain-text values.

## Cleanup Mentioned

1. Delete Function App Key Vault Resource Group at end.

## Overall Takeaway

1. Key Vault references secure Function App configuration and remove plaintext secret exposure.
2. Correct RBAC for both operator account and Function App managed identity is required.
3. Secret version handling and app-service caching behavior are key to predictable secret-rotation outcomes.

