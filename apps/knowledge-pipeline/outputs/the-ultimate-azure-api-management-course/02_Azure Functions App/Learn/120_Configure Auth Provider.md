# Configure Authentication Provider for Function App

## Pointwise No-Loss Summary

1. The video demonstrates configuring authentication for Function App.
2. Initial security problem stated: without auth provider, anyone can access function endpoint publicly.

## Baseline and Auth Provider Setup

1. Create Resource Group (example wording: RG authentication).
2. Create Function App (example name: function app authentication + initials) with:
	- .NET 6,
	- Australia East.
3. Verify endpoint is publicly reachable (normal browser and incognito both work pre-auth).
4. Open Function App -> Authentication.
5. Add identity provider: Microsoft.
6. Keep default options in demo:
	- create app registration,
	- single-tenant configuration,
	- require authentication,
	- unauthenticated requests redirected (302 found behavior mentioned).
7. Resolve duplicate app-registration-name issue by changing name and re-adding provider.
8. After provider is added, endpoint now requires Azure AD sign-in/consent flow.
9. In incognito, user must authenticate with account in same tenant because app is single-tenant.

## System-to-System (App-to-App) Authentication Flow

1. Create separate Azure AD app registration for API caller (example name: API authentication for function app).
2. Create client secret for that app registration.
3. Important note: secret value must be copied immediately because it is shown once.

## Token Request Construction in Postman

1. Build token endpoint URL using tenant ID:
	- host + tenant ID + /oauth2/v2.0/token path shown in demo.
2. Use POST request.
3. Body fields used:
	- client_id,
	- client_secret,
	- grant_type,
	- scope.
4. client_id comes from caller app registration.
5. scope comes from function app registration API scope (from expose-an-api area).
6. Add header content-type as application/x-www-form-urlencoded.
7. Initial scope attempt fails; append .default to scope.
8. Retrying returns access token successfully.

## Calling Function App with Bearer Token

1. Open function URL in new Postman request.
2. Request without auth fails.
3. Add Authorization header with Bearer token from token endpoint response.
4. Request succeeds, demonstrating app-to-app authentication.

## Restricting Access to Specific Applications (App Roles)

1. Current state allows any app in tenant with valid token path to access.
2. To restrict further:
	- open function app app registration,
	- create app role (example: read, assigned to applications).
3. In caller app registration:
	- add API permission to function app API,
	- choose application permission for created role,
	- grant admin consent.

## Function-Level Role Validation in Code

1. Microsoft docs note: function code must explicitly validate role claim.
2. Create HTTP trigger function.
3. Update code to read returned claim/header value from request.
4. Call function with bearer token and retrieve encoded claim payload.
5. Decode payload and verify roles claim includes assigned role (read).
6. Use this claim check in code to allow/deny callers by app role.

## Operational Note Mentioned

1. Many organizations enable auth provider but do not implement app-role enforcement in code.
2. Video encourages taking this extra step to restrict application access more precisely.

## Cleanup Note

1. Resources are intentionally not deleted at end because they may be reused in upcoming videos.

## Overall Takeaway

1. Function App auth provider setup secures user and system access through Azure AD.
2. For app-to-app access, token acquisition + bearer usage enables machine authentication.
3. Strongest restriction requires app roles plus explicit role validation in function code, not provider setup alone.

