# Using Lifecycle Rules

## Pointwise No-Loss Summary

1. Lifecycle management automates object movement/deletion over time.
2. Main objectives:
   - performance-aligned tier placement,
   - storage-cost optimization,
   - retention/expiration automation.

## Lifecycle Concepts

1. Transition:
   - move object between storage classes based on age/criteria.
2. Expiration:
   - automated deletion behavior after defined retention period.

## Example Lifecycle Timeline Presented

1. Day 1:
   - upload object to Standard.
2. Day 45:
   - transition to Standard-IA.
3. Day 90:
   - transition to Glacier.
4. Day 365:
   - expire/delete object.

## Supported Transition Direction

1. Lifecycle transitions move toward colder/lower-cost classes.
2. Lifecycle does not support moving objects back up to hotter classes.
3. Certain class-specific constraints/minimum-duration rules apply (for example IA minimum-duration implications and transition timing restrictions).

## Rule Scoping Options

1. Entire bucket.
2. Prefix-filtered subsets.
3. Tag-filtered subsets.
4. Size-filtered subsets.
5. Combinations of filters.

## Lifecycle Actions Mentioned

1. Transition current versions.
2. Transition non-current versions (versioned buckets).
3. Expire current versions.
4. Permanently delete non-current versions.
5. Remove expired delete markers.
6. Abort incomplete multipart uploads.

## Versioning Interaction

1. Non-versioned bucket expiration deletes object directly.
2. Versioned bucket expiration creates delete marker as latest version behavior.

## Conflict Handling Priorities Mentioned

1. Expiration/deletion actions take precedence over transitions.
2. Transition actions take precedence over creating delete markers.
3. Specific class-priority behavior applies when object matches multiple eligible transitions.

## Outcome

1. Learner gains practical rule-design framework for automated tiering and retention control in S3.
