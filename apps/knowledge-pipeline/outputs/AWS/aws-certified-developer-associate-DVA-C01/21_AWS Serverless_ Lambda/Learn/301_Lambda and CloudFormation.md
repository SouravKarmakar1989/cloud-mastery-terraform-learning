# Lambda and CloudFormation

## Pointwise No-Loss Summary

1. CloudFormation can deploy Lambda functions using two main code packaging approaches.
2. Choice depends on function complexity and dependency needs.

## Approach 1: Inline Code

1. Lambda code can be embedded directly in CloudFormation template via ZipFile-style property.
2. Suitable for very small/simple functions.
3. Limitation noted: not practical for dependency-heavy packaging.

## Approach 2: Zip in S3

1. Store Lambda deployment zip in S3.
2. Reference it in CloudFormation using code location fields:
   - S3 bucket,
   - S3 key,
   - optional/important object version.
3. Recommended to use versioned bucket so code updates are explicit.

## Update Behavior Note

1. If code changes in S3 but template location references do not change, CloudFormation may not update function code.
2. Using object version in template helps force deterministic updates.

## Multi-Account Deployment Pattern

1. Lambda code can reside in S3 bucket in one account.
2. CloudFormation in other accounts can deploy from that bucket if permissions are configured.
3. Required controls include:
   - bucket policy allowing access,
   - CloudFormation execution role permissions for list/get on source bucket.

## Overall Takeaway

1. S3-based packaging with versioned objects is the robust pattern for production-grade Lambda deployments through CloudFormation.
