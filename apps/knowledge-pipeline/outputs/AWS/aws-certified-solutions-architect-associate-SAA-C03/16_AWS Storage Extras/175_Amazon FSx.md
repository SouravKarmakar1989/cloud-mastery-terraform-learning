# Amazon FSx

## Pointwise No-Loss Summary

1. Amazon FSx provides managed third-party/specialized file systems on AWS.
2. Conceptual analogy: FSx for file systems is similar to RDS for database engines.

## FSx Families Covered

1. FSx for Windows File Server.
2. FSx for Lustre.
3. FSx for NetApp ONTAP.
4. FSx for OpenZFS.

## FSx for Windows File Server

1. Managed Windows file shares.
2. Supports SMB and NTFS.
3. Integrates with Microsoft Active Directory.
4. Supports ACLs and user quotas.
5. Can be mounted from Linux EC2 as well.
6. Can integrate with existing Windows file ecosystem (DFS).
7. Storage options include SSD/HDD.
8. Supports Multi-AZ and daily backups to S3.

## FSx for Lustre

1. Distributed high-performance file system for HPC/ML/data-intensive workloads.
2. Very high throughput/IOPS with sub-ms latency profile.
3. Storage options: SSD (latency/random IO) and HDD (throughput/sequential IO).
4. Native integration with S3 for input/output workflows.
5. Accessible from on-prem via VPN/Direct Connect.

## Lustre Deployment Types

1. Scratch file system:
   - temporary,
   - no data replication,
   - higher burst performance,
   - suited for short-lived processing.
2. Persistent file system:
   - long-term,
   - data replicated in AZ,
   - supports failure replacement behavior,
   - suited for durable sensitive workloads.

## FSx for NetApp ONTAP

1. Managed ONTAP on AWS.
2. Protocol support includes NFS, SMB, iSCSI.
3. Strong compatibility with mixed OS and enterprise platforms.
4. Features include auto growth/shrink, snapshots, replication, compression, de-duplication, and fast cloning.

## FSx for OpenZFS

1. Managed OpenZFS on AWS.
2. NFS protocol focused.
3. Good for migrating existing ZFS workloads.
4. High-performance profile with snapshots/compression and fast cloning.
5. Data deduplication not emphasized as available in this overview.

## Outcome

1. Lecture provides decision criteria for choosing FSx flavor based on protocol compatibility, performance profile, and enterprise feature requirements.
