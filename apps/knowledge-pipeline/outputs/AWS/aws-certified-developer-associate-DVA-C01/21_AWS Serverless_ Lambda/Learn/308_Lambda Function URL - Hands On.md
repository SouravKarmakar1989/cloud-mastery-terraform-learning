# Lambda Function URL - Hands On

## Pointwise No-Loss Summary

1. Hands-on creates Lambda Function URL on alias target and invokes it publicly.
2. Demonstrates auth type NONE with auto-generated public resource policy.

## Create and Test Function

1. Create Lambda function (example name: lambda-demo-url) with Python runtime.
2. Create test event and invoke function.
3. Response returns HTTP-like payload with status 200 and body "Hello from Lambda".

## Publish Version and Create Alias

1. Publish function version (version 1).
2. Create alias dev pointing to version 1.

## Create Function URL

1. Open Function URL settings and choose Create Function URL.
2. Select AuthType NONE.
3. Console prepares/attaches resource policy allowing public invoke for this mode.
4. Optional CORS settings are available but not required in this demo.

## Invoke URL

1. Copy generated Function URL.
2. Open in browser.
3. Response shows function output (Hello from Lambda).

## Scope Constraint Demonstrated

1. Function URL cannot be added directly to numbered immutable version view.
2. It can be attached to alias or unpublished/latest function context.

## Practical Takeaway

1. Function URL provides very fast path to expose Lambda publicly with minimal setup.
2. Alias attachment keeps endpoint stable while allowing version management behind it.
