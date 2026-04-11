# S3 Overview

## Pointwise No-Loss Summary

1. Amazon S3 is introduced as a core AWS building block and an infinitely scaling storage service.
2. Many websites and many AWS service integrations rely on S3.
3. The section will use a step-by-step approach to teach major S3 features.
4. Listed S3 use cases include:
   - backup and storage (files, disks, etc.),
   - disaster recovery (copying data to another region),
   - archival,
   - hybrid cloud storage,
   - hosting applications,
   - hosting media (videos, images),
   - data lakes and big data analytics,
   - software update delivery,
   - static website hosting.
5. Example references mentioned:
   - Nasdaq stores seven years of data in S3 Glacier,
   - Sysco runs analytics on S3 data for business insights.

## Bucket Fundamentals

1. S3 stores files in buckets.
2. Files in buckets are called objects.
3. Buckets are created in an AWS account and must have globally unique names.
4. Global uniqueness is across all AWS accounts and all regions.
5. Buckets are defined at region level, even though S3 often appears global.
6. Naming constraints mentioned:
   - no uppercase letters,
   - no underscores,
   - length between 3 and 63 characters,
   - cannot be formatted as an IP address,
   - must start with lowercase letter or number,
   - additional prefix restrictions exist (using letters, numbers, hyphens is generally safe).

## Object and Key Fundamentals

1. Objects are identified by keys.
2. Key represents full object path.
3. Example simple key: myfile.txt.
4. Example nested key: myfolder1/anotherfolder/myfile.txt.
5. Key is explained as:
   - prefix (folder-like part),
   - object name (final file part).
6. S3 has no true directory concept; folder view in console is UI abstraction over key names.

## Object Size and Metadata

1. Maximum object size is 5 TB.
2. Multi-part upload is required for objects larger than 5 GB.
3. Very large objects are uploaded in multiple parts (example given: 5 TB file with at least 1,000 parts of 5 GB).
4. Objects can have metadata as key-value pairs (system-defined or user-defined).
5. Objects can have tags (Unicode key-value pairs, up to 10) useful for security and lifecycle operations.
6. Objects can include a version ID when versioning is enabled.

## Outcome

1. The lecture establishes S3 core concepts (buckets, objects, keys, scale, and main usage patterns) before moving to console practice.
