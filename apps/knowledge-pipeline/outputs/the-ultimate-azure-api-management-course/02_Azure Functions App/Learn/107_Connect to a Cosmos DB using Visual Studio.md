# Connect Local Function App to Cosmos DB Using Visual Studio

## Pointwise No-Loss Summary

1. The video demonstrates creating an output binding from a local Function App (Visual Studio) to Azure Cosmos DB.
2. Main objective: run function locally and write output documents into Cosmos DB in Azure.

## Local Function Project and Publish Setup

1. Create new Azure Functions project in Visual Studio.
2. Project naming example: Function App Cosmos DB.
3. Choose .NET 7, HTTP trigger, Anonymous authorization.
4. Publish to Azure immediately:
	- target Azure Windows,
	- create new resource,
	- use default function app name,
	- create new Resource Group (example wording: RG Cosmos DB),
	- choose Consumption plan in Australia East,
	- use existing storage account and Application Insights.

## Cosmos DB Provisioning in Azure

1. Create Cosmos DB for NoSQL account.
2. Place it in the Cosmos DB Resource Group.
3. Cosmos DB account naming example follows function-app cosmosdb wording.
4. Region: Australia East.
5. Capacity mode: serverless.
6. Availability zones disabled.
7. Networking left at defaults.
8. Create Cosmos DB account.

## Apply Documentation Sample Code

1. Return to Microsoft documentation and choose isolated process sample.
2. Copy function sample into Function1.
3. Remove static where needed.
4. Copy additional helper classes (including multi response-related types) from docs.
5. Missing reference appears and requires Cosmos DB extension install.

## Extension Package Installation Flow

1. Install Cosmos DB extension via package tooling.
2. Then run add-package command in terminal/PowerShell.
3. Navigate to correct project folder before running command.
4. After correct path is used, package installation succeeds.

## App Settings for Cosmos Connection

1. In Visual Studio publish profile, open Hosting -> Manage Azure App Service Settings.
2. Add new setting named Cosmos DB Connection String.
3. In Azure portal Cosmos DB -> Keys, copy primary connection string.
4. Paste into both local and remote values.
5. Save settings.

## Container and Binding Value Corrections During Debugging

1. Create items container in Cosmos DB before testing.
2. Initial run produces errors, then iterative fixes are made:
	- Fix connection property syntax in binding: use connection name form expected by attribute (remove incorrect string suffix usage).
	- Correct connection string value copy method: show/reveal value before copying so actual full value is used.
	- Update binding/database values based on Data Explorer context.
	- Set container name to Items (capital I as used in demo corrections).
	- Add partition key path setting when missing.
3. Partition key path added as /ID in the demo.

## Final Validation

1. Re-run local function app after corrections.
2. Invoke local HTTP endpoint from browser.
3. Execution succeeds.
4. In Cosmos DB Data Explorer -> Items container, verify document/message exists (welcome-to-Azure-style output from function).

## Cleanup Mentioned

1. Delete Cosmos DB Resource Group at end.
2. This removes Cosmos DB account, Function App, App Service plan, and related resources.

## Overall Takeaway

1. Cosmos DB output binding from local Function App works once connection setting, binding properties, container naming, and partition key are aligned.
2. The demo highlights practical troubleshooting steps for common misconfiguration errors.
3. Validation is done by confirming local invocation and inserted document in Cosmos DB Data Explorer.

