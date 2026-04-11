# AWS Lambda - First Hands On

## Pointwise No-Loss Summary

1. Hands-on starts in Lambda console.
2. Instructor recommends using the introductory UI path ending with `/begin` to visualize Lambda behavior.
3. Intro UI demonstrates Lambda code runtime options and event-driven scaling concepts.

## Intro Visual Demo (Lambda Begin Experience)

1. Lambda runtimes shown include .NET, Java, Node.js, Python, Ruby, and custom runtime.
2. Demo runs Node.js sample and returns "Hello from Lambda".
3. Event sources in visualization trigger Lambda function executions.
4. Increasing event input in demo increases displayed Lambda scaling units.
5. Main takeaway: Lambda scales automatically with incoming events.
6. Cost concept shown:
   - starts with free-tier usage,
   - increases with invocation volume.

## Creating First Lambda Function

1. In console, choose Create Function.
2. Use blueprint approach with Hello World template.
3. Runtime selected in demo: Python.
4. Function name used: HelloWorld.
5. Execution role setup:
   - create new role,
   - use basic Lambda permissions.
6. Create function.

## Code and Handler Concept

1. Created function includes starter code and handler.
2. Handler executes when Lambda receives an event.
3. Example event contains keys key1/key2/key3 with values.
4. Sample code returns first key value (value1 in provided event).

## Testing in Console

1. Use Test button to run function.
2. Success case returns expected value from input JSON.
3. Failure case demo:
   - remove expected key,
   - function errors because exception handling for missing key is absent.
4. Revert input and test again.
5. Save named test event for repeated execution.

## Monitoring and Logs

1. Monitoring tab provides invocation metrics from CloudWatch.
2. Metrics may take time to appear.
3. View CloudWatch Logs opens log streams for execution details.
4. Logs show both successful responses and triggered error stack/output.
5. CloudWatch logs are used for debugging Lambda runs.

## Configuration Areas Highlighted

1. General configuration includes:
   - memory,
   - ephemeral storage,
   - timeout,
   - execution role.
2. Execution role inspected in IAM.
3. Basic role policy shown to allow CloudWatch Logs actions.
4. To access other AWS services (for example S3), add permissions to Lambda execution role.

## Permissions and Triggers

1. Permissions section summarizes allowed actions/resources.
2. Trigger section initially empty.
3. Add Trigger shows many AWS and partner event sources.
4. Example trigger type discussed: S3 (requires bucket and event type selection).

## Overall Takeaway

1. Lecture gives end-to-end intro of creating, testing, monitoring, and configuring Lambda.
2. Service has many additional advanced settings not fully covered in this intro lecture.
