# Lambda Layers - Hands On

## Pointwise No-Loss Summary

1. Hands-on demonstrates adding an AWS-managed layer to satisfy missing Python dependency.
2. Example dependency is pandas used by function code.

## Create Lambda Function

1. Create function named lambda-layer-demo.
2. Runtime selected: latest available Python in demo (example: 3.13).

## Deploy Code That Uses External Library

1. Replace function code with sample that imports pandas and processes data.
2. Deploy function.
3. Test invocation fails with module import error because pandas is not present in base package.

## Add AWS Layer

1. Open function Layers section and choose Add a layer.
2. Select AWS layers source.
3. Choose AWS SDK for pandas layer matching runtime version (example: AWSSDKPandas-Python313).
4. Add layer to function.

## Retest Function

1. Invoke function again.
2. Execution succeeds now that pandas dependency is provided through layer.
3. Output contains filtered data as expected by sample logic.

## Practical Takeaway

1. Layers are effective for packaging complex dependencies once and reusing them without embedding library contents directly in each function bundle.
