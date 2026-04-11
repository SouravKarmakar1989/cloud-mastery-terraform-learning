# Creating and Naming Amazon S3 Buckets

## Pointwise No-Loss Summary

1. Bucket names must be globally unique within an AWS partition.
2. You cannot create multiple buckets with identical names, even across different regions/accounts in same partition.
3. Bucket name and region are chosen at creation time and cannot be changed later.

## Bucket Creation Basics

1. Required at creation:
   - bucket name,
   - region.
2. Optional bucket/storage settings can also be configured.
3. Every bucket receives an ARN.

## ARN Note for S3 Buckets

1. S3 bucket ARNs are based on globally unique bucket name format.
2. Unlike many other service ARNs, bucket uniqueness eliminates need for account ID in same way as account-scoped resources.

## Naming Rules Covered

1. Length must be 3 to 63 characters.
2. Allowed characters:
   - lowercase letters,
   - numbers,
   - periods,
   - hyphens.
3. Must start and end with a letter or number.
4. Cannot contain two adjacent periods.
5. Cannot be formatted like an IP address.
6. Cannot start with prefix xn--.
7. Cannot end with suffix -s3alias.

## Partition Nuance

1. Uniqueness is enforced per partition (for example standard commercial partition, China partition, GovCloud partition).
2. Same name can exist across different partitions, but not duplicated inside one partition.

## Name Reuse Behavior

1. Bucket name is unavailable to others while your bucket exists.
2. After bucket deletion, name can be claimed by another account.

## Bucket Count Limits Mentioned

1. Default soft limit:
   - 100 buckets per account.
2. Soft limit can be increased via support request.
3. Hard maximum referenced:
   - up to 1,000 buckets per account.
4. Performance is not improved by using fewer vs many buckets purely by count.

## Outcome

1. Learner understands S3 naming constraints, uniqueness model, and account-level bucket limits before creating production buckets.
