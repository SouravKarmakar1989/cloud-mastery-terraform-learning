# S3 Versioning

## Pointwise No-Loss Summary

1. S3 versioning is introduced as a bucket-level feature.
2. With versioning enabled, uploading same key again creates new versions instead of destructive overwrite.
3. Example progression described as version 1, version 2, version 3 for the same key.

## Why Versioning Is Best Practice

1. Protects against unintended deletes.
2. Delete behavior can add a delete marker, allowing recovery of prior versions.
3. Makes rollback to previous file version straightforward.

## Important Notes

1. Files that existed before enabling versioning have version ID null.
2. Suspending versioning does not remove existing stored versions.

## Outcome

1. Lecture establishes versioning as a safety and rollback mechanism before console practice.
