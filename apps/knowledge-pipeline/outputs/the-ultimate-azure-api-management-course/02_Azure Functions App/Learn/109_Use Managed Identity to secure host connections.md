# Use Managed Identity to Secure Function App Host Connections

## Pointwise No-Loss Summary

1. The video demonstrates using managed identity to secure host connection settings in Function App.
2. Two sensitive settings are highlighted as the problem:
	- WEBSITE_CONTENTAZUREFILECONNECTIONSTRING,
	- AzureWebJobsStorage.
3. Both were shown containing storage account names and account keys in app settings.
4. Security objective: remove plain-text secrets/keys from app settings and reference Key Vault instead.

## Resource Setup Performed

1. Create Resource Group (example wording: RG Managed Identity) in Australia East.
2. Create Key Vault in that Resource Group.
3. Keep Azure RBAC permission model (default in demo).
4. Retention changed to 7 days.
5. Create user-assigned managed identity (example name: UI managed identity).
6. Add role assignment on Key Vault scope:
	- role: Key Vault Secrets User,
	- principal: the created user-assigned managed identity.

## Function App Creation via Template (Not Direct Portal Create)

1. Start Function App creation (name example: function app managed identity + initials, .NET 6, Australia East).
2. Instead of creating directly in portal, download template for deployment customization.
3. Open template editor for modifications based on Microsoft docs.

## ARM Template Changes Applied

1. Add Key Vault secret resource snippet into resources section.
2. Replace vault name placeholders with actual Key Vault name.
3. In Function App resource, add dependency on Key Vault secret resource in dependsOn.
4. Add identity section to Function App resource for user-assigned identity.
5. Build identity resource ID using required subscription/resource-group/identity-name format.
6. Replace placeholders with:
	- subscription ID,
	- managed identity resource group,
	- managed identity name.
7. Important syntax correction called out in demo:
	- AssignedIdentities key casing must be exact (capitalization-sensitive), otherwise deployment fails.
8. Add keyVaultReferenceIdentity property under Function App properties.
9. Set keyVaultReferenceIdentity value to same user-assigned identity resource ID.
10. Locate WEBSITE_CONTENTAZUREFILECONNECTIONSTRING setting in template and replace direct connection string value with Key Vault reference format.
11. Replace Key Vault placeholder in that reference with the created vault name.

## Deployment Error and Fix Cycle

1. First template deployment fails with format error.
2. Error details are copied out and compared line-by-line.
3. Identity path/resource string format is corrected to match required format.
4. Same corrected format is reapplied in all affected template locations.
5. Redeploy template.
6. During redeploy, provide required parameter prompt (demo sets one value to true).
7. Deployment then succeeds and Function App is created.

## Key Vault Access Fix for Secret Verification

1. On Key Vault secrets page, initial permission issue occurs for viewer account.
2. Add Key Vault Secrets User role assignment to current user account on Key Vault.
3. Re-open secrets and verify secret exists.
4. Secret value corresponds to connection string that previously lived directly in app settings.

## Verify Function App Configuration After Template Changes

1. Open managed-identity Function App -> Configuration.
2. Confirm WEBSITE_CONTENTAZUREFILECONNECTIONSTRING now references Key Vault value.
3. This validates secret extraction from plain app settings.

## Secure AzureWebJobsStorage with Identity-Based Pattern

1. Additional hardening step still required for AzureWebJobsStorage.
2. Identify Function App storage account.
3. On that storage account, assign Blob Data Owner role.
4. Assign role to Function App system-assigned managed identity.
5. In Function App -> Identity, confirm system-assigned identity details used for that role assignment.
6. In Configuration, rename setting key from AzureWebJobsStorage to AzureWebJobsStorage__accountName.
7. Use storage account name only as value (remove full connection string and account key).
8. Double underscore convention is explained as special app settings pattern indicating identity-based secret resolution behavior.

## Final Security State Observed

1. App settings become cleaner and no longer contain account keys/plain secret values.
2. Key Vault references + identity-based storage settings are presented as the recommended pattern for confidential settings.

## Cleanup Mentioned

1. Delete managed identity Resource Group at end to remove all created resources.

## Overall Takeaway

1. Managed identity plus Key Vault reference pattern removes sensitive connection details from Function App settings.
2. Host connection hardening requires both template-level Key Vault reference changes and storage identity permission updates.
3. Correct identity resource ID formatting and exact property casing are critical for successful ARM deployment.

