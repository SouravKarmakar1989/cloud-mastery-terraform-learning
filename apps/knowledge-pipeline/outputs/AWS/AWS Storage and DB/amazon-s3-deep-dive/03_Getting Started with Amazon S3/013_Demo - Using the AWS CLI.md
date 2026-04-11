# Demo - Using the AWS CLI

## Pointwise No-Loss Summary

1. Demo introduces AWS CLI usage for interacting with S3.
2. Shows credential configuration and common S3 CLI commands.

## CLI Credential Setup

1. Run aws configure and provide:
   - access key ID,
   - secret access key,
   - default region,
   - output format.
2. Alternate approach mentioned: set credentials/region via environment variables.

## S3 CLI Operations Demonstrated

1. List buckets:
   - aws s3 ls.
2. List objects in a specific bucket:
   - aws s3 ls s3://bucket-name.
3. Move object to prefix/path:
   - aws s3 mv source destination.
4. Recursive listing including prefixed objects:
   - aws s3 ls s3://bucket-name --recursive.

## Practical Notes

1. Prefixes appear as folder-like organization in listings.
2. CLI command model is useful for automation and repeatable workflows.

## Outcome

1. User can authenticate CLI and perform foundational S3 inventory/move operations.
