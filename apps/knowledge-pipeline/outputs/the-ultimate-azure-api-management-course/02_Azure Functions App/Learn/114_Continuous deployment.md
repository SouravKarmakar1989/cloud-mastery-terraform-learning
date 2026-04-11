# Continuous Deployment for Function App

## Pointwise No-Loss Summary

1. The video demonstrates continuous deployment for Azure Function Apps.
2. It starts with the common CI/CD model: repository + branch linkage to deployment target.
3. A specific organizational scenario is highlighted:
   - environments may be split across different subscriptions,
   - in that case, separate Function Apps per environment can be more practical than deployment slots.

## Environment Model Built in the Demo

1. Create one Resource Group (example: RG CI CD).
2. Create three Function Apps representing environments:
   - dev function app,
   - qa function app,
   - prod function app.
3. Common settings used in demo for each app:
   - .NET 6,
   - Australia East.

## Code Repository and Branch Setup

1. In Visual Studio, create new Function App project (example naming: CI CD function app + initials).
2. Project settings: .NET 6, HTTP trigger, Anonymous.
3. Create Azure DevOps project for repos/pipelines context.
4. In Visual Studio at solution level, create Git repo and push to Azure DevOps.
5. Important warning from demo:
   - choose project folder path (not solution folder path) when setting local path,
   - otherwise deployment/runtime issues can occur.
6. Create and push three branches in Azure DevOps:
   - dev,
   - qa,
   - prod.

## Deployment Center Branch Binding

1. For dev Function App:
   - open Deployment Center,
   - connect to Azure DevOps org/project/repo,
   - select dev branch,
   - save and monitor deployment logs.
2. For qa Function App:
   - same process,
   - bind to qa branch.
3. For prod Function App:
   - same process,
   - bind to prod branch.

## Initial Verification

1. After deployment completes, each Function App exposes Function1.
2. Function URL checks show same baseline response across dev/qa/prod before any code change.

## Change Promotion Walkthrough

1. In Visual Studio, update response text to version 1 message.
2. Push change to dev branch.
3. Dev Function App deployment center shows new deployment triggered automatically.
4. After completion, dev function response reflects version 1.
5. qa/prod remain unchanged because they are bound to different branches.
6. Create pull request to move change from dev branch to qa branch.
7. Complete PR.
8. QA Function App deployment triggers automatically and then shows version 1 response.
9. Create pull request from qa branch to prod branch.
10. Complete PR.
11. Prod Function App deployment triggers automatically and then shows version 1 response.

## Architecture Pattern Reiterated

1. Separate Function App per environment.
2. Each app listens to its environment branch:
   - dev app -> dev branch,
   - qa app -> qa branch,
   - prod app -> prod branch.
3. This enables independent controlled change flow across environments.

## Cleanup Mentioned

1. Delete CI CD Resource Group at end to remove all created resources.

## Overall Takeaway

1. Branch-to-environment Function App binding provides straightforward continuous deployment progression from dev to qa to prod.
2. Promotion is managed through pull requests between environment branches.
3. Deployment Center logs and Function URL checks provide direct verification at each stage.

