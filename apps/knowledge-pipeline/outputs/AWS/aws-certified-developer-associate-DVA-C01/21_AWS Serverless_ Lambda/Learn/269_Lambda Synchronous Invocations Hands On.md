# Lambda Synchronous Invocations Hands On

## Pointwise No-Loss Summary

1. Console Test button is demonstrated as a synchronous Lambda invocation.
2. Synchronous means caller waits for completion and receives immediate execution result.
3. If execution duration were long (example: two minutes), caller would wait for full completion.

## Console-Based Synchronous Invocation

1. Existing Lambda function is tested in console.
2. Test execution returns output in same UI window.
3. This confirms request-response behavior of synchronous invocation.

## CLI-Based Synchronous Invocation Setup

1. Demo uses AWS CloudShell (region-supported), but local terminal AWS CLI is also valid.
2. AWS CLI availability/version is verified.
3. CLI version shown in lecture context is v2.
4. Instructor notes command differences may exist with older CLI v1 syntax.

## Listing Lambda Functions via CLI

1. Use Lambda list functions command to verify function exists in region.
2. Region flag is important when using local CLI.
3. Output includes function details such as:
   - function name,
   - function ARN,
   - runtime.

## Performing Synchronous CLI Invocation

1. Invocation command is taken from provided script reference (synchronous.sh in course code).
2. Command passes payload JSON and writes function response to output file.
3. Initial invocation fails due to wrong function name.
4. Function name is corrected from hello-world style value to actual demo function name used in environment.
5. Re-run succeeds and returns HTTP status code 200.
6. Output file content shows returned value (value1), confirming successful synchronous invocation.

## Practical Takeaway

1. Both console tests and CLI invoke calls are synchronous patterns.
2. Common troubleshooting step is validating exact function name and region settings.
