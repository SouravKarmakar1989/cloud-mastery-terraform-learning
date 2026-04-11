# Create Azure Functions App in Azure Portal

## Pointwise No-Loss Summary

1. The video demonstrates how to create an Azure Function App using the Azure portal.
2. The instructor starts by creating a new Resource Group first.
3. Example Resource Group name used: RG Sydney Dev.
4. Example region used for the Resource Group: Australia East.
5. After creating the Resource Group, the next step is creating a Function App resource.

## Function App Creation Inputs Mentioned

1. Select the previously created Sydney Resource Group.
2. Enter a Function App name (example wording used: Azure Portal function app).
3. Add initials at the end of the Function App name to make it unique.
4. Choose the code-based option for the app.
5. Set runtime stack to .NET version 6.
6. Set region to Australia East.
7. Set operating system to Windows.
8. Use Consumption plan with default values.

## Tab-by-Tab Configuration Flow Mentioned

1. Storage tab:
	- A new storage account is required.
	- Create the storage account in the same Sydney Resource Group.

2. Networking tab:
	- Enable public access to the Function App.

3. Monitoring tab:
	- Enable Application Insights for Function App monitoring.
	- Keep monitoring region as Australia East.

4. Deployment tab:
	- Disable continuous deployment for now.

5. Final create action:
	- Scroll down and create the Function App.

## Post-Creation Validation Mentioned

1. The Function App creation completes successfully.
2. Open the created Function App resource.
3. Open (hit) the Function App URL.
4. Verify that the Function App is up and running.

## Overall Takeaway

1. The creation workflow in Azure portal is a guided sequence: Resource Group, Function App basics, Storage, Networking, Monitoring, Deployment, then Create.
2. Required supporting components (especially storage and monitoring) are configured during the same flow.
3. A quick URL check after deployment confirms successful provisioning and availability.

