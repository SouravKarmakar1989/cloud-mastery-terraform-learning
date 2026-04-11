# Lambda Environment Variables - Hands On

## Pointwise No-Loss Summary

1. Hands-on creates Lambda function and reads environment variable at runtime.
2. Demonstrates changing output by updating config only (without code change).

## Create Function

1. Create function named lambda-config-demo.
2. Runtime selected: Python 3.8.

## Update Function Code

1. Import os module.
2. Use os.getenv to read ENVIRONMENT_NAME variable.
3. Return retrieved value from handler.
4. Deploy code.

## Configure Environment Variable

1. Open Lambda Configuration -> Environment variables.
2. Add key ENVIRONMENT_NAME with value dev.
3. Save configuration.
4. Encryption options are visible but not used in this demo.

## Test Result: First Value

1. Create/select test event.
2. Invoke function.
3. Response is dev, matching configured environment variable value.

## Change Variable Without Code Update

1. Edit ENVIRONMENT_NAME value from dev to prod.
2. Save environment settings.
3. Do not modify function code.
4. Invoke function again.
5. Response changes to prod.

## Practical Takeaway

1. Environment variables allow runtime behavior/config changes without redeploying code logic.
2. Useful for environment-specific configuration such as dev/prod values.
