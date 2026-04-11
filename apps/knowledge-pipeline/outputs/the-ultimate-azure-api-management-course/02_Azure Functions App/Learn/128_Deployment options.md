# Deployment Options for Function App

## Pointwise No-Loss Summary

1. The video gives an overview of deployment technologies for Function App code.
2. It groups deployment approaches into three broad categories.

## Deployment Categories Covered

1. Tools-based deployment:
	- Visual Studio,
	- Visual Studio Code,
	- Core Tools publish.
2. This is positioned as best fit for local development workflows.
3. App Service managed deployment:
	- Deployment Center source-control integration,
	- container-based deployment scenarios.
4. External pipeline deployment:
	- Azure Pipelines,
	- GitHub Actions.
5. External pipelines are positioned as strong fit for production because validation/testing/automation steps can be included.
6. Video also suggests extending pipeline model to test/staging environments, not only production.

## Hosting Plan + OS Compatibility Constraint

1. Deployment technology availability depends on combination of:
	- hosting plan,
	- operating system.
2. Not all deployment methods are supported in all combinations.
3. Specific examples called out:
	- Windows does not support Docker-container path in this context,
	- Linux Consumption supports fewer deployment options.

## Additional Deployment Notes Mentioned

1. Some technologies are not recommended in the video context:
	- external package URL,
	- local git,
	- cloud sync,
	- SFTP.
2. Reason stated: they can require manual trigger sync steps.
3. In-portal editing may be unavailable when app is deployed as package.
4. Visual Studio / VS Code deployments are identified as zip deploy method under the hood.

## Overall Takeaway

1. Pick deployment method based on environment and operational maturity.
2. Validate method support against hosting plan + OS combination before implementation.
3. For production-grade delivery, external pipelines offer stronger automation and control patterns.

---

