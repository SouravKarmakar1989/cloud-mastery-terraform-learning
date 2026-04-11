# Using AWS CloudFormation to Manage S3 Buckets

## Pointwise No-Loss Summary

1. Lesson demonstrates infrastructure-as-code approach for creating/managing S3 buckets using CloudFormation.
2. It emphasizes avoiding manual console drift by keeping bucket configuration changes in template code.

## Template Concepts Shown

1. Parameterized inputs (for example bucket name, KMS key ARN).
2. Bucket resource properties defined declaratively:
   - access posture,
   - default encryption,
   - public-access block settings,
   - tags,
   - versioning configuration.

## Deployment Workflow Demonstrated

1. Upload template and create stack in CloudFormation.
2. Provide input parameters.
3. Execute stack creation and verify resulting bucket settings in S3 console.

## Change Management Workflow Demonstrated

1. Modify template configuration (example: public-access block policy-related toggles).
2. Create change set for existing stack.
3. Review whether update is in-place modify vs replacement.
4. Execute change set and verify updated bucket configuration.

## Cleanup Workflow

1. Delete stack to remove managed resources (with normal S3 prerequisite that bucket must be empty before deletion).

## Outcome

1. Learner can use CloudFormation for repeatable S3 provisioning, safe updates, and clean teardown with IaC discipline.
