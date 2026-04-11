# Use Managed Identity to Secure Triggers and Bindings

## Pointwise No-Loss Summary

1. The video demonstrates securing Function App triggers/bindings with managed identity.
2. It starts with an intentionally unsecured setup to show the problem first.

## Unsecured Baseline Demonstration

1. Create Resource Group for exposed test (example naming: RG exposed wording).
2. Create Function App in this exposed Resource Group:
	- .NET 6,
	- Windows,
	- Consumption.
3. Create Service Bus in same exposed Resource Group (Basic tier, Australia East).
4. In Function App, create Service Bus queue trigger function.
5. During trigger creation, add a new Service Bus connection.
6. Open Function App configuration and inspect generated app setting.
7. Security issue shown: setting contains endpoint and access key details in app settings.
8. Exposed test Resource Group is deleted to reset and implement secure approach.

## Secure Implementation Resource Setup

1. Create new Resource Group (example: RG Triggers) in Australia East.
2. Create new Service Bus in this Resource Group (example naming: SB managed identity trigger + initials, Basic tier).
3. In Visual Studio, create new Function App project:
	- project name example: function app managed identity triggers,
	- .NET 7,
	- Service Bus queue trigger,
	- queue name set to myqueue/my queue wording used in demo.
4. Publish project to Azure:
	- Windows target,
	- create/select function app in RG Triggers,
	- Australia East,
	- create new Application Insights instance.

## Extension and Package Setup

1. Install Service Bus extension package for Function App.
2. Copy command from documentation for adding package.
3. Run command in PowerShell from correct project directory.
4. Package installation succeeds.

## App Setting for Namespace-Based Identity Connection

1. Open Hosting -> Manage Azure App Service Settings.
2. Add setting named ServiceBusConnection__fullyQualifiedNamespace.
3. Value format used: <service-bus-namespace>.servicebus.windows.net.
4. Copy actual namespace from Service Bus resource and place in local and remote values.
5. Save settings.

## Function Code Mapping Adjustment

1. In function code, set connection property to ServiceBusConnection.
2. This base name maps to ServiceBusConnection__fullyQualifiedNamespace setting.
3. Build project to resolve remaining reference issues.
4. Publish function app again.

## Managed Identity and RBAC Configuration

1. In Azure portal Function App -> Identity, enable system-assigned managed identity.
2. In Service Bus -> IAM, add role assignment:
	- role: Azure Service Bus Data Receiver,
	- principal type: managed identity,
	- target: system-assigned managed identity of this Function App.
3. In Service Bus, create queue matching code configuration (myqueue/my queue as configured).

## Validation Flow

1. Open queue in Service Bus Explorer.
2. Open Function monitor/App Insights live metrics for visibility.
3. Send text message to queue.
4. Live metrics/monitor shows function triggered successfully and message processed.

## Security Outcome Observed

1. Return to Function App app settings.
2. Confirm sensitive Service Bus connection string with key is no longer required.
3. App settings use namespace-based reference + managed identity authentication pattern.

## Cleanup Mentioned

1. Delete RG Triggers Resource Group at end to remove all created resources.

## Overall Takeaway

1. Managed identity secures Service Bus triggers/bindings by replacing key-based connection strings with namespace-only configuration and RBAC.
2. The secure pattern requires three coordinated elements:
	- namespace setting convention,
	- function connection base name mapping,
	- managed identity role assignment on Service Bus.
3. Result is functional trigger execution without storing secrets in Function App settings.

