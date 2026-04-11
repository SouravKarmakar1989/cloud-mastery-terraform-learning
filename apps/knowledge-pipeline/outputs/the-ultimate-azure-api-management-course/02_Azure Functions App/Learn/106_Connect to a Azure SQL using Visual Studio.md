# Connect Local Function App to Azure SQL Using Visual Studio

## Pointwise No-Loss Summary

1. The video demonstrates connecting a local Function App (Visual Studio) to Azure SQL.
2. It follows the same local-to-remote binding concept shown in the previous storage queue video.

## Local Function Project Setup

1. Create new Azure Functions project in Visual Studio.
2. Project naming example: Function App Azure SQL.
3. Choose .NET 7, HTTP trigger, Anonymous authorization.
4. Create project.

## Publish Function App to Azure

1. Publish target: Azure, Windows.
2. Create new Function App target.
3. Create new Resource Group (example wording: RG Function App SQL).
4. Use Consumption plan in Australia East.
5. Use existing storage account and existing Application Insights in publish flow.
6. Publish function app.

## Azure SQL Database Provisioning in Parallel

1. Create Azure SQL single database in same Resource Group.
2. Database example name: Function App SQL Database.
3. Create new SQL Server (example naming in narration similar to SQL server function app sql).
4. Region: Australia East.
5. Authentication choice in demo: Azure Active Directory authentication.
6. Set Azure AD admin to instructor account.
7. No elastic pool.
8. Workload/profile in demo: development/general purpose style choices.
9. Redundancy in demo: locally redundant.
10. Networking in demo:
	- public endpoint enabled,
	- firewall/protections relaxed for demo simplicity.
11. Security tab: Defender and extra protections not enabled.
12. Create SQL database.

## Prepare Database Table

1. Open SQL database Query Editor.
2. Before querying, whitelist client IP.
3. Authenticate using Azure AD credentials.
4. Run SQL script from documentation to create required table.
5. Confirm table creation in query editor.

## Add SQL Connection Setting in Visual Studio Hosting Settings

1. Open Hosting -> Manage Azure App Service Settings.
2. Unlike storage scenario, no built-in SQL connection setting exists yet.
3. Add a new setting using SQL connection setting name from Microsoft docs.
4. In Azure portal SQL database -> Connection strings, copy AAD-auth connection string.
5. Paste connection string into both local and remote values.
6. Save settings.

## Apply SQL Binding Code and Supporting Types

1. Replace Function1 with SQL binding sample code from documentation.
2. Copy additional output type class from docs.
3. Install required SQL extension package(s).
4. Demo shows command workflow requiring PowerShell in correct project folder.
5. First attempt from wrong path fails with no project found; rerun from project path succeeds.

## Resolve Compile Errors Shown in Demo

1. Remove problematic static modifiers where needed.
2. Add missing TodoItem class from docs.
3. Keep class in same namespace in demo.
4. Remove extra curly bracket.
5. Fix property casing mismatch for ID field (capitalization issue).
6. Keep GUID type handling as shown (no unnecessary string conversion).
7. Fix SQL output attribute namespace/reference to worker extensions SQL namespace.
8. Confirm errors are resolved.

## Run and Validate End-to-End Output Binding

1. Run function app locally.
2. Invoke local HTTP URL in browser.
3. Function returns expected response.
4. In Azure SQL query editor, run select query on created table.
5. Confirm local execution inserted message/data into Azure SQL table via output binding.

## Cleanup Mentioned

1. Delete Resource Group at end.
2. This removes SQL database, SQL server, Function App, and related resources.

## Overall Takeaway

1. Local Visual Studio Function Apps can write to Azure SQL through output binding with correct connection and extension setup.
2. SQL connection setting must be explicitly added in hosting settings for local and remote contexts.
3. End-to-end validation should include local function invocation plus direct SQL query confirmation.

