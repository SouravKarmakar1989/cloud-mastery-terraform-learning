# Manually Run a Non-HTTP Triggered Function

## Pointwise No-Loss Summary

1. The video demonstrates manually triggering a non-HTTP function using Postman.
2. Motivation: test non-HTTP triggers without placing real files/messages in source services.

## Demo Environment Setup

1. Create new Resource Group (example wording: RG non-http).
2. Create new Function App in that Resource Group:
	- .NET 6,
	- Australia East,
	- naming example includes function app non-http + initials.
3. Create new Service Bus in same Resource Group:
	- Australia East,
	- Standard tier in demo.
4. In Service Bus, create queue named q/queue wording used in setup.
5. In Function App, create new function based on Service Bus queue trigger.
6. Create/select Service Bus connection during trigger setup.
7. Set queue name accordingly and create function.

## Non-HTTP Admin Invocation URL Construction

1. Use Microsoft docs guidance for non-HTTP invocation endpoint.
2. Build URL as:
	- host (Function App public URL),
	- plus /admin/functions,
	- plus function name.
3. Final shape shown in demo: <function-app-url>/admin/functions/<function-name>.

## Postman Request Requirements

1. Use POST method (required for manual trigger in this scenario).
2. Add headers:
	- x-functions-key,
	- Content-Type: application/json.
3. For x-functions-key value, copy master key from Function App -> App keys.
4. Add JSON body payload (example used: input = test).

## Response and Validation Flow

1. Initial request response shown as success (200 in one attempt).
2. Subsequent request shown as 202 Accepted.
3. Open Application Insights live metrics to observe incoming request/trigger activity.
4. Validate that payload value (test) appears in logging/telemetry.
5. Alternative validation location: Function -> Monitor tab.
6. Monitor data may take up to around 5 minutes to appear.

## Practical Outcome Explained

1. Non-HTTP triggers can be tested manually through admin endpoint.
2. This avoids needing to place real queue messages/files for every test cycle.
3. Useful for faster functional verification during development.

## Cleanup Mentioned

1. Delete non-http Resource Group at end to remove created resources.

## Overall Takeaway

1. The Function App admin endpoint plus app key enables controlled manual triggering of non-HTTP functions.
2. Correct URL format, POST method, required headers, and payload are the essential steps.
3. Validation should include telemetry/monitor checks because execution evidence may appear with slight delay.

