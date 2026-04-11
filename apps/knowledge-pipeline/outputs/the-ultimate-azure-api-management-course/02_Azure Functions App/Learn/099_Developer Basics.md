# Azure Functions Developer Basics

## Pointwise No-Loss Summary

1. The video explains core Function App concepts.
2. The instructor states these concepts stay the same regardless of chosen language or binding type.

## Function App and Function Relationship

1. The demo opens an early Function App that currently has no functions.
2. Without functions, there is nothing user-defined to execute in the app.
3. The Function App URL can still be reached and indicates the app is running.
4. However, no custom code executes until at least one function is created.
5. A function is described as the cornerstone of execution in Function App.

## Creating and Inspecting a Function

1. The instructor creates an HTTP function in the Function App.
2. After creation, the code page shows files including:
   - README,
   - run.csx,
   - function.json.
3. run.csx is shown as the C# code file for the function.
4. The function is tested with HTTP GET and output is shown in the output tab.

## When to Use Portal Editor vs Local Development

1. Portal inline editor is acceptable for simple and straightforward functions.
2. For more complex scenarios (more triggers/bindings and integration needs), use local development tools.
3. Tools suggested include Visual Studio Code, Visual Studio, or another IDE depending on language.

## function.json Concepts Explained

1. function.json contains trigger and binding configuration for the function.
2. For compiled languages, function.json is generated automatically.
3. For scripting languages, function.json must be defined manually.
4. The structure includes key parts such as:
   - binding/trigger name,
   - trigger type (example shown: HTTP trigger),
   - direction.

## Multi-Language Functions in One Function App

1. The instructor addresses whether one Function App can contain functions in multiple languages.
2. Historical note: this was previously allowed.
3. Current rule: this is not allowed now.
4. Current expectation: all functions inside one Function App must use the same language.
5. This behavior is aligned with Microsoft documentation referenced in the video.

## Overall Takeaway

1. Function App runtime availability alone is not enough; function creation is required for custom execution.
2. Core files and trigger/binding configuration are foundational to how each function operates.
3. For production-like complexity, local development tooling is preferred over portal-only editing.

