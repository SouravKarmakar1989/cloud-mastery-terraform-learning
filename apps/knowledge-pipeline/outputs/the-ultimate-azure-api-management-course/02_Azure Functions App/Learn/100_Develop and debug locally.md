# Develop and Debug Azure Functions Locally

## Pointwise No-Loss Summary

1. The video demonstrates local development and debugging for Azure Functions.
2. A new Function App project is created locally.
3. Project settings used in the demo:
	- Project name example: local function.
	- Runtime: .NET 7.
	- Trigger: HTTP trigger.
	- Authorization level: Anonymous.

## Multiple Functions in One Function App

1. The created project initially contains one function (Function1).
2. The instructor duplicates Function1 and renames copy to Function2.
3. Required code updates mentioned after copy:
	- class name,
	- constructor,
	- function tag/name references.
4. Build solution to validate both functions compile.
5. Key concept: one Function App can contain multiple functions.

## Local Project Files Highlighted

1. host.json is present.
2. local.settings.json is present.

## Editing Guidance from Documentation

1. The instructor references Microsoft documentation warning against mixed editing workflows.
2. Specifically, avoid mixing local IDE development with Azure portal inline editing for same app.
3. If publishing from Visual Studio or VS Code, avoid continuing code edits in portal inline editor.
4. This is framed as a protection against shortcut changes that could later break the app.

## Initial Publish Flow Demonstrated

1. Publish from local project to Azure (Windows target).
2. Create a new Azure Function App during publish.
3. Create new Resource Group (example wording: RG Local).
4. Use Consumption plan.
5. Region used: Australia East.
6. Publish completes successfully.

## host.json and local.settings.json Concepts Explained

1. host.json:
	- there is only one host file per Function App,
	- applies globally to all functions inside that app.
2. local.settings.json:
	- contains settings used to run locally,
	- includes AzureWebJobsStorage and worker runtime in the demo file.
3. In the demo explanation, AzureWebJobsStorage is associated with using local emulator behavior by default value shown.
4. Runtime shown as dotnet-isolated in local settings.

## Additional Local Settings Added in Demo

1. From docs, instructor adds a function-disable setting using AzureWebJobs.<FunctionName>.Disabled style.
2. Example targets Function1.
3. Initially set to false.
4. Adds runtime version setting and sets it to 7.
5. Save changes and run app locally.

## Local Debug Validation with Two Functions

1. With two functions enabled, local run shows two URLs.
2. Both URLs are tested in browser.
3. Then local setting is changed to disable Function1 (set to true).
4. Re-run locally.
5. Result: only Function2 URL is shown in startup output.
6. Hitting previously saved Function1 endpoint returns no response behavior because it is disabled locally.

## Local Settings vs Azure Portal App Settings

1. In Azure portal configuration view, local.settings.json values are not visible.
2. Even after publishing again, those local-only settings still do not appear in portal app settings.
3. Reason stated: local.settings.json is for local development environment only.

## Manage Azure App Service Settings View

1. In publishing/hosting flow, open Manage Azure App Service Settings.
2. This view shows local and remote setting values side-by-side.
3. Some settings are local-only.
4. Some settings have both local and remote values.
5. Runtime behavior described:
	- local execution uses local value,
	- Azure execution uses remote value.
6. Some settings can also be remote-only.

## Azure Storage Emulator (Azurite) Mentioned

1. The video mentions Azure storage emulator tool (Azurite terminology referenced by instructor wording).
2. It can be used for local runtime storage behavior.
3. In Function App project creation wizard, checkbox shown for using Azure storage for runtime storage account.
4. This helps local environment produce logs/behavior similar to Azure-hosted run.
5. Instructor notes later section will show routing logs to blob storage as an option.

## Cleanup Mentioned

1. End-of-video cleanup deletes the created Resource Group.

## Overall Takeaway

1. Local development relies on project-level configuration files and controlled local settings.
2. Local-only settings should not be expected to appear automatically in Azure app settings.
3. Safe workflow is to keep one source-of-truth editing path (local IDE) and avoid split local/portal code edits.

