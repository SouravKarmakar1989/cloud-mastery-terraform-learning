# Demo - Using Amazon S3 SSE-S3

## Pointwise No-Loss Summary

1. Demo shows how to apply SSE-S3 on existing and newly uploaded objects.
2. It demonstrates object-level override behavior even when bucket default differs.

## Steps Demonstrated

1. Inspect bucket default encryption setting (example bucket uses SSE-KMS default).
2. Open object and edit server-side encryption attributes.
3. Override bucket default and switch object to SSE-S3.
4. Verify updated object encryption metadata reflects SSE-S3.
5. Select multiple objects and use bulk action to change server-side encryption.
6. Upload new files while explicitly overriding encryption to SSE-S3 at upload-time properties.
7. Verify uploaded objects show SSE-S3 encryption mode.

## Key Behavior Observed

1. Bucket default does not prevent per-object encryption override during upload/edit.
2. SSE-S3 can be applied object-by-object or in bulk.

## Outcome

1. Learner can operationally set/verify SSE-S3 regardless of existing bucket default mode.
