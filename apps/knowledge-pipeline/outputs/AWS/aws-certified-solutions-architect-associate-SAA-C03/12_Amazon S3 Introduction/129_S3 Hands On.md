# S3 Hands On

## Pointwise No-Loss Summary

1. The demo starts by creating an S3 bucket from the console.
2. Region is selected first (example shown: eu-north-1 Stockholm).
3. Instructor notes that S3 console can show all buckets across regions, even though bucket creation is region-specific.

## Bucket Creation Steps

1. Bucket type option may show:
   - General purpose,
   - Directory (new, region-dependent availability).
2. For this course flow, choose General purpose (or default if option is not shown).
3. Directory buckets are called out as a separate use case not covered for the exam.
4. Bucket name must be globally unique; example of non-unique name causes creation error.
5. A unique personal-style naming pattern is used to avoid collisions.
6. Security/default settings kept as default during creation:
   - ACLs disabled (recommended),
   - Block all public access enabled,
   - Versioning disabled,
   - no tags,
   - default encryption: SSE-S3,
   - bucket key enabled.
7. Bucket is created successfully.

## Post-Creation Console Observations

1. Bucket list view includes buckets from multiple AWS regions.
2. Search can be used to quickly locate a bucket.
3. Opening bucket initially shows zero objects.

## Object Upload and Access Demo

1. Upload action used to add coffee.jpg (~100 KB) to bucket root.
2. Object details page shows metadata and object URL fields.
3. Using Open from console displays image successfully.
4. Using public object URL directly returns AccessDenied.
5. Difference explained:
   - console Open used a pre-signed URL with credentials/signature,
   - public URL has no such signed authorization.
6. Therefore object is not publicly readable yet.

## Folder-Style Organization Demo

1. A folder named images is created.
2. beach.jpg is uploaded into images destination path.
3. Console shows folder/object hierarchy similar to common cloud drives.
4. Folder delete flow demonstrated (including permanent delete confirmation).

## Outcome

1. Learner sees end-to-end basics: bucket creation, object upload, private-vs-public URL behavior, folder-style organization, and object/folder deletion.
