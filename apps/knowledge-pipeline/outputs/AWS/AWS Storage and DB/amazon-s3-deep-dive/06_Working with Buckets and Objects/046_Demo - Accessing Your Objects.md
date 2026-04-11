# Demo - Accessing Your Objects

## Pointwise No-Loss Summary

1. Demo retrieves object information and downloads objects via console and CLI.
2. It demonstrates access-denied behavior for object URL when object is not public.

## Console Demonstration

1. Open object details in bucket.
2. Review identifiers/links:
   - S3 URI,
   - object ARN,
   - object URL.
3. Attempt opening object URL directly and observe AccessDenied because bucket/object is private.
4. Use console Download action to retrieve object successfully (authenticated session context).
5. Inspect object metadata areas such as:
   - storage class,
   - encryption details,
   - permissions,
   - versioning view.

## CLI Demonstration

1. Create local destination directory.
2. Use aws s3 cp from bucket to local path with recursive option.
3. Apply include/exclude filters to download only selected file types (example: *.png).
4. Verify only matching objects are copied locally.

## Outcome

1. Learner can retrieve objects through authenticated console/CLI workflows and interpret private-object URL behavior.
