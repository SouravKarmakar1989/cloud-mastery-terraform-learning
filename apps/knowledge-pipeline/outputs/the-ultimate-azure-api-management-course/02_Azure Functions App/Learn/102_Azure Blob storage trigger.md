# Azure Blob Storage Trigger in Function App

## Pointwise No-Loss Summary

1. The video demonstrates creating a Blob Storage trigger in Azure Function App.
2. Goal: trigger function execution whenever a new file is placed into a specific blob container.

## Function App Provisioning Flow

1. Create new Resource Group (example used: RG Blob function app).
2. Create new Function App (example naming: function app blob trigger + initials).
3. Select .NET version 6.
4. Set region to Australia East.
5. Create Function App.

## Identify Storage Account Used by Function App

1. Open Function App -> Configuration.
2. Locate AzureWebJobsStorage setting.
3. From this setting, identify the storage account used by the Function App.
4. Open that storage account in a new tab.

## Create Trigger Container

1. In storage account, go to Containers.
2. Create a new container named trigger.

## Create Blob Trigger Function

1. Return to Function App overview.
2. Create new function.
3. Choose Blob Storage trigger template.
4. Keep default function name.
5. Update path to trigger/{name}:
	- trigger matches container name,
	- {name} is placeholder for blob name.
6. Storage account connection is already available because Function App already has connection string in app settings.
7. Create the function.

## Trigger Validation and Monitoring Sequence

1. Open Function App -> Application Insights.
2. Open Live Metrics.
3. Return to storage account and open trigger container.
4. In the demo, direct view initially lacked permission for container content.
5. Switch auth method to access key to view container content.
6. Upload files to trigger container.
7. Function should trigger and produce log output.
8. Logs may be observed in Live Metrics, but this can be harder to catch.
9. More reliable check shown: Function -> Monitor tab.
10. Monitor view shows the default log message from function code, confirming invocation.

## Usage Examples Mentioned

1. Process files automatically on upload.
2. Virus-scanning style scenario for uploaded files.
3. Additional processing workflows based on new blob arrivals.

## Cleanup Mentioned

1. End-of-video cleanup deletes created resources (function app/resource group cleanup intent shown).

## Overall Takeaway

1. Blob trigger functions provide event-driven file processing where upload events start execution automatically.
2. Correct path pattern and storage linkage are the key setup elements.
3. Monitor tab is a practical confirmation point when Live Metrics is less convenient for catching short-lived events.

