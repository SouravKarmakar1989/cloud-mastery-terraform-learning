# Manage a Function App

## Pointwise No-Loss Summary

1. The video provides a broad management overview for Azure Function App.
2. Topics covered include:
  - app settings,
  - reading settings in code,
  - publish profile,
  - hosting plan migration,
  - advanced tools and file access.

## Demo Setup

1. Create new Function App in Resource Group (example wording: RG function app management).
2. Use .NET 6 in Australia East.

## App Settings and Access from Code

1. App settings can store custom configuration values.
2. Sensitive values should be stored via Key Vault references, not plain text.
3. Demo adds sample app setting (name/value example: appsetting/value).
4. Create HTTP trigger function.
5. In function code, read setting via environment variable API.
6. Return setting value in response.
7. Test confirms app setting value is retrieved successfully.
8. Documentation note mentioned: language-specific examples exist for reading app settings.

## Publish Profile Note

1. Download publish profile from Function App.
2. Open profile and observe it contains credentials (username/password).
3. These can be used for FTPS package transfer.
4. Microsoft recommendation note in video: this deployment method is not preferred/recommended.

## Hosting Plan Types and Migration

1. Function App hosting plans discussed: Consumption, Premium, Dedicated.
2. Migration between plans is possible with constraints.
3. Constraints mentioned:
  - source and target must be in same Resource Group,
  - source and target must be in same geographical region,
  - migration has some downtime,
  - migration on Linux has restrictions,
  - migration to dedicated plan has specific support constraints (as referenced from docs in video).
4. Demo action:
  - upgrade from Consumption to Premium by creating/selecting premium plan,
  - then downgrade back to Consumption,
  - note that premium-specific features may be lost after downgrade,
  - option shown to delete the temporary premium plan.

## Advanced Tools and File Access

1. Portal inline code editor exposes only a subset of files (for example run script and function.json views).
2. Advanced Tools (Kudu) provides deeper file-system access.
3. In Kudu debug console, navigate under site folders (for example site/wwwroot route shown in demo).
4. Create extensions.csproj manually in wwwroot to add extensions manually when needed.
5. Comparison with another Function App shows different folder layout (including repo folder) when app content came from repo-based deployment.
6. Key point: Kudu allows access to files beyond what inline editor shows.

## App Service Editor (Preview) Mentioned

1. App Service Editor preview view shows function file structure in portal.
2. It also exposes in-portal console access.
3. Demo confirms previously created extensions.csproj file is visible there.

## Cleanup Mentioned

1. Delete function-app-management Resource Group at end.

## Overall Takeaway

1. Function App management spans configuration, deployment credentials awareness, hosting plan lifecycle, and advanced file operations.
2. Secure configuration handling (Key Vault references) and understanding tool boundaries (inline editor vs Kudu/App Service Editor) are central to safe operations.

