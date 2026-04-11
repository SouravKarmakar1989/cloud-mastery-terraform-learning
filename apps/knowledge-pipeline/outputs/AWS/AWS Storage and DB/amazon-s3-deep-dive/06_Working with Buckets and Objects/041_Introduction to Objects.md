# Introduction to Objects

## Pointwise No-Loss Summary

1. Objects are the fundamental data units stored in S3 buckets.
2. Any uploaded file becomes an object.

## Object Fundamentals Reiterated

1. Maximum object size:
   - up to 5 TB per object.
2. Bucket capacity:
   - no fixed bucket size limit,
   - effectively unlimited object count/storage.
3. Strong consistency:
   - read-after-write for new objects,
   - strong reads for updates/deletes so latest version is returned after successful write.

## Object Components Mentioned

1. Key:
   - object identifier/name.
2. Version ID:
   - unique value per object version.
3. Value:
   - object data content.
4. Metadata:
   - additional object attributes.

## Object Addressing Forms Mentioned

1. S3 URI format.
2. Object ARN format.
3. Object URL format (relevant for public access scenarios).

## Public vs Private Clarification

1. Public objects can be read over internet without authentication (if configured).
2. Private objects are not publicly readable but are still accessible through authorized AWS identities/services.

## Outcome

1. Learner gets object model clarity, consistency expectations, and access posture basics.
