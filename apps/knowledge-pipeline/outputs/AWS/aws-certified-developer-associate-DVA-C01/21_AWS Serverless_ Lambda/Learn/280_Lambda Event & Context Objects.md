# Lambda Event and Context Objects

## Pointwise No-Loss Summary

1. Lambda handlers receive two key inputs: event object and context object.
2. They are different but complementary.
3. Event object carries invocation payload data.
4. Context object carries invocation/runtime metadata.

## Event Object

1. Event object is JSON-formatted input describing what Lambda should process.
2. Content depends on invoking service (EventBridge, SQS, SNS, etc.).
3. Includes service-specific data such as source and region fields.
4. Runtime maps JSON into language-native structure.
5. Python example given: event becomes dictionary-like object.
6. Input arguments and service payload details are read from event object.

## Context Object

1. Context object provides invocation metadata and runtime environment info.
2. Passed to function at runtime alongside event.
3. Typical fields mentioned include:
   - AWS request ID,
   - function name,
   - function ARN,
   - memory limit in MB,
   - log stream name,
   - log group name.
4. Context may also provide helper methods depending on runtime.

## Example Handler Framing

1. Python handler signature includes both event and context parameters.
2. Event is used for business payload details.
3. Context is used for execution metadata/tracing details.

## Exam-Oriented Takeaway

1. Must distinguish whether a requested value comes from event or context.
2. Correct source selection (event vs context) is an exam-relevant skill.
