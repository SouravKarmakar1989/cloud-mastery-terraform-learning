# Object Ownership

## Pointwise No-Loss Summary

1. Every S3 object has an owner identity/account association.
2. By default in many flows, uploader account owns uploaded object.
3. Cross-account uploads can therefore create mixed ownership inside one bucket.

## Why Object Ownership Setting Matters

1. Mixed ownership can complicate administration and policy consistency.
2. Object ownership settings let bucket owner enforce predictable ownership behavior.

## Modes Discussed

1. Bucket owner enforced:
   - bucket owner owns all objects,
   - ACLs are disabled.
2. Bucket owner preferred:
   - bucket owner can take ownership under defined ACL-based path.
3. Object writer:
   - uploader account owns object.

## Configuration Notes

1. Object ownership can be set at bucket creation time.
2. Existing buckets can be updated.
3. When moving to ACL-disabled ownership mode, legacy ACL-dependent access should be migrated to bucket-policy/IAM approach.

## Outcome

1. Learner understands ownership-control options and how they simplify cross-account object governance.
