# Storage Gateway Hands On

## Pointwise No-Loss Summary

1. Demo explores gateway creation wizard and compares gateway mode options.

## Gateway Type Options Reviewed

1. S3 File Gateway:
   - NFS/SMB access to S3-backed data,
   - local caching behavior,
   - deployment on VMware/Hyper-V/KVM/EC2.
2. Tape Gateway:
   - virtual tape archive workflow with S3/Glacier backing.
3. Volume Gateway:
   - iSCSI block storage backed by S3,
   - cached volume vs stored volume mode comparison.

## Platform/Hosting Considerations

1. On-prem virtualization options place gateway close to on-prem servers.
2. EC2-hosted gateway option places gateway inside AWS account context.

## Outcome

1. Hands-on focuses on selecting correct gateway type and deployment platform for hybrid file/block/tape integration scenarios.
