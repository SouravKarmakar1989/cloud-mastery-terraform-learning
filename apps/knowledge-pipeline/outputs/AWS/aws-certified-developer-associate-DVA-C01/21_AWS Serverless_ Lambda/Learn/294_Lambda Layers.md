# Lambda Layers

## Pointwise No-Loss Summary

1. Lambda Layers provide reusable package components for Lambda functions.
2. Two primary uses are highlighted:
   - custom runtimes,
   - dependency externalization and reuse.

## Use Case 1: Custom Runtimes

1. Layers can provide runtime support for languages not natively packaged in standard Lambda runtime list.
2. Examples mentioned include C++ and Rust through community/runtime layer approaches.

## Use Case 2: Dependency Externalization

1. Without layers, each deployment package must include dependencies repeatedly.
2. Large dependency bundles make package updates heavier.
3. Layers separate heavy libraries from frequently changing function code.
4. Function package can remain small while referencing one or more shared layers.

## Benefits of Layers

1. Faster iteration/deployment of function code changes.
2. Reduced repeated packaging of unchanged dependencies.
3. Reuse of common dependencies across multiple Lambda functions.
4. Clear separation between app code and shared libraries.

## Packaging Model Framing

1. Function code package can be lightweight.
2. Heavy libraries are put into one or more layers.
3. Multiple functions can reference same layers.

## Overall Takeaway

1. Layers are a modular dependency/runtime mechanism that improves maintainability and deployment efficiency.
