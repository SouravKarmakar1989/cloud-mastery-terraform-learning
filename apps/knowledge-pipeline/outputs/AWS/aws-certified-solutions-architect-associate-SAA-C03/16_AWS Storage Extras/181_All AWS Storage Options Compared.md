# All AWS Storage Options Compared

## Pointwise No-Loss Summary

1. Lecture consolidates storage-service selection guidance across AWS offerings.

## Service Mapping Recap

1. S3: object storage.
2. S3 Glacier: archival object storage tiering.
3. EBS: block storage attached to EC2 (with volume-type variants and io features).
4. EC2 Instance Store: local high-performance ephemeral storage.
5. EFS: multi-AZ shared Linux NFS file system.
6. FSx for Windows File Server: SMB Windows file system.
7. FSx for Lustre: high-performance Linux/HPC file system.
8. FSx for NetApp ONTAP: broad enterprise NAS compatibility.
9. FSx for OpenZFS: managed ZFS option.
10. Storage Gateway: hybrid bridge (file/volume/tape patterns).
11. AWS Transfer Family: FTP/FTPS/SFTP front end for S3/EFS.
12. DataSync: scheduled high-volume sync (on-prem/AWS/AWS-to-AWS).
13. Snow Family (Snowcone/Snowball/Snowmobile): physical data transport when network is insufficient.

## Contextual Note

1. Databases are separate persistence category with distinct query/indexing behavior.

## Outcome

1. Lecture provides architecture-level decision matrix for selecting storage service based on data type, access protocol, performance needs, and migration constraints.
