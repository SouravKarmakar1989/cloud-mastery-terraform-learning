# Managed Identities for Function App

## Pointwise No-Loss Summary

1. The video explains managed identity options for Function App.
2. Important scope note: identity configuration is tied to deployment slot.
3. If multiple slots exist, identity should be configured on the intended slot.

## System-Assigned Managed Identity

1. Enable system-assigned identity by turning it on in Identity and saving.
2. System-assigned identity is tightly coupled to Function App lifecycle.
3. If Function App is deleted, system-assigned identity is deleted as well.
4. After enabling identity, role assignments must be granted for target resources.
5. Demo example role assignment:
  - scope: Resource Group,
  - role: Contributor,
  - result: Function App identity can manage resources within that Resource Group.

## User-Assigned Managed Identity

1. Create user-assigned managed identity as separate resource first.
2. Add/attach it to Function App from Identity -> User assigned.
3. User-assigned identity is independent of Function App lifecycle.
4. If Function App is deleted, user-assigned identity remains.
5. Role assignments are also required for user-assigned identity.
6. Demo example role assignment:
  - scope: Subscription,
  - role: Reader,
  - result: read access to subscription resources/settings.

## Practical Permission Management Message

1. As Function App needs access to more services, role assignments must be updated accordingly.
2. Examples mentioned include subscription, resource group, Key Vault, and storage-related scopes.

## Removal and Cleanup Behavior

1. User-assigned identity can be removed from Function App identity assignments.
2. System-assigned identity can be turned off.
3. Because user-assigned identity is independent, it must be deleted manually if no longer needed.

## Overall Takeaway

1. System-assigned identity is app-coupled and auto-removed with app deletion.
2. User-assigned identity is reusable/independent and persists until explicitly deleted.
3. Both identity types require explicit RBAC role assignments for actual resource access.

