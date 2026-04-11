# Azure Queue Storage Trigger in Function App

## Pointwise No-Loss Summary

1. The video demonstrates creating an Azure Queue Storage trigger in Function App.
2. It contrasts two patterns:
	- using default Function App storage account,
	- using a separate newly created storage account for queue processing.

## Function App and Resource Setup

1. Create new Resource Group (example wording: RG queue function app).
2. Create new Function App (example naming: queue trigger function app + initials).
3. Runtime selected: .NET version 6.
4. Region selected: Australia East.
5. Create Function App.

## Separate Storage Account Creation for Queue

1. Create a new storage account in same Resource Group.
2. Example naming in narration: queue function app trigger storage.
3. Region: Australia East.
4. After creation, go to Queues service.
5. Create queue named q.

## Queue Trigger Function Creation in Function App

1. Return to Function App and create new function.
2. Search/select Queue Storage trigger template.
3. Keep default function name.
4. Set queue name to q.
5. Key difference explained:
	- previous blob trigger demo used AzureWebJobsStorage (default app storage),
	- this demo uses a different storage account,
	- therefore a new storage connection string must be added/selected.
6. Complete function creation.

## App Settings Effect of New Connection String

1. Instructor highlights expected result: new app setting appears in Function App configuration.
2. In configuration values, verify added setting points to newly created queue storage account.

## Validation and Monitoring Flow

1. Open Application Insights for the Function App.
2. Open Live Metrics.
3. Return to queue and add a new message (example payload: test).
4. Refresh queue view after a few seconds.
5. Message disappearance indicates function processed and consumed it.
6. In Live Metrics, observe message/processing activity.
7. In Function Monitor tab, verify invocation and processed message details.

## Cleanup Mentioned

1. Delete the queue-function-app Resource Group at end of demo.

## Overall Takeaway

1. Queue trigger functions process queue messages automatically in an event-driven model.
2. Using a separate storage account requires explicit connection string configuration in Function App settings.
3. End-to-end validation is done by confirming queue message consumption plus invocation visibility in Application Insights and Monitor.

