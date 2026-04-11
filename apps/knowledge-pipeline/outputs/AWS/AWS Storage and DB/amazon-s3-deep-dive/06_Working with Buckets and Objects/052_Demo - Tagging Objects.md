# Demo - Tagging Objects

## Pointwise No-Loss Summary

1. Demo contrasts bucket tags vs object tags.
2. It shows how to apply tags to single and multiple objects, then use tag conditions in policy logic.

## Bucket Tagging Demonstration

1. Open bucket -> Properties -> Tags.
2. Add/edit tag key-value pairs at bucket level.
3. Clarification: bucket tags do not automatically tag contained objects.

## Object Tagging Demonstration

1. Open specific object -> Properties -> Tags.
2. Add multiple object-level tags (example patterns include environment/confidential/cost-center).
3. Save and verify object tag set.

## Multi-Object Tag Editing

1. Select multiple objects.
2. Use Actions -> Edit tags.
3. Apply shared tags in one operation.
4. Verify resulting object tags updated.

## Policy Condition Example Demonstrated

1. IAM-style policy example grants s3:GetObject only when object tag matches required key/value (environment=development in demo logic).
2. This demonstrates tag-based conditional access to objects in same bucket.

## Outcome

1. Learner can tag at correct scope and leverage object tags for policy-based access filtering.
