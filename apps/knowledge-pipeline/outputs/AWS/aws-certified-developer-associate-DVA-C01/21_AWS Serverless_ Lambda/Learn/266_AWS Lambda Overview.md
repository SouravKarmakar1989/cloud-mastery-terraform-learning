# AWS Lambda Overview

## Pointwise No-Loss Summary

1. Lecture compares EC2 model versus Lambda model.
2. EC2 requires server provisioning, fixed compute sizing, and active server management.
3. Lambda is function-based with no server management by the developer.
4. Lambda executions are time-bounded (up to 15 minutes).
5. Lambda runs on demand and charges only when invoked.
6. Lambda scaling and concurrency provisioning are automatic.

## EC2 vs Lambda Comparison

1. EC2:
   - provision virtual servers,
   - choose CPU/memory capacity upfront,
   - instances generally run continuously,
   - scaling requires Auto Scaling group setup and management.
2. Lambda:
   - deploy code only,
   - no server fleet administration,
   - execution triggered by events/invocations,
   - idle periods incur no runtime charges,
   - AWS handles concurrency scaling.

## Lambda Benefits Highlighted

1. Simple pricing model based on requests and compute duration.
2. Generous free tier:
   - 1 million requests,
   - 400,000 GB-seconds compute time per month.
3. Broad integration with many AWS services.
4. Multi-language support.
5. Easy monitoring through CloudWatch.
6. Function memory can go up to 10 GB.
7. Increasing memory also increases available CPU/network performance.

## Runtime and Packaging Support Mentioned

1. Built-in language examples: Node.js, Python, Java, C# (.NET Core), PowerShell, Ruby.
2. Additional languages possible via custom runtime API (example: Rust, Go).
3. Lambda can run container images using Lambda Runtime API.
4. Exam guidance: for container workloads, ECS/Fargate is generally preferred answer over Lambda container images.
5. Most exam-relevant Lambda languages called out: Node.js and Python.

## Integration Examples Mentioned

1. API Gateway invokes Lambda for REST APIs.
2. Kinesis can use Lambda for stream transformation.
3. DynamoDB triggers invoke Lambda on table events.
4. S3 event notifications invoke Lambda on object events.
5. CloudFront integration via Lambda@Edge.
6. CloudWatch Events/EventBridge invoke Lambda for infrastructure automation reactions.
7. CloudWatch Logs can stream to Lambda targets.
8. SNS topics can trigger Lambda.
9. SQS queues can be processed by Lambda.
10. Cognito can trigger Lambda on identity lifecycle events.

## End-to-End Example: Thumbnail Generator

1. Image uploaded to S3.
2. S3 event notification triggers Lambda.
3. Lambda generates thumbnail.
4. Lambda uploads thumbnail to same or another S3 bucket.
5. Lambda writes image metadata (name, size, creation date, etc.) to DynamoDB.

## End-to-End Example: Serverless CRON

1. Traditional CRON requires always-on server (for example EC2).
2. Serverless replacement uses EventBridge/CloudWatch Events scheduled rule.
3. Scheduled rule triggers Lambda every defined interval (for example hourly).
4. Removes need for dedicated continuously running cron server.

## Pricing Details Mentioned in Lecture

1. First 1 million requests are free.
2. Additional requests priced at $0.20 per 1 million requests.
3. Duration billed per 1 ms increments.
4. First 400,000 GB-seconds are free monthly.
5. 400,000 GB-seconds equals 400,000 seconds at 1 GB memory.
6. With 128 MB memory, equivalent free execution seconds are proportionally higher.
7. Example post-free-tier reference given as $1 per 600,000 GB-seconds.
8. Overall takeaway: Lambda pricing is usually very inexpensive for many workloads.

## Lecture Transition

1. Next step is hands-on to observe Lambda behavior directly.
