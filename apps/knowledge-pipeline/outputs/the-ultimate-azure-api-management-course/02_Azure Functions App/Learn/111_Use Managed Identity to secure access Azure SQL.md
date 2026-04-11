# Use Managed Identity to Secure Access to Azure SQL

## Pointwise No-Loss Summary

1. The video demonstrates securing Function App access to Azure SQL using managed identity.
2. Problem statement: traditional SQL connection strings can contain username/password in app settings, which is insecure.
3. Goal: avoid credential exposure by using Active Directory authentication and managed identity.

## Azure Resource Setup Sequence

1. Create Resource Group (example: RG SQL Function App) in Australia East.
2. Create Azure SQL single database in that Resource Group.
3. Database naming example in narration: database.
4. Create new SQL server (example naming includes sql function app + initials).
5. Set SQL server admin username.
6. Leave most defaults and allow public endpoint on SQL database.
7. Create SQL server and database.

## Local Function Project Setup in Visual Studio

1. Create Azure Functions project.
2. Project name example: SQL function app access.
3. Initial selection in demo: .NET 7, HTTP trigger, Anonymous.
4. Install SQL extension package via package manager.
5. Add required package(s) via PowerShell command from correct folder.
6. Publish Function App to Azure:
	- Azure Function App target,
	- Windows,
	- create new app in SQL Function App Resource Group,
	- Consumption plan,
	- Australia East.

## Prepare SQL Data for Query Testing

1. Open SQL Query Editor.
2. Add client IP firewall rule to allow access.
3. Authenticate with SQL admin username.
4. Create test table with columns:
	- ID int primary key not null,
	- Name varchar(20).
5. Insert sample rows (IDs 1, 2, 3 with sample names).
6. Run select query to verify rows exist.

## Managed Identity Configuration

1. Create user-assigned managed identity in same Resource Group (example: UI SQL function app).
2. In SQL database/server Identity section, add this user-assigned managed identity.
3. In Function App, enable system-assigned managed identity.

## Connection String App Setting (Managed Identity Pattern)

1. In Visual Studio publish profile, open Hosting -> Manage Azure App Service Settings.
2. Add setting named Azure SQL Connection String.
3. In Azure SQL connection strings page, compare auth options.
4. Use Active Directory authentication connection string (not SQL auth with username/password).
5. Paste this connection string into app setting values.
6. Publish Function App again.

## SQL Input Binding Code Implementation

1. From Microsoft docs, choose isolated process sample and copy SQL input attribute pattern.
2. Add SQL input binding to function code.
3. Set query to read from test table with hardcoded ID filter (=2 in demo).
4. Set connection string setting to Azure SQL Connection String.
5. Create model/class for test table (ID and Name properties).
6. Update response logic to read first matching record and return ID + Name output.
7. Fix minor code issues (extra bracket cleanup and formatting).
8. Publish updated code.

## Runtime Issue and Fix During Demo

1. Initial function test returns error.
2. Cause identified in narration as .NET version compatibility with current SDK.
3. Change project runtime from .NET 7 to .NET 6.
4. Save and rerun/republish.
5. Retest function URL.

## Validation and Security Outcome

1. Function successfully retrieves data from Azure SQL table.
2. App settings are checked again.
3. Connection approach no longer relies on embedded username/password style secret in the same way as SQL auth strings.
4. Authentication relies on Active Directory + managed identity pattern described in the demo.

## Cleanup Mentioned

1. Delete SQL Function App Resource Group at end.
2. This removes SQL resources and Function App artifacts.

## Overall Takeaway

1. Managed identity with AAD-oriented SQL connection pattern is used to reduce secret exposure in Function App configuration.
2. End-to-end setup includes SQL data prep, identity enablement, binding configuration, and runtime compatibility checks.
3. Final verification confirms both functional SQL read and improved security posture in app settings.

