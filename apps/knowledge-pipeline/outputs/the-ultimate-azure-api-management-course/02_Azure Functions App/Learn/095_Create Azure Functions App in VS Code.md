# Create Azure Functions App in VS Code

## Pointwise No-Loss Summary

1. The video demonstrates creating and publishing an Azure Function App by using Visual Studio Code.
2. Prerequisites mentioned include required VS Code extensions and local runtime tooling.

## Prerequisites Mentioned

1. Install C# extension for VS Code.
2. Install Azure Functions extension for VS Code.
3. Install Azure Functions Core Tools (download and install separately after project creation step in the demo).

## Local Function Project Creation in VS Code

1. Open the Azure tab in VS Code.
2. In Workspace section, create a new function.
3. Select the current folder (or browse and choose another folder).
4. Choose C# language.
5. Choose .NET version 7.
6. Choose HTTP trigger template.
7. Set function name (example used: HttpTrigger1 / Http trigger one wording in narration).
8. Set namespace (example used: component function wording in narration).
9. Set authorization level to Anonymous.
10. Create the function project and confirm project files appear in Explorer.

## Local Run and Validation

1. Run locally by pressing F5, or use Run > Start Debugging.
2. Local Function App starts and exposes a URL.
3. Copy local URL and open it in a browser.
4. Verify welcome response is returned.
5. Stop execution and terminate local debug session before publishing.

## Create Azure Function App Resource from VS Code

1. Go to Azure Resources and expand Function App.
2. Start Function App creation flow in Azure.
3. Skip the simple/default path and choose Advanced creation path.
4. Enter Function App name (example wording: VS Code function app + initials).
5. Set runtime stack to .NET 7.
6. Set operating system to Windows.
7. Create new Resource Group (example wording in video: RG Sydney Visual Studio Code).
8. Set region to Australia East.
9. Select Consumption plan.
10. Create a new storage account (name left as generated default in demo).
11. Select existing Application Insights instance created earlier.
12. Create the Azure Function App and wait a few minutes.

## Verify Azure Resource Creation

1. Open Azure portal and refresh.
2. Verify the newly created VS Code Function App is visible.

## Deploy Local Function Code to Azure Function App

1. In VS Code, use Azure Function App icon/action and choose Deploy to Function App.
2. Select the local source folder containing function code.
3. Select the target Function App from the list of available apps.
4. Confirm deployment when prompted.
5. Deployment publishes local function changes to the Azure Function App resource.
6. Wait for deployment completion confirmation.

## Post-Deployment Validation and Cleanup

1. Open Function App URL and verify app is running.
2. Review Resource Group contents.
3. Resources observed: Function App, Storage Account, App Service Plan.
4. Cleanup step demonstrated: delete entire Resource Group to remove all created resources.

## Overall Takeaway

1. VS Code supports complete Function App flow: local creation, local run/debug, Azure resource creation, and deployment.
2. Azure-side prerequisites for hosting (storage, plan, monitoring) are configured during advanced app creation.
3. Resource-group deletion is used as end-of-demo cleanup to remove all related resources in one action.

