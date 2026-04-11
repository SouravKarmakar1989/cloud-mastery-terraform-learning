# Organizing Your Data in Buckets

## Pointwise No-Loss Summary

1. S3 organizes objects inside containers called buckets.
2. Buckets are top-level logical containers for storing objects.

## Bucket and Object Model

1. Objects are files/data units stored within buckets.
2. A bucket can hold any number of objects.
3. Each object is uniquely identified by its key (object name/path key).

## Bucket Naming Rules (High-Level)

1. Bucket names must be globally unique across all AWS accounts.
2. If a bucket name is already taken globally, it cannot be reused by another account.

## Regional Scope

1. Buckets are created in a specific AWS region.
2. Region choice determines where bucket data resides by default.
3. Data can later be replicated to other regions with additional configurations/features.

## Data Placement Note

1. Even when bucket is region-scoped, S3 durability mechanisms still replicate data within that region across multiple AZs.

## Key Takeaway

1. Bucket strategy combines globally unique naming with deliberate region placement, then object keys provide per-object uniqueness within bucket.
