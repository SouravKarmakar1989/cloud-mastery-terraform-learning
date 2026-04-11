# Lambda and Application Load Balancer Hands On

## Pointwise No-Loss Summary

1. Hands-on demonstrates integrating a Lambda function with an Application Load Balancer (ALB).
2. Flow includes creating Lambda, ALB, Lambda target group, and verifying browser response behavior.
3. Lecture also shows ALB request event shape in Lambda logs and invocation permissions.

## Create Lambda Function

1. Create Lambda function named Lambda-alb.
2. Runtime selected: Python 3.
3. Initial generated code returns status 200 and body "hello from Lambda".

## Create Application Load Balancer

1. Create internet-facing ALB named demo-Lambda-alb.
2. IP type: IPv4.
3. Deploy across three Availability Zones.
4. Create/select security group for ALB (example: DemoLambdaALBSG).
5. Inbound rule allows HTTP (port 80) from anywhere IPv4.
6. Listener configured for HTTP on port 80.

## Create Lambda Target Group

1. Create target group type Lambda.
2. Target group name example: demo-tg-lambda.
3. Register Lambda-alb function in this target group.
4. Attach target group as ALB default action.
5. Create ALB and wait until status is Active.

## Initial Lambda Test

1. Create and save Lambda console test event.
2. Run test and confirm response includes statusCode 200 and body content.
3. Add event logging to function code:
   - use print(event) in Python.
4. Deploy and retest to capture incoming event payload in logs.

## Validate Through ALB DNS Endpoint

1. Open ALB DNS name in browser.
2. Initial behavior causes response download/content-type mismatch style behavior.
3. Update Lambda response to ALB-compatible JSON format from AWS documentation, including:
   - statusCode,
   - statusDescription,
   - isBase64Encoded,
   - headers,
   - body.
4. Set Content-Type header to text/html.
5. Redeploy Lambda and refresh ALB URL.
6. Browser now renders body text directly (for example, "hello from Lambda").

## Inspect ALB Event Payload in CloudWatch Logs

1. Open Lambda monitoring/log stream.
2. Review printed JSON event from ALB invocation.
3. Event includes path, HTTP method, query string parameters, and headers.
4. Event structure matches AWS documentation for ALB-to-Lambda request format.

## Multi-Value Headers Option

1. In target group attributes, ALB multi-value headers can be enabled.
2. Enables multiple values per same header/query key.
3. Enabling this requires corresponding Lambda request/response handling adjustments.
4. Demo mentions disabling it again after showing option.

## Permissions and Invocation Authorization

1. Lambda configuration shows ALB trigger attached.
2. Lambda permissions include resource-based policy statement allowing ALB invocation.
3. Full JSON policy can be viewed from permissions area.

## Cleanup Mentioned

1. Delete load balancer after hands-on to avoid unnecessary resources/cost.
