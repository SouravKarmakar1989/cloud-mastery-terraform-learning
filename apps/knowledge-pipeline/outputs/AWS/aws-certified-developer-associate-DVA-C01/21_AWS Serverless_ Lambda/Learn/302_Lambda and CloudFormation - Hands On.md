# Lambda and CloudFormation - Hands On

## Pointwise No-Loss Summary

1. Hands-on deploys Lambda function using CloudFormation template that pulls zip code from versioned S3 object.
2. Template also creates execution role and enables X-Ray tracing.

## Review Template Structure

1. Template parameters include:
   - S3 bucket,
   - S3 key,
   - S3 object version.
2. Template resources include IAM role for Lambda execution.
3. Role policy grants:
   - CloudWatch Logs actions,
   - X-Ray write actions,
   - S3 read/list actions.
4. Lambda resource defines:
   - handler,
   - role ARN reference,
   - S3 code location references,
   - runtime,
   - timeout,
   - tracing mode active.

## Prepare S3 Artifact

1. Create S3 bucket for CloudFormation Lambda package.
2. Enable bucket versioning.
3. Upload function.zip artifact.
4. Capture uploaded object version ID.

## Create CloudFormation Stack

1. Open CloudFormation and create new stack from uploaded template file.
2. Provide stack name.
3. Set parameter values:
   - bucket name,
   - key (function.zip),
   - object version ID.
4. Acknowledge IAM resource creation and launch stack.
5. Wait for CREATE_COMPLETE.

## Validate Result

1. Lambda function appears in console as CloudFormation-managed resource.
2. Code package is present.
3. Test invocation succeeds and returns expected S3 list output.
4. X-Ray tracing is enabled in function configuration.
5. X-Ray traces can be observed after invocations.

## Cleanup Mentioned

1. Deleting CloudFormation stack cleans associated Lambda/IAM resources created by template.
