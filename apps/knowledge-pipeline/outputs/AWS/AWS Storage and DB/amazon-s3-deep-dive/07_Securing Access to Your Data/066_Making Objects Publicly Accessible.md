# Making Objects Publicly Accessible

## Pointwise No-Loss Summary

1. Lesson explains controlled scenarios where public S3 access is intentionally required.
2. Public means unauthenticated internet users with URL can access permitted objects.

## Risk Emphasis

1. Public exposure can cause unauthorized access, leaks, misuse, or compliance violations if misapplied.
2. Private-by-default remains recommended baseline.

## Valid Use Cases Mentioned

1. Static website hosting assets.
2. Public file download distribution.
3. Public content delivery (images/videos/documents).
4. Open/public dataset publishing.

## Prerequisites for Public Access

1. Block Public Access settings must permit intended public policy path.
2. Bucket policy (preferred modern approach over ACLs) must explicitly grant public principal access.

## Example Policy Pattern

1. Principal set to wildcard for public audience.
2. Action generally limited to read operations (for example get object).
3. Resource can target:
   - single object,
   - prefix subset,
   - full bucket object set.
4. Caution explicitly raised against granting public write permissions.

## Outcome

1. Learner understands how to intentionally expose only required S3 content while minimizing risk.
