# Build and Deploy Using Azure Pipelines

## Pointwise No-Loss Summary

1. The video demonstrates continuous delivery using Azure Pipelines.
2. Goal stated: have build, test, and deployment flow in one place.

## Resource and Pipeline Setup

1. Create new Resource Group (example wording: RG CI CD).
2. Create Function App (example naming: function app azure pipeline + initials).
3. Runtime/region used in demo:
	- .NET 6,
	- Australia East.
4. In Azure DevOps repos, reuse repository created in the previous video.
5. Create pipeline using template for .NET Core Function App deployment to Windows Azure.
6. Select Azure subscription.
7. Select newly created Function App as deployment target.
8. Generate pipeline YAML file.

## YAML Adjustment Mentioned

1. Generated pipeline task version is adjusted.
2. Update Azure Function App task from version 1 to version 2.
3. Reason given: version 2 has enhanced validations and is less likely to fail.

## Pipeline Execution Flow

1. Save and run pipeline.
2. Build stage completes.
3. Approve deploy stage.
4. Deploy stage completes.

## Post-Deployment Verification

1. Deployment logs show app setting added to Function App:
	- WEBSITE_RUN_FROM_PACKAGE = true.
2. In Function App overview, deployed function appears.
3. Open Function1 URL and verify response.
4. Response shows expected version message from deployed code.

## Additional Notes Mentioned

1. Same approach can be extended to multiple environments via multiple stages or separate pipelines.
2. With proper approvals, promotions can be controlled per stage.
3. Documentation includes YAML samples for:
	- Function App deployment,
	- container deployment,
	- slot deployment and swap workflows.

## Cleanup Mentioned

1. Delete CI CD Resource Group at end to remove created resources.

## Overall Takeaway

1. Azure Pipelines provides an end-to-end CI/CD path for Function Apps using generated YAML plus small task-version hardening.
2. Build/deploy stage execution and Function URL validation confirm successful delivery.
3. The pattern can be expanded for controlled multi-stage environment promotions.

