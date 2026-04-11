# Lambda Versions and Aliases - Hands On

## Pointwise No-Loss Summary

1. Hands-on creates immutable versions and mutable aliases for controlled rollout.
2. Demonstrates weighted alias routing between versions.

## Create Base Function and Publish Version 1

1. Create function lambda-version-demo (Python runtime).
2. Set code response to "this is version one".
3. Deploy and test successfully.
4. Publish new version -> version 1.
5. Version 1 view is read-only for code edits.

## Update Code and Publish Version 2

1. Return value changed to "this is version two" in editable function state.
2. Deploy and test.
3. Publish new version -> version 2.
4. Version 2 is immutable/read-only after publish.

## Create Aliases

1. Create dev alias pointing to $LATEST for rapid iteration.
2. Create test alias pointing to version 2.
3. Create prod alias pointing to version 1 (stable baseline).
4. Invoke/test aliases to verify expected version outputs.

## Weighted Alias Deployment

1. Edit prod alias to use weighted routing between v1 and v2.
2. Demo uses 50/50 split for visibility.
3. Repeated test invocations return mix of version-one and version-two outputs.

## Final Promotion

1. After confidence in new version, remove weighted split.
2. Point prod alias fully to version 2.
3. Prod traffic now entirely served by version 2.

## Practical Takeaway

1. Version + alias model enables safe release lifecycle from dev to test to prod with optional canary traffic shifting.
