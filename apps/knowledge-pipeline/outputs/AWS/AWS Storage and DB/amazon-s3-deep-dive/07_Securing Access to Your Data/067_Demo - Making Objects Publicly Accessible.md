# Demo - Making Objects Publicly Accessible

## Pointwise No-Loss Summary

1. Demo walks through enabling policy-based public object access on designated public bucket.
2. It contrasts list-only access versus object-read access.

## Demonstrated Workflow

1. Upload sample objects into public-demo bucket.
2. Verify current posture blocks public access (BPA on, no permissive policy).
3. Attempt public policy change and observe failure while BPA blocks it.
4. Adjust bucket BPA settings to allow bucket-policy-based public configuration.
5. Apply bucket policy variants and validate behavior.

## Policy Behavior Checks

1. ListBucket-only policy:
   - bucket listing endpoint can return object list,
   - direct object retrieval still denied.
2. Single-object GetObject policy:
   - only specified object URL becomes publicly retrievable.
3. Wildcard object policy:
   - all targeted objects in resource scope become publicly retrievable.
4. Prefix-scoped pattern discussed:
   - public access can be limited to specific prefix path.

## Console Signals

1. S3 console surfaces warnings/indicators when bucket becomes publicly accessible.

## Outcome

1. Learner sees practical, granular public-access policy patterns and BPA interplay.
