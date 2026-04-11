# Storage Gateway Overview

## Pointwise No-Loss Summary

1. Storage Gateway bridges on-premises storage workflows with AWS storage services.
2. Primary hybrid-cloud motivations include migration timelines, compliance constraints, and elastic-burst architecture.

## Gateway Families Covered

1. S3 File Gateway.
2. Volume Gateway.
3. Tape Gateway.

## S3 File Gateway

1. Presents S3-backed storage to on-prem apps via NFS/SMB.
2. Translates file protocol operations into S3 API interactions.
3. Frequently accessed data is cached locally for low-latency access.
4. Works with major S3 classes (excluding direct Glacier as active class).
5. Glacier archival can be done via S3 lifecycle transitions.
6. SMB path can integrate with Active Directory for user auth.

## Volume Gateway

1. Provides iSCSI block volumes backed by S3.
2. Integrates with EBS snapshot-style backup/recovery workflows.
3. Modes include:
   - cached volumes (primary in AWS with local cache),
   - stored volumes (primary local with asynchronous cloud backup).

## Tape Gateway

1. Emulates virtual tape library workflow (iSCSI-VTL style).
2. Stores virtual tapes in S3 with archival options to Glacier tiers.
3. Targets existing tape-based backup software environments.

## Deployment Note

1. Gateway appliance/software is deployed in customer environment (or supported virtualization targets).

## Outcome

1. Storage Gateway enables protocol-compatible hybrid integration between legacy/on-prem storage patterns and AWS managed storage backends.
