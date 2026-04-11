# Connect to Azure Storage Queue Using Visual Studio

## Pointwise No-Loss Summary

1. The video demonstrates connecting a locally developed Azure Function App (Visual Studio) to Azure Storage Queue using output binding.
2. Focus is on local execution in Visual Studio while writing messages to a remote Azure queue.

## Local Project Creation and Initial Validation

1. In Visual Studio, create new Azure Functions project.
2. Project naming example: function app storage queue connection.
3. Choose .NET 7, HTTP trigger, and Anonymous authorization.
4. Run locally and hit function URL in browser to confirm baseline works.

## Publish Function App to Azure

1. Publish target: Azure, Windows.
2. Create new Function App.
3. Create new Resource Group (example wording: RG function app storage queue).
4. Use Consumption plan in Australia East.
5. Create new Azure Storage Account during publish flow.
6. Publish and verify Function App exists in Azure portal.

## Connection String Configuration for Local-to-Remote Binding

1. In Visual Studio publish profile, open Hosting -> Manage Azure App Service Settings.
2. Locate AzureWebJobsStorage setting with local and remote values.
3. Copy remote connection string value into local connection string slot.
4. Save settings.
5. Purpose stated in video: when running locally, function uses remote storage queue connection for output binding.

## Apply Output Binding Code from Documentation

1. Copy Microsoft documentation code sample and replace Function1 code.
2. Also copy required MultiResponse class from docs.
3. Fix bracket mismatch after paste (one extra curly bracket removed in demo).
4. Resolve missing assembly/package reference.

## Package Installation Issue and Resolution

1. The package command from docs is attempted in Package Manager Console.
2. It fails to find package in demo.
3. Instructor notes Microsoft support provided an alternative working command.
4. Install storage extension using that provided command.
5. After installation, assembly reference errors are resolved.

## Queue Setup and Binding Target

1. In code/binding configuration, queue name set to output.
2. In Azure storage account, create queue named output to match binding target.

## Execute Locally and Validate Queue Output

1. Run function locally in Visual Studio.
2. Invoke local HTTP endpoint from browser.
3. Expected output behavior: function writes message welcome to Azure Functions into remote queue.

## RBAC Troubleshooting Sequence Shown

1. On queue view, permissions issue appears when trying to inspect queue/messages.
2. Go to Access Control (IAM) -> Role assignments.
3. First attempt: assign Storage Queue Data Reader role.
4. Result: still cannot view queue content in demo.
5. Second attempt: assign Storage Queue Data Contributor style role (higher permission set in narration).
6. Result: queue message visibility works.

## Final Validation Behavior

1. After permission fix, queue shows message text written by local function run.
2. Repeated page refreshes after multiple invocations show additional queued messages.
3. Key point reiterated: app was published, but current test execution is local and still writes to remote queue due to connection setting choice.

## Cleanup Mentioned

1. End-of-video cleanup deletes created Resource Group and related resources (Function App, plan, storage).

## Overall Takeaway

1. Local Function App execution can use remote Azure Queue output binding by deliberately mapping local settings to remote connection strings.
2. Binding configuration must align with an existing queue name in target storage account.
3. RBAC role choice affects ability to inspect queue content during validation.

