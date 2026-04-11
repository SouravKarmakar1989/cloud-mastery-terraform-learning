# Create Azure Functions App in Visual Studio

## Pointwise No-Loss Summary

1. The video demonstrates creating an Azure Function App by using Visual Studio.
2. Prerequisite called out: Visual Studio 2022.
3. Prerequisite called out: Azure Development workload installed in Visual Studio (during installation or added later).

## Local Project Creation Flow Mentioned

1. In Visual Studio, create a new project.
2. From the project type dropdown/filter, select Azure.
3. Select Azure Functions project template.
4. Proceed to next step and set project name (example used: Visual Studio function app).
5. In template/runtime settings, choose:
	- .NET version 7,
	- HTTP trigger,
	- Authorization level Anonymous.
6. Create the Function App project locally.

## Local Run and Initial Verification

1. Run the newly created local function app.
2. Copy the local function URL shown by Visual Studio.
3. Open the URL in a browser.
4. Verify default response appears (welcome to Azure Functions message).

## Local Code Changes Demonstrated

1. Change function name to HttpExample.
2. Update output logic to include query string value from parameter name.
3. Re-run the function app locally.
4. Confirm route/function name changed in the local URL output.
5. Open URL in browser and confirm baseline message still works.
6. Append query string parameter name with a value.
7. Verify the provided name value appears in the response message.

## Local vs Azure Clarification

1. Stop local execution in Visual Studio.
2. Check Azure portal and note the app is not there yet.
3. Clarification given: all earlier steps were local-only.
4. Next required step: publish local function app to Azure.

## Publish-to-Azure Flow in Visual Studio

1. Right-click the project and choose Publish.
2. Select Azure Windows target.
3. Create a new Function App.
4. Set Function App name (example wording: Visual Studio function app + initials).
5. Create new Resource Group (example: RG Sydney Visual Studio).
6. Select Consumption plan.
7. Select Australia East region.
8. Create a new Azure Storage Account (example name used in video: Azure Function App Storage).
9. Use an existing Application Insights instance created earlier.
10. Create/publish and wait a few minutes for Azure readiness.

## Azure Portal Validation After Publish

1. After publish completes, open Azure portal.
2. Refresh and verify the new Function App appears.
3. Open the Function App URL from portal.
4. Confirm the deployed app is accessible.

## Resource Inventory and Cleanup Mentioned

1. Open the Resource Group to inspect what was created.
2. Function App is present as the main resource.
3. Storage Account is also present (required by Functions).
4. App Service Plan is created as well and used to run the Function App.
5. Demonstrated cleanup step: delete the entire Resource Group.
6. Deleting the Resource Group removes Function App, Storage Account, and App Service Plan together.

## Overall Takeaway

1. Visual Studio supports full Function App lifecycle in one workflow: create locally, run/debug locally, modify behavior, publish to Azure, validate in portal.
2. Publishing provisions required Azure resources such as storage and hosting components.
3. Resource-group-level cleanup is a practical way to remove all related resources after testing.

