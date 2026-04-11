# Student Challenge Solution - Securing Access to Your Bucket

## Pointwise No-Loss Summary

1. Challenge objective is to make website assets publicly accessible using bucket-policy path.
2. Solution performs required security-setting adjustments and validates public object access.

## Step 1: Adjust Block Public Access

1. Open target bucket permissions.
2. Disable full block-public posture as needed for policy-based public access.
3. Keep ACL-related public blocks enabled in this pattern so public exposure is controlled through bucket policy only.

## Step 2: Add Public Read Bucket Policy

1. Edit bucket policy.
2. Grant public principal read action for object resources in target bucket scope.
3. Save policy successfully.

## Step 3: Validate Access

1. Open object URLs from website asset prefixes/files.
2. Confirm objects are retrievable publicly after policy application.

## Key Clarification

1. Public access works because BPA and policy are aligned intentionally.
2. ACL path remains restricted in this solution pattern.

## Outcome

1. Learner successfully enables controlled public read access for website assets while preserving policy-centric governance.
