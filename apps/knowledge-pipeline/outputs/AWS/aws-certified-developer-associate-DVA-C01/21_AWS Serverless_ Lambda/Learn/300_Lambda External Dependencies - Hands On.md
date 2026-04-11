# Lambda External Dependencies - Hands On

## Pointwise No-Loss Summary

1. Hands-on packages Node.js Lambda code with external dependency and deploys via CLI.
2. Demonstrates IAM permission troubleshooting and X-Ray trace verification.

## Prepare Build Environment

1. Use AWS CloudShell (comes with AWS CLI/NPM environment ready).
2. Create working folder (example: Lambda).
3. Add function source file index.js containing:
   - aws-xray-sdk-core dependency usage,
   - AWS SDK S3 ListBuckets call.

## Install Dependency and Package Artifact

1. Run npm install for X-Ray SDK dependency.
2. node_modules and package-lock.json are created.
3. Adjust file permissions as needed.
4. Zip code and dependencies into deployment artifact (example: function.zip).

## Create Execution Role and Deploy via CLI

1. Create IAM role for Lambda with basic execution permissions.
2. Capture role ARN.
3. Run aws lambda create-function CLI command using:
   - function name,
   - runtime,
   - handler,
   - role ARN,
   - zip artifact.
4. Function appears in Lambda console with packaged files.

## Initial Test and Permission Errors

1. Test invocation initially fails with S3 AccessDenied because role lacks S3 read permissions.
2. Enable active X-Ray tracing in function config.
3. Add required IAM permissions:
   - X-Ray write permissions,
   - S3 read/list permissions (for ListBuckets).
4. After IAM propagation delay, test succeeds and returns bucket list.

## X-Ray Verification

1. Open X-Ray service map after invocations.
2. Trace graph shows:
   - client invoking Lambda,
   - Lambda invoking S3.
3. Failed traces show 403 AccessDenied period from earlier tests.
4. Successful traces show normal S3 operation timing.

## Practical Takeaway

1. Packaging dependencies + correct IAM + tracing gives full operational visibility for Lambda integrations.
