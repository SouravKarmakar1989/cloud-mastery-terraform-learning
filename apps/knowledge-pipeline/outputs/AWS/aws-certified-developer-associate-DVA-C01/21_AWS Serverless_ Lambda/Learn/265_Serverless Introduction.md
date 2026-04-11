# Serverless Introduction

## Pointwise No-Loss Summary

1. Serverless means developers do not manage servers directly.
2. It does not mean servers do not exist.
3. Early serverless concept focused on Function as a Service (FaaS).
4. Over time, serverless scope expanded to remotely managed services.
5. Databases, messaging, and storage can all be serverless when no server provisioning is required.
6. Core idea is hidden infrastructure with on-demand managed scaling.

## Reference Serverless Architecture Mentioned

1. Users access static content from S3 website hosting or CloudFront plus S3.
2. Users authenticate through Cognito.
3. Users call REST APIs through API Gateway.
4. API Gateway invokes Lambda functions.
5. Lambda stores and retrieves data in DynamoDB.

## Services Included in Serverless Scope (AWS)

1. AWS Lambda.
2. Amazon DynamoDB.
3. Amazon Cognito.
4. Amazon API Gateway.
5. Amazon S3.
6. Amazon SNS.
7. Amazon SQS.
8. Kinesis Data Firehose.
9. Aurora Serverless.
10. AWS Step Functions.
11. AWS Fargate (serverless ECS option).

## Important Clarification

1. SNS and SQS were already encountered as managed services with automatic scaling.
2. They fit the serverless model because no servers are provisioned by the user.

## Section Direction

1. Section will heavily focus on Lambda-centric serverless knowledge.
2. Exam coverage on serverless is emphasized as heavy.
3. Next lecture starts detailed Lambda coverage.
