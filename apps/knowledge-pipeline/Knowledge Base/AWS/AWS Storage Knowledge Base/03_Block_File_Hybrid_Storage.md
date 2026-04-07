# 03_Block_File_Hybrid_Storage.md

## Scope
- Topic: EBS, EFS, FSx, and workload-aligned block/file storage decisions
- Files processed: 30
- Extracted non-empty transcript lines: 1413
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Storage Knowledge Base
- Cross-domain referrals: 1

## Real Material - Architect Learning Build (Storage: Block File Hybrid Storage)

This section is the study-first architecture guide for ebs, efs, fsx, and workload-aligned block/file storage decisions.

### Phase 1 - Foundations

#### Module: Block File Hybrid Storage Mental Model
- Use block file hybrid storage decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: Block File Hybrid Storage Mental Model
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/065_EBS Encryption.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/06_Storage/069_EBS & Local Instance Store.txt
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/02_Data Ingestion and Storage/040_Amazon EFS vs. Amazon EBS.txt
- outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/18_Storage Services You Should Know/290_Amazon EFS vs. Amazon EBS.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/056_EFS vs EBS.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/068_EFS vs EBS.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/06_Storage/070_Amazon EFS.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/047_EBS Snapshots.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/058_EBS Snapshots.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/185_KMS with EBS.txt
- Top concept clusters from transcript metadata:
- Block and File Storage Design
- Data Protection and Immutability
- Lifecycle Operations
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 30
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1413
- Key insights inside selected files: 24
- Unique concept tags in selected files: 3

##### Transcript-Enriched Learning Notes
- So, if you take your unencrypted snapshot, so this one is not encrypted, so if you take this snapshot and then you do action, create volumes from snapshot, zero shortcuts, you can actually on the fly enable encryption for the EBS volume directly from here, select an EBS key, and you would create an encrypted EBS volume this way through a unencrypted snapshots.
- So, when you created and encrypted EBS volume, right away you get the following, you get data at rest being encrypted inside your volume, all the data in flight between the instance and the volume is encrypted, all the snapshots will be encrypted, and all the volumes created from the snapshots are encrypted.
- So you use Data Lifecycle Manager when you want to automate the creation, retention, and deletion of EBS snapshots, whereas you're going to use AWS backups to manage and monitor backups across all the AWS services you use, including EBS volumes, from a single place.
- So hopefully you understand now the difference between EFS and EBS and for the instance store, well it is physically attached to the EC2 instance, and so therefore if you, you lose your EC2 instance, you will lose the storage as well.
- And then your VPC elsewhere can be peered with your VPC of EFS for your EC2 instance to access your EFS drive, or also on-premises servers through direct connect or VPN, for site-to-site VPN, can also access your EBS volumes, okay?
- This is particularly helpful if your snapshot is big, very big and need to initialize an EBS volume or needs to instance out of it very quickly, but this feature costs a lot of money, so be careful when using it.
- Next, there is a service within EBS called Amazon Data Lifecycle Manager, which is used to automate the creation, retention, and deletion of EBS snapshots and EBS-backed AMI.
- So you cannot change the encryption keys used by an EBS volume, but you can create a snapshot and you create a new EBS volume and then you can specify a new KMS key.
- Then we create a new EBS volume from the snapshots and that volume will also be encrypted, and now we can attach the encrypted volume to the original instance.
- To migrate an EBS volume across AZ, we need to take a snapshot, so it will go into the EBS snapshots, and then we can restore the snapshot into another AZ.
- So in case you do delete your EBS Snapshots instead of being permanently deleted then instead they're going to land in Recycle Bin.
- So the Recycle Bin is a way for you to protect your EBS Snapshots from accidental deletion, as well as your Amazon Machine Images.

##### Polished Architect Notes
- Transcript signals that so, if you take your unencrypted snapshot, so this one is not encrypted, so if you take this snapshot and then you do action, create volumes from snapshot, zero shortcuts, you can actually on the fly enable encryption for the EBS volume directly from here, select an EBS key, and you would create an encrypted EBS volume this way through a unencrypted snapshots.
- Transcript signals that so, when you created and encrypted EBS volume, right away you get the following, you get data at rest being encrypted inside your volume, all the data in flight between the instance and the volume is encrypted, all the snapshots will be encrypted, and all the volumes created from the snapshots are encrypted.
- Transcript signals that so you use Data Lifecycle Manager when you want to automate the creation, retention, and deletion of EBS snapshots, whereas you're going to use AWS backups to manage and monitor backups across all the AWS services you use, including EBS volumes, from a single place.
- Transcript signals that so hopefully you understand now the difference between EFS and EBS and for the instance store, well it is physically attached to the EC2 instance, and so therefore if you, you lose your EC2 instance, you will lose the storage as well.
- Transcript signals that and then your VPC elsewhere can be peered with your VPC of EFS for your EC2 instance to access your EFS drive, or also on-premises servers through direct connect or VPN, for site-to-site VPN, can also access your EBS volumes, okay?
- Transcript signals that this is particularly helpful if your snapshot is big, very big and need to initialize an EBS volume or needs to instance out of it very quickly, but this feature costs a lot of money, so be careful when using it.
- Transcript signals that next, there is a service within EBS called Amazon Data Lifecycle Manager, which is used to automate the creation, retention, and deletion of EBS snapshots and EBS-backed AMI.
- Transcript signals that so you cannot change the encryption keys used by an EBS volume, but you can create a snapshot and you create a new EBS volume and then you can specify a new KMS key.
- Transcript signals that then we create a new EBS volume from the snapshots and that volume will also be encrypted, and now we can attach the encrypted volume to the original instance.
- Transcript signals that to migrate an EBS volume across AZ, we need to take a snapshot, so it will go into the EBS snapshots, and then we can restore the snapshot into another AZ.
- Transcript signals that so in case you do delete your EBS Snapshots instead of being permanently deleted then instead they're going to land in Recycle Bin.
- Transcript signals that so the Recycle Bin is a way for you to protect your EBS Snapshots from accidental deletion, as well as your Amazon Machine Images.

##### Architect Synthesis (Transcript-Derived)
- Treat Block and File Storage Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Data Protection and Immutability as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Lifecycle Operations as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so, if you take your unencrypted snapshot, so this one is not encrypted, so if you take this snapshot and then you do action, create volumes from snapshot, zero shortcuts, you can actually on the fly enable encryption for the EBS volume directly from here, select an EBS key, and you would create an encrypted EBS volume this way through a unencrypted snapshots.
- Design implication: so, when you created and encrypted EBS volume, right away you get the following, you get data at rest being encrypted inside your volume, all the data in flight between the instance and the volume is encrypted, all the snapshots will be encrypted, and all the volumes created from the snapshots are encrypted.
- Design implication: so you use Data Lifecycle Manager when you want to automate the creation, retention, and deletion of EBS snapshots, whereas you're going to use AWS backups to manage and monitor backups across all the AWS services you use, including EBS volumes, from a single place.
- Design implication: so hopefully you understand now the difference between EFS and EBS and for the instance store, well it is physically attached to the EC2 instance, and so therefore if you, you lose your EC2 instance, you will lose the storage as well.
- Design implication: and then your VPC elsewhere can be peered with your VPC of EFS for your EC2 instance to access your EFS drive, or also on-premises servers through direct connect or VPN, for site-to-site VPN, can also access your EBS volumes, okay?

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/065_EBS Encryption.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/06_Storage/069_EBS & Local Instance Store.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/047_EBS Snapshots.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/058_EBS Snapshots.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/175_Amazon FSx.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/06_Storage/075_Amazon FSx.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/185_KMS with EBS.txt
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/02_Data Ingestion and Storage/040_Amazon EFS vs. Amazon EBS.txt
- outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/18_Storage Services You Should Know/290_Amazon EFS vs. Amazon EBS.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/056_EFS vs EBS.txt
- Top concept clusters from transcript metadata:
- Block and File Storage Design
- Data Protection and Immutability
- Lifecycle Operations
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 30
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1413
- Key insights inside selected files: 24
- Unique concept tags in selected files: 3

##### Transcript-Enriched Learning Notes
- So, if you take your unencrypted snapshot, so this one is not encrypted, so if you take this snapshot and then you do action, create volumes from snapshot, zero shortcuts, you can actually on the fly enable encryption for the EBS volume directly from here, select an EBS key, and you would create an encrypted EBS volume this way through a unencrypted snapshots.
- So, when you created and encrypted EBS volume, right away you get the following, you get data at rest being encrypted inside your volume, all the data in flight between the instance and the volume is encrypted, all the snapshots will be encrypted, and all the volumes created from the snapshots are encrypted.
- So you use Data Lifecycle Manager when you want to automate the creation, retention, and deletion of EBS snapshots, whereas you're going to use AWS backups to manage and monitor backups across all the AWS services you use, including EBS volumes, from a single place.
- This is particularly helpful if your snapshot is big, very big and need to initialize an EBS volume or needs to instance out of it very quickly, but this feature costs a lot of money, so be careful when using it.
- And it's not necessary for you to detach a volume to do a snapshot, but it's recommended because if your volume is being actively used while you do a snapshot, you may get an inconsistent state.
- And, therefore, if I click on create volume, and have a look at my volumes on the left hand side, this one who was created from a snapshots is now available and it says encryption, encrypted.
- And the FSx for Lustre file system in persistent mode will have two copies of the data, so you can see there is some replication right now from one data volume to the next data volume.
- So you cannot change the encryption keys used by an EBS volume, but you can create a snapshot and you create a new EBS volume and then you can specify a new KMS key.
- Then we create a new EBS volume from the snapshots and that volume will also be encrypted, and now we can attach the encrypted volume to the original instance.
- To migrate an EBS volume across AZ, we need to take a snapshot, so it will go into the EBS snapshots, and then we can restore the snapshot into another AZ.
- Okay, so what's happening is that if we do take to create a snapshot from this volume, as we can see the encryption setting will be set to not encrypted.
- But we will see in this section that if we do a snapshot, then we are able to move a volume across from different availability zones.

##### Polished Architect Notes
- Transcript signals that so, if you take your unencrypted snapshot, so this one is not encrypted, so if you take this snapshot and then you do action, create volumes from snapshot, zero shortcuts, you can actually on the fly enable encryption for the EBS volume directly from here, select an EBS key, and you would create an encrypted EBS volume this way through a unencrypted snapshots.
- Transcript signals that so, when you created and encrypted EBS volume, right away you get the following, you get data at rest being encrypted inside your volume, all the data in flight between the instance and the volume is encrypted, all the snapshots will be encrypted, and all the volumes created from the snapshots are encrypted.
- Transcript signals that so you use Data Lifecycle Manager when you want to automate the creation, retention, and deletion of EBS snapshots, whereas you're going to use AWS backups to manage and monitor backups across all the AWS services you use, including EBS volumes, from a single place.
- Transcript signals that this is particularly helpful if your snapshot is big, very big and need to initialize an EBS volume or needs to instance out of it very quickly, but this feature costs a lot of money, so be careful when using it.
- Transcript signals that and it's not necessary for you to detach a volume to do a snapshot, but it's recommended because if your volume is being actively used while you do a snapshot, you may get an inconsistent state.
- Transcript signals that and, therefore, if I click on create volume, and have a look at my volumes on the left hand side, this one who was created from a snapshots is now available and it says encryption, encrypted.
- Transcript signals that and the FSx for Lustre file system in persistent mode will have two copies of the data, so you can see there is some replication right now from one data volume to the next data volume.
- Transcript signals that so you cannot change the encryption keys used by an EBS volume, but you can create a snapshot and you create a new EBS volume and then you can specify a new KMS key.
- Transcript signals that then we create a new EBS volume from the snapshots and that volume will also be encrypted, and now we can attach the encrypted volume to the original instance.
- Transcript signals that to migrate an EBS volume across AZ, we need to take a snapshot, so it will go into the EBS snapshots, and then we can restore the snapshot into another AZ.
- Transcript signals that okay, so what's happening is that if we do take to create a snapshot from this volume, as we can see the encryption setting will be set to not encrypted.
- Transcript signals that but we will see in this section that if we do a snapshot, then we are able to move a volume across from different availability zones.

##### Architect Synthesis (Transcript-Derived)
- Treat Block and File Storage Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Data Protection and Immutability as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Lifecycle Operations as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so, if you take your unencrypted snapshot, so this one is not encrypted, so if you take this snapshot and then you do action, create volumes from snapshot, zero shortcuts, you can actually on the fly enable encryption for the EBS volume directly from here, select an EBS key, and you would create an encrypted EBS volume this way through a unencrypted snapshots.
- Design implication: so, when you created and encrypted EBS volume, right away you get the following, you get data at rest being encrypted inside your volume, all the data in flight between the instance and the volume is encrypted, all the snapshots will be encrypted, and all the volumes created from the snapshots are encrypted.
- Design implication: so you use Data Lifecycle Manager when you want to automate the creation, retention, and deletion of EBS snapshots, whereas you're going to use AWS backups to manage and monitor backups across all the AWS services you use, including EBS volumes, from a single place.
- Design implication: this is particularly helpful if your snapshot is big, very big and need to initialize an EBS volume or needs to instance out of it very quickly, but this feature costs a lot of money, so be careful when using it.
- Design implication: and it's not necessary for you to detach a volume to do a snapshot, but it's recommended because if your volume is being actively used while you do a snapshot, you may get an inconsistent state.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/047_EBS Snapshots.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/058_EBS Snapshots.txt
- outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/02_Data Ingestion and Storage/040_Amazon EFS vs. Amazon EBS.txt
- outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/18_Storage Services You Should Know/290_Amazon EFS vs. Amazon EBS.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/056_EFS vs EBS.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/068_EFS vs EBS.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/065_EBS Encryption.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/055_Amazon EFS - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/067_Amazon EFS - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/06_Storage/069_EBS & Local Instance Store.txt
- Top concept clusters from transcript metadata:
- Block and File Storage Design
- Lifecycle Operations
- Data Protection and Immutability
- Cost and Performance Optimization
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 30
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1413
- Key insights inside selected files: 24
- Unique concept tags in selected files: 4

##### Transcript-Enriched Learning Notes
- This is particularly helpful if your snapshot is big, very big and need to initialize an EBS volume or needs to instance out of it very quickly, but this feature costs a lot of money, so be careful when using it.
- So now let's talk about the differences of EBS volumes and EFS file systems.
- So, if you take your unencrypted snapshot, so this one is not encrypted, so if you take this snapshot and then you do action, create volumes from snapshot, zero shortcuts, you can actually on the fly enable encryption for the EBS volume directly from here, select an EBS key, and you would create an encrypted EBS volume this way through a unencrypted snapshots.
- So, when you created and encrypted EBS volume, right away you get the following, you get data at rest being encrypted inside your volume, all the data in flight between the instance and the volume is encrypted, all the snapshots will be encrypted, and all the volumes created from the snapshots are encrypted.
- And something else you can do is you can go into the EFS file system, you can delete it by entering the file system ID, and then when everything is deleted, you can go ahead into your security groups and delete the extra security groups that have been created during this demo.
- So you use Data Lifecycle Manager when you want to automate the creation, retention, and deletion of EBS snapshots, whereas you're going to use AWS backups to manage and monitor backups across all the AWS services you use, including EBS volumes, from a single place.
- Now for Amazon FSx for NetApp ONTAP is to get the NetApp ONTAP popular file system onto AWS, and the main feature is that it's compatible with Linux, Windows, and macOS, okay, and then, you also get access to a really good performance.
- And then your VPC elsewhere can be peered with your VPC of EFS for your EC2 instance to access your EFS drive, or also on-premises servers through direct connect or VPN, for site-to-site VPN, can also access your EBS volumes, okay?
- So this is definitely a very high performance I/O type of volume, and on top of this, the provisioned IOPS volumes that we'll see in the next lectures support the EBS multi-attach feature.
- And the FSx for Lustre file system in persistent mode will have two copies of the data, so you can see there is some replication right now from one data volume to the next data volume.
- Now, the EBS volumes backups, they will use IO, and so you shouldn't run them while your application is handling a lot of traffic because that may impact the performance.
- So you cannot change the encryption keys used by an EBS volume, but you can create a snapshot and you create a new EBS volume and then you can specify a new KMS key.

##### Polished Architect Notes
- Transcript signals that this is particularly helpful if your snapshot is big, very big and need to initialize an EBS volume or needs to instance out of it very quickly, but this feature costs a lot of money, so be careful when using it.
- Transcript signals that so now let's talk about the differences of EBS volumes and EFS file systems.
- Transcript signals that so, if you take your unencrypted snapshot, so this one is not encrypted, so if you take this snapshot and then you do action, create volumes from snapshot, zero shortcuts, you can actually on the fly enable encryption for the EBS volume directly from here, select an EBS key, and you would create an encrypted EBS volume this way through a unencrypted snapshots.
- Transcript signals that so, when you created and encrypted EBS volume, right away you get the following, you get data at rest being encrypted inside your volume, all the data in flight between the instance and the volume is encrypted, all the snapshots will be encrypted, and all the volumes created from the snapshots are encrypted.
- Transcript signals that and something else you can do is you can go into the EFS file system, you can delete it by entering the file system ID, and then when everything is deleted, you can go ahead into your security groups and delete the extra security groups that have been created during this demo.
- Transcript signals that so you use Data Lifecycle Manager when you want to automate the creation, retention, and deletion of EBS snapshots, whereas you're going to use AWS backups to manage and monitor backups across all the AWS services you use, including EBS volumes, from a single place.
- Transcript signals that now for Amazon FSx for NetApp ONTAP is to get the NetApp ONTAP popular file system onto AWS, and the main feature is that it's compatible with Linux, Windows, and macOS, okay, and then, you also get access to a really good performance.
- Transcript signals that and then your VPC elsewhere can be peered with your VPC of EFS for your EC2 instance to access your EFS drive, or also on-premises servers through direct connect or VPN, for site-to-site VPN, can also access your EBS volumes, okay?
- Transcript signals that so this is definitely a very high performance I/O type of volume, and on top of this, the provisioned IOPS volumes that we'll see in the next lectures support the EBS multi-attach feature.
- Transcript signals that and the FSx for Lustre file system in persistent mode will have two copies of the data, so you can see there is some replication right now from one data volume to the next data volume.
- Transcript signals that now, the EBS volumes backups, they will use IO, and so you shouldn't run them while your application is handling a lot of traffic because that may impact the performance.
- Transcript signals that so you cannot change the encryption keys used by an EBS volume, but you can create a snapshot and you create a new EBS volume and then you can specify a new KMS key.

##### Architect Synthesis (Transcript-Derived)
- Treat Block and File Storage Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Lifecycle Operations as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Data Protection and Immutability as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Cost and Performance Optimization as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: this is particularly helpful if your snapshot is big, very big and need to initialize an EBS volume or needs to instance out of it very quickly, but this feature costs a lot of money, so be careful when using it.
- Design implication: so now let's talk about the differences of EBS volumes and EFS file systems.
- Design implication: so, if you take your unencrypted snapshot, so this one is not encrypted, so if you take this snapshot and then you do action, create volumes from snapshot, zero shortcuts, you can actually on the fly enable encryption for the EBS volume directly from here, select an EBS key, and you would create an encrypted EBS volume this way through a unencrypted snapshots.
- Design implication: so, when you created and encrypted EBS volume, right away you get the following, you get data at rest being encrypted inside your volume, all the data in flight between the instance and the volume is encrypted, all the snapshots will be encrypted, and all the volumes created from the snapshots are encrypted.
- Design implication: and something else you can do is you can go into the EFS file system, you can delete it by entering the file system ID, and then when everything is deleted, you can go ahead into your security groups and delete the extra security groups that have been created during this demo.

### Phase 2 - Core Services
- Amazon EBS should be understood in terms of request path, control plane, and operational boundary.
- Amazon EFS should be understood in terms of request path, control plane, and operational boundary.
- Amazon EC2 should be understood in terms of request path, control plane, and operational boundary.
- Amazon ECR should be understood in terms of request path, control plane, and operational boundary.
- AWS SAM should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: Block and File Storage Design becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Cost and Performance Optimization becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Data Protection and Immutability becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Hybrid Transfer and Mobility becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Lifecycle Operations becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design block file hybrid storage with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when block file hybrid storage decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

## Cross-Domain Referrals

These transcripts are relevant to this topic but are owned by another knowledge base and are referenced here to avoid duplication.

- outputs/AWS/AWS Speciality/advanced-networking-specialty/06_Network Performance and Optimization/039_Placement Groups and EBS Optimized EC2 instances.txt (owned by AWS Compute Knowledge Base)

## CloudOps / SysOps Exam Enrichments
> Source: aws-certified-cloudops-associate transcripts â€” 164_FSx for CloudOps.txt

### FSx for Windows File Server â€” Single-AZ vs Multi-AZ (SysOps exam detail)

#### Single-AZ Tiers
- **Single-AZ 1**: SSD storage only. Data is automatically replicated within the single AZ.
- **Single-AZ 2**: SSD or HDD storage options. More storage flexibility; still single-AZ scope.

#### Multi-AZ
- Deploys a primary file system and a standby replica in two separate AZs.
- Data is replicated **synchronously** between primary and standby.
- Provides automatic failover to the standby if the primary file system fails.

#### Exam Guidance
- Always prefer Multi-AZ over deploying 2Ã— Single-AZ with manual replication when high availability and automatic failover are required. The Multi-AZ option handles synchronous replication and failover as a fully managed feature.

## Step 1 - Line-by-Line Extraction

Every non-empty line from every primary source transcript is preserved below with extraction fields.

### File: outputs/AWS/AWS AI/2. aws-machine-learning-engineer-associate/02_Data Ingestion and Storage/040_Amazon EFS vs. Amazon EBS.txt

Line 1:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EFS
- Key Insights: So now let's talk about the differences of EBS volumes and EFS file systems.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So the EBS volumes, they're attached to one instance at a time, except in the edge case of using the multi attached feature of the io1 and io2 types of volume, but that is for very specific use cases.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: EBS volumes are also locked at the AZ level, so here is an example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: We have one EC2 in AZ 1 and we have one EBS volume attached to it and it cannot be attached to an EC2 instance in AZ 2.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: For the gp2 type of volume, the IO will increase if the disc size increases, and for the gp3 and IO1 type of volumes, you can increase the IO independently from your disc size.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: To migrate an EBS volume across AZ, we need to take a snapshot, so it will go into the EBS snapshots, and then we can restore the snapshot into another AZ.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is how we move from one AZ to the next.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: Amazon EBS
- Key Insights: Now, the EBS volumes backups, they will use IO, and so you shouldn't run them while your application is handling a lot of traffic because that may impact the performance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage economics signal.

Line 9:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: For your EC2 instances, the route EBS volumes of your instances will get terminated by default if the EC2 instance gets terminated, but you can disable that behavior.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: Now for EFS, it's a bit different.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So it's a network file system, and the goal is really to attach it to hundreds of instances across availability zone, so we really see the distinction here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So one with one EFS file system, we can have different mount targets in different AZs, and then multiple instances can share that one file system together, .
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's very helpful, for example, when you have WordPress and it's only for Linux instances because it is using the POSIX system.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EFS
- Key Insights: The EFS has a higher price point than EBS, but you can leverage storage tiers for cost savings.
- Hidden/Implicit Meaning: Storage economics signal.

Line 15:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2, Amazon EFS
- Key Insights: So hopefully you understand now the difference between EFS and EBS and for the instance store, well it is physically attached to the EC2 instance, and so therefore if you, you lose your EC2 instance, you will lose the storage as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/AWS AI/3. aws-generative-ai-developer-professional/18_Storage Services You Should Know/290_Amazon EFS vs. Amazon EBS.txt

Line 1:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EFS
- Key Insights: So now let's talk about the differences of EBS volumes and EFS file systems.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So the EBS volumes, they're attached to one instance at a time, except in the edge case of using the multi attached feature of the io1 and io2 types of volume, but that is for very specific use cases.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: EBS volumes are also locked at the AZ level, so here is an example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: We have one EC2 in AZ 1 and we have one EBS volume attached to it and it cannot be attached to an EC2 instance in AZ 2.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: For the gp2 type of volume, the IO will increase if the disc size increases, and for the gp3 and IO1 type of volumes, you can increase the IO independently from your disc size.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: To migrate an EBS volume across AZ, we need to take a snapshot, so it will go into the EBS snapshots, and then we can restore the snapshot into another AZ.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is how we move from one AZ to the next.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: Amazon EBS
- Key Insights: Now, the EBS volumes backups, they will use IO, and so you shouldn't run them while your application is handling a lot of traffic because that may impact the performance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage economics signal.

Line 9:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: For your EC2 instances, the route EBS volumes of your instances will get terminated by default if the EC2 instance gets terminated, but you can disable that behavior.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: Now for EFS, it's a bit different.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So it's a network file system, and the goal is really to attach it to hundreds of instances across availability zone, so we really see the distinction here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So one with one EFS file system, we can have different mount targets in different AZs, and then multiple instances can share that one file system together, .
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's very helpful, for example, when you have WordPress and it's only for Linux instances because it is using the POSIX system.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EFS
- Key Insights: The EFS has a higher price point than EBS, but you can leverage storage tiers for cost savings.
- Hidden/Implicit Meaning: Storage economics signal.

Line 15:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2, Amazon EFS
- Key Insights: So hopefully you understand now the difference between EFS and EBS and for the instance store, well it is physically attached to the EC2 instance, and so therefore if you, you lose your EC2 instance, you will lose the storage as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/185_KMS with EBS.txt

Line 1:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So let's have a deeper look at the integration between KMS and EBS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design, Data Protection and Immutability, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So you cannot change the encryption keys used by an EBS volume, but you can create a snapshot and you create a new EBS volume and then you can specify a new KMS key.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 3:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: (none explicit)
- Key Insights: So the process is we create a snapshot, and then we create a new volume, and this is when the key is going to change.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So we can also automate cross-account EBS KMS-encrypted snapshot copies.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This was very complicated to say.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So we have account A and we have an EBS snapshot in here encrypted with the KMS key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: What's going to do is that we're going to share this with a target accounts, and we need to make sure from an IAM permissions perspective that we have anything for grants, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Because we're going to share this and it's going to be used by a service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So then once this is done, we can copy to us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's going to be to the new account.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: Amazon ECR
- Key Insights: So it's going to be decrypted by the first KMS key and it's going to be re-encrypt by the second KMS key.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The KMS key policy in the target accounts is a bit special.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you'll have this one, and we're saying, "Hey, we allow to create grants for both these keys, for AWS resources." That's the left part of this slide.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: Amazon ECR
- Key Insights: And on the right-hand side, we're saying, "Hey, we can encrypt, decrypt, re-encrypt using the first data key, the first KMS key in the first account, and the second KMS key in the second account." So it should make sense by now, but I would like to repeat myself just to make things very clear.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Block and File Storage Design, Data Protection and Immutability
- Services: Amazon EBS
- Key Insights: So also for EBS encryption, there's an account level setting so that you make sure that every single EBS volume is going to be encrypted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So if you enable this volume, but if you don't, of course, they're not encrypted by default.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you need to enable this on the per-region setting.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Block and File Storage Design, Data Protection and Immutability
- Services: Amazon EBS, Amazon EC2
- Key Insights: You go to your EC2 Console, Settings and then you have EBS encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: And here you can define a default EBS key to encrypt your volumes with.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So that's it for what you need to know between EBS and KMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/045_EBS Overview.txt

Line 1:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: Welcome to this section where we will look at the different storage options for EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So first the most important ones are going to be EBS volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's define what they are.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: And EBS volume stands for Elastic Block Store.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's a network drive that you can attach to your instances while they run.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And we've been using them without even knowing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So we are this EBS volumes allow us to persist data even after the instance is terminated.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so that's the whole purpose.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Block and File Storage Design
- Services: AWS SAM, Amazon EBS, Amazon ECR
- Key Insights: We can recreate an instance and mount the same EBS volume from before.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And we will get back our data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That is very helpful.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So these EBS volumes at the CCP level can only be mounted to one instance at a time okay.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 13:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: And when you create an EBS volume it is bound to a specific availability zone.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: That means that you cannot have an EBS volume in created in for example, US East one attached to an instance in US East one.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: B we'll see this in the diagram in a second.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So how do you think of EBS volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well you can think of them as network USB sticks.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's a USB stick that you can take from a computer and put it in another computer, but you actually don't physically put it in a computer.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's attached through the network.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now let's look at it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So EBS volumes are network drive.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: As I said, it's not a physical drive.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So to communicate between the instance and the EBS volume it will be using the network.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And because the network is used there may be a bit of latency from one computer to reach to another server.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: Now EBS volumes, because they are a network drive, they can be detached from an EC2 instance and attached to another one very quickly.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that makes it super handy when you want to do failovers.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: For example, EBS volumes are locked to a specific availability zones.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That means that, as I said, if it's created in Us-east-1, it cannot be attached to Us-east-1.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 30:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: (none explicit)
- Key Insights: But we will see in this section that if we do a snapshot, then we are able to move a volume across from different availability zones.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And finally it's a volume.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you have to provision capacity in advance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you need to say how many gigabytes you want in advance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And the IOPs which is I o operations per second.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: And you're basically defining how you want your EBS volume to perform.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You're going to get billed for that provisioned capacity.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: And you can increase the capacity over time if you want to have better performance or more size.
- Hidden/Implicit Meaning: Storage economics signal.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So as a diagram, what does it look like?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: Well, we have us one a, we have one EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: And we can attach for example, one EBS volume to that EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: If we create another EC2 instance, as I said, an EBS volume cannot be attached to two instances at a time at the certified cloud practitioner level.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 42:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: And therefore, what I want to say is that this other EC2 instance needs to have its own EBS volume attached to it, but it is very possible for us to have two EBS volumes attached to one instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Think of it as two network USB sticks into one machine.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That makes a lot of sense.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: Now EBS volumes are linked to an availability zone.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, all this diagram has been so far using US East one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So if you wanted to have other EBS volumes in another AZ, then you would need to create this separately in the other availability zone.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Block and File Storage Design
- Services: AWS SAM, Amazon EBS, Amazon EC2
- Key Insights: So just the same way that your EC2 instances are bound to an AZ, so are the EBS volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: Finally, it is possible for us to create EBS volumes and leave them unattached.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: They don't need to be necessarily attached to an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: They can be attached on demand and that makes it very, very powerful.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: Finally, when we go ahead and create EBS volumes through EC2 instances, there is this thing called a delete on termination attribute and this can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: So if we look at this when we create an EBS volume in the console, when we create an EC2 instance, there is the second to last column called delete on termination.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: And by default it is ticked for the root volume and not ticked for a new EBS volume.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 55:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: So this controls the EBS behavior when an EC2 instance is being terminated.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So by default, as we can see, the root EBS volume is deleted alongside the instance being terminated.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's enabled.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 58:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: And by default any other attached EBS volume is not deleted because it's disabled by default.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But obviously, as we can see in this UI, we can control if you want to enable or disable delete on termination.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 60:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And so use case for it would be for example, that if you want to preserve the root volume when an instance is terminated, for example to save some data, then you can disable delete on termination for the root volume and you'll be good to go.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that could be an exam scenario at the exam.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/046_EBS Hands On.txt

Line 1:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So let's have a look at the EBS volumes attached to our instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if you click on instance and then you go to the storage tab in here, you find that there is a root device and there's a block device on it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Block and File Storage Design
- Services: Amazon EC2
- Key Insights: As you can see, we got one volume of eight gigabytes currently attached into our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So what I can do is I can click on this volume and it will take me into the volumes interface of AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And we can see that, yes, indeed, our volume exists and it's there.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's in use as shown here and it's attached to an instance right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So we have a different kind of console here and to access it, you can just go on the left hand side and click on volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So as we can see, now we have one EBS of eight gigabytes and what I can do is I can create a second volume.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So let me create a volume and I will have many options to choose from, GP2, GP3 and so on but I will just use GP2 of type of size two gigabytes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: AWS SAM, Amazon EC2
- Key Insights: And then for availability zone, I can choose the same one where my EC2 instance is.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: So for this, I'm gonna go into my EC2 instance, in here and I will find which availability zone it is on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I scroll down, and it is going to be in the networking one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I scroll down in the networking and here, availability zone, it says eu-west-1b.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: Therefore, the volume I will create is going to be in eu-west-1b because the EBS volumes are bound by specific AZ.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: I will have it done and create this volume.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And now my volume is created.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And what I can do is if I can click on it, this one is currently not attached.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so it's been creating so let me refresh this to see if it's created.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, it's available and it's not attached yet.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So therefore, because it's available, what I can do is action and then I can attach the volume and we need to find an instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we have one running right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: And so we're going to attach this volume to my instance, click on attach volume and voila, our instance now has two EBS volumes attached to it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: How do we know?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: Well, I can refresh this page, go to storage on my EC2 console, scroll down.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: As you can see now for block devices, I have two block devices.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I have the one of eight gigabytes and the one of two gigabytes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: To actually use this new block device, it's a bit more complicated and out of scope for this course, but you can go to format EBS volume attach EC2, and you should find something like, yes, make an Amazon EBS volume available to use on Linux and this gives you instructions on how to do it but again, this is out of scope for this.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 29:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So now if I go into my volumes and I create a volume, I can create a volume of two gigabytes of GP2 but this time the AZ is going to be eu-west-1a and not eu-west-1b.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: So it's gonna be a different AZ than the one of my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And the reason I do so is to show you that right now, we have three GP2 volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let me refresh this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the last one is available and it's a different AZ, so eu-west-1a.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Block and File Storage Design
- Services: Amazon EC2
- Key Insights: And if I do actions and then attach volume, as you can see, I cannot attach it to my EC2 instance because my EC2 instance is in eu-west-1b.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 35:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: And so therefore, we can see that the EBS volumes indeed are bound by a specific availability zone.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: Lastly, what I can do is that I can take this volume, do action, delete volume, and it's gone.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that really shows you the power of the cloud.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: I can just request volumes, delete volumes right on the go in the matters of seconds.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: Okay, so we have our two EBS volumes in here and what I wanna show you now is a cool behavior.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what happens if I terminate my instance?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: Well remember, and I will show you again, this one root volume of eight gigabytes has the delete on termination attribute.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how do we know?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, if I go into my storage and then go to my block devices, into this table right here, and scroll all the way right, you see the first one has delete on termination yes and the second one no.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So why this one is yes?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, I don't know if you remember, but when you go through the process of launching an instance, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then you scroll down to the storage, in here, if you click on advanced, you can see the fact that it is your roots of eight gigabytes and by default, this delete on termination attribute is yes, which makes sense, but you could set it to no if you wanted to keep the root after terminating your instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this explains why we see from before, the yes in this table.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so therefore, if I go ahead and terminate my instance which I will, so it says successfully terminated so it's going to really remove it from here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: I can go back into my EBS volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I can refresh them.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: And what's going to happen is that this one soon is going to be available so because it's going to be detached from my EC2 instance and then it's going to be terminated.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to pause until this is done.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And here we go.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So my eight gigabyte volume has now disappeared.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 55:
- Concepts: Block and File Storage Design
- Services: Amazon EC2
- Key Insights: Only my two gigabyte volume is left and if I go to my EC2 console, well, it says that my first instance has been terminated.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 56:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/047_EBS Snapshots.txt

Line 1:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So now let's talk about EBS Snapshots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So, an EBS Snapshot is a backup at any point in time of your EBS volume.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: And for this, it's not necessary to detach your EBS volume from your EC2 instance but it's recommended.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: You can copy these EBS Snapshots across different Availability Zones or even across different Region.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: So, for example, let's take EC2 instance that has an EBS volume in US-EAST-1A and an EC2 instance in US-EAST-1B.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So we can take a snapshot of the EBS volume.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: Okay, and thanks for that snapshot we can actually restore it in another AZ.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 8:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So this is how you would transfer an EBS volume from one AZ to another.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: Next, you need to know about a few EBS Snapshots feature.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So the first one is called the EBS Snapshot Archive.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 11:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: It's the ability for you to move the snapshot to an "archive tier" that is going to be up to 75% cheaper.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 12:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So, if you do move this snapshot to an "archive tier" then it will take you from within 24 to 72 hours for restoring the archive.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's not immediate.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: The other thing is to have a Recycle Bin for EBS Snapshots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So in case you do delete your EBS Snapshots instead of being permanently deleted then instead they're going to land in Recycle Bin.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so the idea with this is that you can recover them from an accidental deletion.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: And the retention for your Recycle Bin can be set from anywhere between one day to one year.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 18:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: The last feature you need to know about for your EBS Snapshots is called the Fast Snapshot Restored.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 19:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So this forces a full initialization of your snapshot to have no latency on the first use.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: This is particularly helpful if your snapshot is big, very big and need to initialize an EBS volume or needs to instance out of it very quickly, but this feature costs a lot of money, so be careful when using it.
- Hidden/Implicit Meaning: Storage economics signal.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/048_EBS Snapshots - Hands On.txt

Line 1:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So we have this two gigabyte, GP2 EBS Volume available to us, and we can take a snapshot from it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So if we do Actions, we can Create a snapshot.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So we can add a Description, for example, DemoSnapshots, and then click on Create snapshots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: (none explicit)
- Key Insights: So then on the left hand side menu, instead of Volumes, you can click on Snapshots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: And Snapshots shows you a list of all the snapshots you have.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, we have one right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It is Completed.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It is 100% Available.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: And we get some information around the snapshot itself.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: For first of all, what we can do is that we can Copy this snapshot into other region.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So if you right click and do Copy Snapshots, then as you can see, you can copy the snapshot into any destination region that you want.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this can come in very handy, in case you want for example, to have a Disaster Recovery Strategy, to make sure data is backed up in another region of AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I won't do that, I won't do so, but you get the idea.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon ECR
- Key Insights: Another thing I can do is take the Snapshot, and I can recreate a Volume from it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: (none explicit)
- Key Insights: So Action, Create volume from snapshots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And we choose a two gigabytes GP2 Volume.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then the target AZ doesn't have to remain eu-west-1a, it can be, for example, eu-west-1b.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And we can also encrypt these volumes if you wanted to and add some Tags.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And so as we can see, when we click on Create volume, what's going to happen is that if we go back into our Volumes, well, now we have two Volumes, as you can see.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: And one of them, this one was restored through a Snapshots, okay?
- Hidden/Implicit Meaning: Durability and retention signal.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And it is an eu-west-1b.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So the idea is that thanks to Snapshots, we can quote unquote copy EBS volumes across different Availability Zones.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that's very handy.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: If we look again at Snapshots, we can have a look at what's called the Recycle Bin.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So the Recycle Bin is a way for you to protect your EBS Snapshots from accidental deletion, as well as your Amazon Machine Images.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So we can Create a Retention Rule and name it DemoRetentionRule.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 27:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: I will select EBS Snapshots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I will Apply to all resources and retain them during one day.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And for Rule Lock Setting, I will leave this unlocked, so that I can delete this rule whenever I want to.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 30:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: And then click on Create Retention Rule.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And now on the Resources, we can see if we have Resources in the Recycle Bin.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Lifecycle Operations
- Services: Amazon EC2
- Key Insights: So let's go back into our Snapshots in the EC2 Console.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: So I'm going to go into EC2.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: Here we go, Snapshots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Little shortcuts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: And what I'm going to do is take the Snapshots, and first, before I delete it, I wanna show you the Storage Tiers.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So right now it is a Standard Storage Tier, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Cost and Performance Optimization, Lifecycle Operations
- Services: (none explicit)
- Key Insights: But you can move the Storage Tier, by Archiving a snapshots, and so I need to move the Storage Tier into another Pricing Level.
- Hidden/Implicit Meaning: Storage economics signal.

Line 39:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: But if you want to restore it, of course, you will have to wait 24 to 72 hours.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So just to show you.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: But anyway, let's go ahead and delete the snapshot.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So we'll delete the Snapshots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: As you can see, it's gone.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: And before, it used to completely delete the snapshots, and you couldn't recover it, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: As you can see, it's gone.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: But now thanks to the Recycle Bin, well, if I refresh here my Resources, I can now see that my Snapshot has appeared here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And what I can do is click on it and Recover it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Lifecycle Operations
- Services: Amazon EC2
- Key Insights: Yes, Recover Resources, and voila, it's back into my Snapshots on my EC2 console.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, that was pretty awesome, right?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: Okay, that's it for EBS Snapshots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/052_EBS Volume Types.txt

Line 1:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So, now, let's talk about EBS volumes and their different volume types.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: They come in six different types today, and we can group them in several categories.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: The first one is gp2, gp3, which is a general purpose SSD volume that will balance price and performance for a wide variety of workloads, and this is something we've been using so far in this course.
- Hidden/Implicit Meaning: Storage economics signal.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then we have io1 and io2 Block Express.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: They're highest-performance SSD volumes that will be used for mission-critical low-latency and high-throughput workloads.
- Hidden/Implicit Meaning: Storage economics signal.

Line 6:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: Then we have st1 volumes, and they're low cost HDD volume designed for frequently accessed throughput intensive workloads.
- Hidden/Implicit Meaning: Storage economics signal.

Line 7:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: We have sc1 volume, which are going to be the lowest cost HDD volume, and it will be designed for less frequently accessed workloads.
- Hidden/Implicit Meaning: Storage economics signal.

Line 8:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: Now, how do you define an EBS volume?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, you can have several factors, for example, size, throughput, and IOPS, which means I/O operations per second, and, obviously, when in doubt, always consult the documentation.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage economics signal.

Line 10:
- Concepts: Block and File Storage Design
- Services: Amazon EC2
- Key Insights: Now, for your EC2 instances, only gp2 and gp3 and io1 and io2 can be used as boot volumes.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That means where the root OS is going to be running.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, now, let's go do a deeper dive onto gp2, gp3, io1 io2, and the other ones, but gp2, the general purpose and the provisioned IOPS are going to be the most important for your exam.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So gp2 is cost effective storage with low-latency, and you can use it for system boot volumes, virtual desktops, development and test environments.
- Hidden/Implicit Meaning: Storage economics signal.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The size can vary between one gigabytes to 16 terabytes, and so we have differences between gp2 and gp3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: Gp3 is the newer generation of volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So gp3 gives you a baseline of 3000 IOPS and a throughput of 125 megabytes per second, and then we can increase IOPS up to 16,000 and throughput up to 1,000 megabytes per second independently, okay, so they're not linked.
- Hidden/Implicit Meaning: Storage economics signal.

Line 17:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: For gp2, this is the older version, there're small gp2 volumes that can burst up to 3,000 IOPS, and then the size of the volume and the IOPS are linked.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: That means that if you increase the IOPS, if you increase the number of gigabytes on your volume, then you're going to get three more IOPS up to 16,000 IOPS, and so that means that if you have 5,334 gigabytes, then you will have 16,000 IOPS, and you'll maxed it out.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what do you remember from this slide?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You remember that in gp2, gp3, this is for cost-effective storage latency, and then gp3, you can independently set the IOPS and the throughput, whereas for gp2, they're linked together.
- Hidden/Implicit Meaning: Storage economics signal.

Line 21:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So, now, let's talk about provisioned IOPS volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So they're used for critical business applications that need to sustain IOPS performance or applications that need a lot of IOPS, for example, more than 16,000.
- Hidden/Implicit Meaning: Storage economics signal.

Line 23:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So from an exam perspective, whenever you see, for example, a database workload that is very sensitive to storage performance and consistency, then the provisioned volumes are going to be great.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage economics signal.

Line 24:
- Concepts: Block and File Storage Design
- Services: Amazon EC2
- Key Insights: So we have the io1 type of volume between four and 16 terabytes, and the max IOPS you can provision, so the max PIOPS, is going to be around 64,000 for natural EC2 instances and 32,000 for the other kind of instances, and because we have an io1 type of volume, we can increase the provisioned IOPS independently from the storage size.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: If we consider the io2 block express type of volume, you can go up to 64 terabytes of data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You get sub-millisecond latency, and you get a lot of max IOPS, such as 256,000 with an IOPS to gigabyte ratio of 1,000 per one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: Amazon EBS
- Key Insights: So this is definitely a very high performance I/O type of volume, and on top of this, the provisioned IOPS volumes that we'll see in the next lectures support the EBS multi-attach feature.
- Hidden/Implicit Meaning: Storage economics signal.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, now, let's quickly touch upon st1 and sc1.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So they cannot be a boot volumes.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 30:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: This is only for the previous types of volumes.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 31:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: You can get the size up to 16 terabytes, and we get two kinds of volumes here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We have the throughput optimized HDD, so st1, which is great for big data, data warehousing, and log processing, which gives you a max throughput of 500 megabytes per second and a max IOPS of 500, and then for cold HDD, so sc1, this is for archive data, so data that is infrequently accessed, and this is when you would use it when you need to have the lowest possible cost.
- Hidden/Implicit Meaning: Durability and retention signal; Storage economics signal.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Here, the max throughput is 250 megabytes per second, and the max IOPS is 250 as well.
- Hidden/Implicit Meaning: Storage economics signal.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, you don't have to remember all these details going into the exam.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: You just need to understand the differences at a high level of all these volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the general purpose SSD versus the provisioned IOPS SSD, in case you need a database, versus some st1 and sc1, in case you need to have high throughput and lowest cost, and so you can find a summary of all I said in this link right here, okay, which is a screenshot I just took you.
- Hidden/Implicit Meaning: Storage economics signal.

Line 37:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: So don't need to remember the details again, but, remember, that if you want to get, also, over 32,000 IOPS, you need EC2 Nitro with io1 or io2, and that will be it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/053_EBS Multi-Attach.txt

Line 1:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So now let's talk about the Multi-Attach feature of the EBS volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design
- Services: AWS SAM, Amazon EBS, Amazon EC2
- Key Insights: So as the name indicates, the Multi-Attach feature allows you to attach the same EBS volume to multiple EC2 instances in the same availability zone.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what does that mean?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Block and File Storage Design
- Services: Amazon EC2
- Key Insights: That means that, well, we have multiple EC2 instances, and we have an io2 volume with the Multi-Attach feature enabled.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: Then this volume can be attached to multiple EC2 instances at a time, which is something that is only available for the io1 and the io2 family of EBS volumes.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Now, each instance will have full read and write permissions to the high-performance volume.
- Hidden/Implicit Meaning: Storage economics signal.

Line 7:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: And so that means that they can all write and read at the same time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the use case for this is you have higher application availability in case of a clustered Linux application, for example, using Teradata, or if your application must manage concurrent rights operation.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So just so you know, this Multi-Attach feature is only available from within a specified availability zone, of course.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: It doesn't allow you to attach an EBS volume from one AZ to another AZ.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Block and File Storage Design
- Services: AWS SAM, Amazon EC2
- Key Insights: Another limitation of Multi-Attach is that it is up to 16 EC2 instances at a time that can be attaching the same volume.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this is something you have to know for the exam, so be careful to that 16 number.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: Finally, for it to work, you must use a file system that is going to be cluster-aware.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 14:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So it's a different file system than XFS or EX4.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this is just a little bit more details, but in case you wanted to use this feature, now you know.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it for this lecture, I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then we'll see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/054_Amazon EFS.txt

Line 1:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: Hi, and welcome to this lecture on Amazon EFS, Elastic File System.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So EFS is a managed NFS, which is a network file system.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Block and File Storage Design
- Services: Amazon EC2, Amazon EFS
- Key Insights: And because it's a network file system, it can be mounted on many EC2 instances, and these EC2 instances can also be in different availability zones, that's the whole power of EFS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's highly available, it's very scalable, it's expensive.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: It's about three times the cost of a GP2 EBS volume, and you pay per use so you don't have to provision capacity in advance.
- Hidden/Implicit Meaning: Storage economics signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let me explain.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So you have your EFS file system and you surround it with a security group.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: And then you can have EC2 instances, many of them in the US east-1A availability zone for example, or EC2 instances in the US east-1B availability zone or US east-1C availability zones for your EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Block and File Storage Design
- Services: AWS SAM, Amazon EFS
- Key Insights: And they can all connect at the same time to the same network file system through through EFS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So the use cases of EFS are content management, web serving, data sharing, WordPress.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: It uses internally the NFS protocol, and to control access to your EFS, you need to set up a security group.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: Now EFS, it's very important to note that it's only compatible with Linux-based AMI and not Windows.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 13:
- Concepts: Block and File Storage Design, Data Protection and Immutability
- Services: Amazon EFS
- Key Insights: You can enable encryption at rest in your EFS drive using KMS, and it's a standard file system on Linux, so uses the POSIX system, and it has a standard file API.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: And the cool thing about EFS is that you don't need to plan the capacity in advance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: The file system will scale automatically, and it's pay-per-use for each gigabyte of data you use in EFS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Then we have different performance and storage classes.
- Hidden/Implicit Meaning: Storage economics signal.

Line 17:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So first, the scale about EFS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: You get thousands of concurrent NFS clients and 10 gigabytes plus of throughput, and you can grow to a petabyte scale network file system automatically, which is really nice.
- Hidden/Implicit Meaning: Storage economics signal.

Line 19:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: Amazon EFS
- Key Insights: You can also set the performance mode at the EFS network file system creation time, and you have several options.
- Hidden/Implicit Meaning: Storage economics signal.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The first one is general purpose, which is the default.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's used for latency sensitive use cases such as a web server, a CMS, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: But if you wanted to maximize throughput, you have max I/O, which is a high latency kind of network file system, but higher throughput and it's highly parallel.
- Hidden/Implicit Meaning: Storage economics signal.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's great if you have big data applications or media processing needs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, throughput mode, you have different options.
- Hidden/Implicit Meaning: Storage economics signal.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The first one is bursting.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you have one terabyte, means that it's 50 megabytes per second plus burst of to 100 megabytes per second, so that's the kind of bursting you get.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You don't have to remember the numbers, but just to give you an idea.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Provisioned is when you want to set your throughput regardless of your storage size.
- Hidden/Implicit Meaning: Storage economics signal.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the previous one was growing in throughput as we have more storage, but with provisions you can have one gigabyte per second for one terabyte of storage.
- Hidden/Implicit Meaning: Storage economics signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That is fine because you have decorrelated your throughput from your storage.
- Hidden/Implicit Meaning: Storage economics signal.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And finally, to make things a little bit simpler, you have elastic to automatically scale the throughput up and down based on your workload.
- Hidden/Implicit Meaning: Storage economics signal.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So for example, you can get up to three gigabytes per second for reads and one gigabyte per second for writes based on your workload, and this is going to be a great fit when you have unpredictable workloads.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Now for storage classes we have several options.
- Hidden/Implicit Meaning: Storage economics signal.

Line 34:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: We have storage tiers, which is a lifecycle management feature to allow you to move files to different storage tiers after a certain number of days.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 35:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So you have the standard tier which is used for frequently accessed files, and then you have the EFS-IA tier for infrequent access, which gives you a cost to retrieve files but a lower price to store these files.
- Hidden/Implicit Meaning: Storage economics signal.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then you have the archive storage tier.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is for rarely accessed data, so you only access, for example, data a few times a year, which is going to be a lot cheaper to store the data on that tier.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 38:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: To move your files automatically between your storage tiers, you can implement lifecycle policies, which will allow you define after how many days a file should be moved to which tier.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Durability and retention signal.

Line 39:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So here's an example in which we have files in EFS standard, and one of these files hasn't been accessed for 60 days.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EFS
- Key Insights: Then by setting up the right lifecycle policy, we can move it to a new storage tier such as EFS-IA.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 41:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: Now, in terms of availability and durability, standard is going to be great when you have a multi-AZ setup, so your EFS across multiple availability zones, which is great for your production workloads so that you're resistant to disasters.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But if you just want to do development and want to have cheaper options, then you choose one zone, which is going to give you only one availability zone, and you will still have backups on it, and it's also compatible with the IA type of storage tier.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 43:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So you have the EFS one zone-IA type of option.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: Amazon EFS
- Key Insights: Overall, by using the right EFS storage classes, you can do up to 90% in cost savings, so this is very helpful.
- Hidden/Implicit Meaning: Storage economics signal.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/055_Amazon EFS - Hands On.txt

Line 1:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So let's go ahead and practice using the Amazon Elastic File System Service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So let's create our file system and here we can give it an optional name, but I'll leave it empty and we have to choose a VPC where we want to connect to our file system.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we'll leave it as the default VPC as well, and we could just click on create and be done.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But I wanna show you the options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's click on Customize.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So here again, we'll leave the name empty and optional.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: Next, we need to choose a file system type.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we have two options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: We have regional, which gives you a file system within the region across multiple availability zones, which gives you very high availability and durability of the data.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But if you need to reduce costs, you could use the one zone option, in which case you have to choose one specific availability zone.
- Hidden/Implicit Meaning: Storage economics signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this is going to be good for development environments but not good for production environment because if that availability zone becomes unavailable, then your data will be unaccessible.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So definitely, you want to use regional in production settings and we'll use regional right now for this hands-on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Next we can enable or disabled automatic backups, but it's recommended to keep it enabled.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: Next we have lifecycle management.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is to move data across different storage tiers to save costs.
- Hidden/Implicit Meaning: Storage economics signal.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it turns out that you can transition into infrequent access or archive and then back to standard.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we're saying that hey, if a file hasn't been accessed for 30 days, but you can obviously customize this, if a file hasn't been accessed to 30 days, then move it to the infrequent access storage tier and it's going to be cheaper for you except when you access the file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But the likelihood is that after 30 days, you're rarely accessing the file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then if the file was not accessed, for example, in 90 days since the last access, then moving into the archive, which is going to be even cheaper as a storage class.
- Hidden/Implicit Meaning: Durability and retention signal; Storage economics signal.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then for example, you say that here when the file is accessed the first time, so on first access, transition back into standard because for example, we assume that it's going to be reused a lot more.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So this is called a lifecycle management.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 22:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So we can keep this on as is encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We leave it enable, that's perfect.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: And then we have performance settings.
- Hidden/Implicit Meaning: Storage economics signal.

Line 25:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So for performance settings we have throughput mode and you should have three options.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage economics signal.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, enhanced is just a category to regroup, elastic and provisions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But so you have elastic throughput mode, you have provisioned throughput mode as well as bursting throughput mode.
- Hidden/Implicit Meaning: Storage economics signal.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's start with bursting.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So bursting is a way for you to have the throughput scale with the amount of storage you're actually using and going a little bit over, that's why it's called bursting.
- Hidden/Implicit Meaning: Storage economics signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if you have one gigabytes, you get a throughput based on one gigabyte.
- Hidden/Implicit Meaning: Storage economics signal.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If you have one terabyte, you get higher throughput because you use more storage.
- Hidden/Implicit Meaning: Storage economics signal.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then there was enhanced mode.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: And now elastic is recommended, which is saying, Hey, regardless of the size of your EFS file system, we're going to give you all the I/O you need and we'll scale automatically and you're going to only pay for what you use.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is best when you have a workload with unpredictable I/O where for example, you can scale from zero megabytes per second to a hundred megabytes per second in no time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is why it is the recommended mode because it doesn't require for you to think about any settings.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then the last one, so we have bursting elastic, and the last one is provisioned.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is when you know in advance the throughput you're going to be needing.
- Hidden/Implicit Meaning: Storage economics signal.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is the provision mode.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you say, Hey, I will need 100 megabytes per second for sure.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then you also have a bursting limit of 300 megabytes per second.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And because you provision throughput in advance, you're going to pay for it in advance.
- Hidden/Implicit Meaning: Storage economics signal.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So elastic is the recommended setting.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then if you look at the additional settings, so we have general purpose and max I/O.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So in the case of elastic, you get the I/O you need based on the performance you need.
- Hidden/Implicit Meaning: Storage economics signal.

Line 45:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So general purpose is the only option for performance mode, but if you use bursting or if you use provisions, then you have the option between two settings.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage economics signal.

Line 46:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So general purpose, which is giving you high performance and latency sensitive applications.
- Hidden/Implicit Meaning: Storage economics signal.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that means the latency is very low, but if you want to get a maximum amount of I/O mode, then this is for highly paralyzed workloads and you can tolerate higher latency.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So at the expense of a higher latency, you also get more I/O.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is good in a big data type of setting, but the best recommended setting now for AWS is to use enhanced with general purpose and elastic.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it for the options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Hopefully it's not too confusing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I don't love the fact that under enhanced there is elastic and provision, it's really just three options we have.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We have bursting, elastic and provision, and that's what you should remember for the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 55:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, let's click on Next now.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Next we have the network access settings and they're very important, we have to choose a VPC.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I'll choose the default VPC and then the mount targets.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 58:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: And because we've chosen a regional type of EFS file system, we have free AZ available to us.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So each AZ is going to be assigned to a subnet.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 60:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I'll leave it as is, which is the default subnets.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The IP is automatic and we need to assign a security group.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: And so we need to go ahead and create a specific security group for my EFS file system.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 63:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: So I'll go into the EC2 console and then I will go into Security Groups.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 64:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: I will create a security group and I will call it sg-efs-demo.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 65:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: And I will call this one EFS Demo SG.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 66:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: For now, we will not have any inbound rules.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 67:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I'll click on Create Security Group and we cannot have this.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 68:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So EFS demo is good enough.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 69:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: Okay, so my EFS demo is created successfully and to have it appear here, what I need to do is to refresh the page.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 70:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we'll start all over, but the settings are the basic ones, the default ones that we come next.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 71:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: And now I can remove these security groups and choose the EFS demo security group that I have created from before.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 72:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, we're good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 73:
- Concepts: Storage Operational Context
- Services: AWS Config
- Key Insights: So now we have done all the network access configuration.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 74:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I will click on Next.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 75:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: We have a file system policy that is optional and we will not touch it right now.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 76:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is pretty advanced and we don't need it right now.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 77:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I will click on Next.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 78:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And here we can review and create all the file system settings.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 79:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we're happy with that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 80:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And when we're done, we just click on Create.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 81:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: Now my file system is creating and I will get back to you when it is created.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 82:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: My file system is now available and I can go in it and see that the fact that there is six kilobytes of size that is being used right now.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 83:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: And when you have a EFS file system, you only pay for the storage you use, so right now my cost are zero.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage economics signal.

Line 84:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is good, this is created.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 85:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: And now we want to mount this onto EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 86:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: Therefore, you know the next step we're going to create EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 87:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's launch some instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 88:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And I will name this one Instance A, because we will launch it in subnet of AZA.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 89:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we are going to run Amazon Linux version 2.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 90:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're good to go, we'll use the t2.micro because it's free tier eligible.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 91:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We will disable the key pair.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 92:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: We'll just do EC2 instance connect to connect to our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 93:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: For network settings, I will leave it as is and there will be a new security group created with these rules right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 94:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So allow SSH access from anywhere, which is good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 95:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then we have eight gigabytes of GP2 storage.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 96:
- Concepts: Block and File Storage Design
- Services: AWS Config, Amazon EC2, Amazon EFS
- Key Insights: But now because we want to configure the storage of the EC2 instance into Amazon EFS, we can actually now do it from within the EC2 console, which is very exciting.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 97:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let me show you how to do it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 98:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Before we had to run some commands.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 99:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So there are 0 x file systems and you do edit and it says that you cannot add a file system before you choose to select a subnet.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 100:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we scroll back up, we go to Network Settings, we Edit it, and in subnet I'm going to choose eu-west-1a.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 101:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So now that my subnet is created, I can go back into file systems.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 102:
- Concepts: Block and File Storage Design
- Services: Amazon EFS, Amazon FSx
- Key Insights: And as you can see, I can add an EFS or an FSx file system.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 103:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So we'll add an EFS file system, then we'll click on Add Shared File System.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 104:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: It's going to be linked to my EFS right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 105:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: The mount point is /mnt/efs/fs1.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 106:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is good enough for us.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 107:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is going to automatically create and attach security groups for us, which is amazing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 108:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And then it's automatically going to mount shared file system by attaching the required user data scripts.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 109:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: So these in the past we had to run ourselves onto the EC2 instance manually or create our own user data script.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 110:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: But now this is done for us by the EC2 console, which is really nice.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 111:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, let's create one instance and launch it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 112:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this instance is launched.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 113:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I can go view all instances and I'm going to launch a new one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 114:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, I will call this one Instance B.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 115:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We'll have Amazon Linux 2, again to make it quick, I'm going to proceed without a key pair, I will go into eu-west-1b.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 116:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I can just select the security group of launch-wizard-2 that was created just from before.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 117:
- Concepts: Block and File Storage Design
- Services: AWS SAM, Amazon EFS
- Key Insights: And then again, we need to edit this and add a file system of type EFS and we'll use the same file system as before and the same mount points and we'll leave these options on as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 118:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we're good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 119:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's launch that instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 120:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And now let's have a look at the interesting stuff that has happened.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 121:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to just do instant state equals running and refresh this until I see both of my instances.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 122:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So now they're both running.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 123:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: And the interesting thing is that if we go into the EFS console and go to the network tab, as we can see now, each availability zone now has multiple security groups.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 124:
- Concepts: Block and File Storage Design
- Services: Amazon EC2, Amazon EFS
- Key Insights: So we have the EFS demo we created from before, but also the efs-sg-1 and efs-sg-2, which were auto created by the EC2 console for us and attached into our EFS file system.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 125:
- Concepts: Block and File Storage Design
- Services: Amazon EC2, Amazon EFS
- Key Insights: So if I go into my EC2 instances and then security group right here, I can look at for example, this efs-sg-2, look at the inbound rules.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 126:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: And as you see, it allows the protocol NFS on port 2049 and the source of it, if we have a look at the inbound rules himself, the source of this is this security group and that security group is the one that is attached into my EC2 instance, instance B.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 127:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So this allows my instance B to access the EFS file system because that security group right here called efs-sg-2 is attached into my EFS file system.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 128:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So all the setup is done by AWS for us, which is truly nice.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 129:
- Concepts: Storage Operational Context
- Services: AWS SAM, Amazon EC2
- Key Insights: So now if I go into one of these instance, we're going to connect using EC2 instance connect on this tab, and then I will also do the exact same thing by connecting to instance B over EC2 instance connect.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 130:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So now I can, for example, verify the fact that yes, in ls /mnt/efs/fs1/ there is an EFS file system and now we need to create files in it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 131:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So to make it simple, I will elevate my right and type sudo SU and then I can do echo "hello world" into the /mnt/efs/fs1/hello.txt.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 132:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we've created that file named hello.txt.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 133:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And if I do cat and then this entire file name right here, as you can see it says hello world.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 134:
- Concepts: Block and File Storage Design
- Services: Amazon EC2, Amazon EFS
- Key Insights: So this file has been created into my EFS file system from this EC2 instance, which is an eu-west-1a.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 135:
- Concepts: Block and File Storage Design
- Services: AWS SAM, Amazon EC2
- Key Insights: But now if I go into my second EC2 instance and do LS and then the same file system, so I look for files in it, as you can see, we also see this hello.txt file in it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 136:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And if I do cat and then cat the file, hello.txt, it says hello world as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 137:
- Concepts: Block and File Storage Design
- Services: AWS SAM, Amazon EC2, Amazon EFS
- Key Insights: So as you can see, the EFS file system is indeed mounted as a network drive onto both my EC2 instances and they are in different AZs and they share it the same EFS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 138:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's amazing and that's a different kind of storage that you had the demo of it right now.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 139:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So that's it for the EFS demo.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 140:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That was pretty complete.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 141:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: Now to just clean it up, what you can do is you can terminate these two EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 142:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you go here and you terminate them.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 143:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: And something else you can do is you can go into the EFS file system, you can delete it by entering the file system ID, and then when everything is deleted, you can go ahead into your security groups and delete the extra security groups that have been created during this demo.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 144:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 145:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/056_EFS vs EBS.txt

Line 1:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EFS
- Key Insights: So now let's talk about the differences of EBS volumes and EFS file systems.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So the EBS volumes, they're attached to one instance at a time, except in the edge case of using the multi attached feature of the io1 and io2 types of volume, but that is for very specific use cases.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: EBS volumes are also locked at the AZ level, so here is an example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: We have one EC2 in AZ 1 and we have one EBS volume attached to it and it cannot be attached to an EC2 instance in AZ 2.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: For the gp2 type of volume, the IO will increase if the disc size increases, and for the gp3 and IO1 type of volumes, you can increase the IO independently from your disc size.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: To migrate an EBS volume across AZ, we need to take a snapshot, so it will go into the EBS snapshots, and then we can restore the snapshot into another AZ.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is how we move from one AZ to the next.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: Amazon EBS
- Key Insights: Now, the EBS volumes backups, they will use IO, and so you shouldn't run them while your application is handling a lot of traffic because that may impact the performance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage economics signal.

Line 9:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: For your EC2 instances, the route EBS volumes of your instances will get terminated by default if the EC2 instance gets terminated, but you can disable that behavior.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: Now for EFS, it's a bit different.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So it's a network file system, and the goal is really to attach it to hundreds of instances across availability zone, so we really see the distinction here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So one with one EFS file system, we can have different mount targets in different AZs, and then multiple instances can share that one file system together, .
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's very helpful, for example, when you have WordPress and it's only for Linux instances because it is using the POSIX system.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EFS
- Key Insights: The EFS has a higher price point than EBS, but you can leverage storage tiers for cost savings.
- Hidden/Implicit Meaning: Storage economics signal.

Line 15:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2, Amazon EFS
- Key Insights: So hopefully you understand now the difference between EFS and EBS and for the instance store, well it is physically attached to the EC2 instance, and so therefore if you, you lose your EC2 instance, you will lose the storage as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/06_EC2 Instance Storage/057_EBS & EFS - Section Cleanup.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's just clean up this entire section.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So for this I'm gonna go to Action on my file system and delete it, and for this I have to enter the file system ID, so I'll just copy and paste this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And so okay, we're gonna get rid of our file system.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Perfect!
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: Now into our EC2 instances, make sure to terminate any running EC2 instance, so that's good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: Then in terms of volumes, we're going to have to clear up volumes as well, so any volumes that is available you have to terminate it, so I'll right-click and delete all these volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: Now for snapshots, you've made a few snapshots, so let's just go back and delete every snapshot you have.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: Just so that you can get rid and not pay for any storage for snapshots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then finally, security groups.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If you want to, because it's going to get a lot of security groups right here, you can basically delete so many of these security groups except the one for default, so just don't delete that one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you can go ahead and delete these security groups.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: And they will only be deleted once you have, basically, deleted all your EC2 instances associated with those.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So maybe these won't be deleted right away but you can just keep on trying until it works.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'll delete this security group now.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Yes this one works.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: Elastic Load Balancing
- Key Insights: I'll delete the load balancer for the security group.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Block and File Storage Design
- Services: Amazon EC2, Amazon EFS
- Key Insights: Yes that worked, and this EC2 for EFS, it's still used by my instances so I have to wait for my instances to be shutting down properly before I can go ahead and delete that last security group.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'll have to wait a little bit, but that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Once you've cleared up everything you're ready to go for the next section.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/056_EBS Overview.txt

Line 1:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: Welcome to this section where we will look at the different storage options for EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So first the most important ones are going to be EBS volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's define what they are.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: And EBS volume stands for Elastic Block Store.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's a network drive that you can attach to your instances while they run.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And we've been using them without even knowing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So we this EBS volumes allow us to persist data even after the instance is terminated.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so that's the whole purpose.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Block and File Storage Design
- Services: AWS SAM, Amazon EBS, Amazon ECR
- Key Insights: We can recreate an instance and mount the same EBS volume from before, and we will get back our data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That is very helpful.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So these EBS volumes at the CCP level can only be mounted to one instance at a time.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: And when you create an EBS volume it is bound to a specific availability zone.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: That means that you cannot have an EBS volume in created in, for example, US East one attached to an instance in US east one b.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We'll see this in the diagram in a second.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So how do you think of EBS volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well you can think of them as network USB sticks.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's a USB stick that you can take from a computer and put it in another computer, but you actually don't physically put it in a computer.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's attached through the network.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now let's look at it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So EBS volumes are network drive.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: As I said it's not a physical drive okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So to communicate between the instance and the EBS volume it will be using the network.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And because the network is used there may be a bit of latency from one computer to reach to another server.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: Now EBS volumes, because they are a network drive, they can be detached from an EC2 instance and attached to another one very quickly.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that makes it super handy when you want to do failovers.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: For example, EBS volumes are locked to a specific availability zones.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That means that, as I said, if it's created in Us-east-1, it cannot be attached to Us-east-1.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 29:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: (none explicit)
- Key Insights: But we will see in this section that if we do a snapshot, then we are able to move a volume across from different availability zones.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And finally it's a volume.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you have to provision capacity in advance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you need to say how many gigabytes you want in advance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And the IOPs which is I o operations per second.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: And you're basically defining how you want your EBS volume to perform.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You're going to get billed for that provisioned capacity.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: And you can increase the capacity over time if you want to have better performance or more size.
- Hidden/Implicit Meaning: Storage economics signal.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So as a diagram, what does it look like?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: Well we have usd1 a we have one EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: And we can attach for example one EBS volume to that EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: If we create another EC2 instance, as I said, an EBS volume cannot be attached to two instances at a time at the certified cloud practitioner level.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 41:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: And therefore, what I want to say is that this EC2 instance needs to have its own EBS volume attached to it, but it is very possible for us to have two EBS volumes attached to one instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Think of it as two network USB sticks into one machine.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That makes a lot of sense.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: Now EBS volumes are linked to an availability zone.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So as you can see, all this diagram has been so far using US East one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So if you wanted to have other EBS volumes in another AZ, then you would need to create this separately in the other availability zone.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Block and File Storage Design
- Services: AWS SAM, Amazon EBS, Amazon EC2
- Key Insights: So just the same way that your EC2 instances are bound to an AZ, so are the EBS volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: Finally, it is possible for us to create EBS volumes and leave them unattached.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: They don't need to be necessarily attached to an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: They can be attached on demand and that makes it very, very powerful.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: Finally, when we go ahead and create EBS volumes, uh, through EC2 instances, there is this thing called a delete on termination attribute.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: So if you look at this when we create an EBS volume in the console, when we create an EC2 instance, there is the second to last column called delete on termination.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: And by default it is ticked for the root volume and not ticked for a new EBS volume.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 55:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: So this controls the EBS behavior when an EC2 instance is being terminated.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So by default, as you can see, the EBS volume is deleted alongside the instance being terminated.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's enabled.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 58:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: And by default any other attached EBS volume is not deleted because it's disabled by default.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But obviously, as we can see in this UI, we can control if you want to enable or disable delete on termination.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 60:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so use case for.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: It would be for example that if you want to preserve the root volume when an instance is terminated, for example to save some data, then you can disable delete on termination for the root volume and you'll be good to go.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that could be an exam scenario at the exam.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 63:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/057_EBS Hands On.txt

Line 1:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So let's have a look at the EBS volumes attached to our instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if you click on instance and then you go to the storage tab in here, you find that there is a root device and there's a block device on it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Block and File Storage Design
- Services: Amazon EC2
- Key Insights: As you can see, we got one volume of eight gigabytes currently attached into our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So what I can do is I can click on this volume and it will take me into the volumes interface of AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And we can see that, yes, indeed, our volume exists and it's there.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's in use as shown here and it's attached to an instance right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So we have a different kind of console here and to access it, you can just go on the left hand side and click on volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So as we can see, now we have one EBS of eight gigabytes and what I can do is I can create a second volume.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So let me create a volume and I will have many options to choose from, GP2, GP3 and so on but I will just use GP2 of type of size two gigabytes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: AWS SAM, Amazon EC2
- Key Insights: And then for availability zone, I can choose the same one where my EC2 instance is.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: So for this, I'm gonna go into my EC2 instance, in here and I will find which availability zone it is on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I scroll down, and it is going to be in the networking one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I scroll down in the networking and here, availability zone, it says eu-west-1b.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: Therefore, the volume I will create is going to be in eu-west-1b because the EBS volumes are bound by specific AZ.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: I will have it done and create this volume.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And now my volume is created.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And what I can do is if I can click on it, this one is currently not attached.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so it's been creating so let me refresh this to see if it's created.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, it's available and it's not attached yet.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So therefore, because it's available, what I can do is action and then I can attach the volume and we need to find an instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we have one running right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: And so we're going to attach this volume to my instance, click on attach volume and voila, our instance now has two EBS volumes attached to it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: How do we know?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: Well, I can refresh this page, go to storage on my EC2 console, scroll down.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: As you can see now for block devices, I have two block devices.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I have the one of eight gigabytes and the one of two gigabytes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: To actually use this new block device, it's a bit more complicated and out of scope for this course, but you can go to format EBS volume attach EC2, and you should find something like, yes, make an Amazon EBS volume available to use on Linux and this gives you instructions on how to do it but again, this is out of scope for this.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 29:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So now if I go into my volumes and I create a volume, I can create a volume of two gigabytes of GP2 but this time the AZ is going to be eu-west-1a and not eu-west-1b.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: So it's gonna be a different AZ than the one of my EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And the reason I do so is to show you that right now, we have three GP2 volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let me refresh this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the last one is available and it's a different AZ, so eu-west-1a.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Block and File Storage Design
- Services: Amazon EC2
- Key Insights: And if I do actions and then attach volume, as you can see, I cannot attach it to my EC2 instance because my EC2 instance is in eu-west-1b.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 35:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: And so therefore, we can see that the EBS volumes indeed are bound by a specific availability zone.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: Lastly, what I can do is that I can take this volume, do action, delete volume, and it's gone.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that really shows you the power of the cloud.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: I can just request volumes, delete volumes right on the go in the matters of seconds.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: Okay, so we have our two EBS volumes in here and what I wanna show you now is a cool behavior.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what happens if I terminate my instance?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: Well remember, and I will show you again, this one root volume of eight gigabytes has the delete on termination attribute.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So how do we know?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, if I go into my storage and then go to my block devices, into this table right here, and scroll all the way right, you see the first one has delete on termination yes and the second one no.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So why this one is yes?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, I don't know if you remember, but when you go through the process of launching an instance, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then you scroll down to the storage, in here, if you click on advanced, you can see the fact that it is your roots of eight gigabytes and by default, this delete on termination attribute is yes, which makes sense, but you could set it to no if you wanted to keep the root after terminating your instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this explains why we see from before, the yes in this table.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so therefore, if I go ahead and terminate my instance which I will, so it says successfully terminated so it's going to really remove it from here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: I can go back into my EBS volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I can refresh them.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: And what's going to happen is that this one soon is going to be available so because it's going to be detached from my EC2 instance and then it's going to be terminated.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to pause until this is done.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And here we go.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So my eight gigabyte volume has now disappeared.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 55:
- Concepts: Block and File Storage Design
- Services: Amazon EC2
- Key Insights: Only my two gigabyte volume is left and if I go to my EC2 console, well, it says that my first instance has been terminated.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 56:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/058_EBS Snapshots.txt

Line 1:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So now let's talk about EBS Snapshots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So, an EBS Snapshot is a backup at any point in time of your EBS volume.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: And for this, it's not necessary to detach your EBS volume from your EC2 instance but it's recommended.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: You can copy these EBS Snapshots across different Availability Zones or even across different Region.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: So, for example, let's take EC2 instance that has an EBS volume in US-EAST-1A and an EC2 instance in US-EAST-1B.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So we can take a snapshot of the EBS volume.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: Okay, and thanks for that snapshot we can actually restore it in another AZ.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 8:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So this is how you would transfer an EBS volume from one AZ to another.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: Next, you need to know about a few EBS Snapshots feature.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So the first one is called the EBS Snapshot Archive.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 11:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: It's the ability for you to move the snapshot to an "archive tier" that is going to be up to 75% cheaper.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 12:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So, if you do move this snapshot to an "archive tier" then it will take you from within 24 to 72 hours for restoring the archive.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's not immediate.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: The other thing is to have a Recycle Bin for EBS Snapshots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So in case you do delete your EBS Snapshots instead of being permanently deleted then instead they're going to land in Recycle Bin.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so the idea with this is that you can recover them from an accidental deletion.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: And the retention for your Recycle Bin can be set from anywhere between one day to one year.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 18:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: The last feature you need to know about for your EBS Snapshots is called the Fast Snapshot Restored.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 19:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So this forces a full initialization of your snapshot to have no latency on the first use.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: This is particularly helpful if your snapshot is big, very big and need to initialize an EBS volume or needs to instance out of it very quickly, but this feature costs a lot of money, so be careful when using it.
- Hidden/Implicit Meaning: Storage economics signal.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/059_EBS Snapshots - Hands On.txt

Line 1:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So we have this two gigabyte, GP2 EBS Volume available to us, and we can take a snapshot from it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So if we do Actions, we can Create a snapshot.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So we can add a Description, for example, DemoSnapshots, and then click on Create snapshots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: (none explicit)
- Key Insights: So then on the left hand side menu, instead of Volumes, you can click on Snapshots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: And Snapshots shows you a list of all the snapshots you have.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, we have one right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It is Completed.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It is 100% Available.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: And we get some information around the snapshot itself.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: For first of all, what we can do is that we can Copy this snapshot into other region.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So if you right click and do Copy Snapshots, then as you can see, you can copy the snapshot into any destination region that you want.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this can come in very handy, in case you want for example, to have a Disaster Recovery Strategy, to make sure data is backed up in another region of AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I won't do that, I won't do so, but you get the idea.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon ECR
- Key Insights: Another thing I can do is take the Snapshot, and I can recreate a Volume from it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: (none explicit)
- Key Insights: So Action, Create volume from snapshots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And we choose a two gigabytes GP2 Volume.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then the target AZ doesn't have to remain eu-west-1a, it can be, for example, eu-west-1b.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And we can also encrypt these volumes if you wanted to and add some Tags.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And so as we can see, when we click on Create volume, what's going to happen is that if we go back into our Volumes, well, now we have two Volumes, as you can see.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: And one of them, this one was restored through a Snapshots, okay?
- Hidden/Implicit Meaning: Durability and retention signal.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And it is an eu-west-1b.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So the idea is that thanks to Snapshots, we can quote unquote copy EBS volumes across different Availability Zones.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that's very handy.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: If we look again at Snapshots, we can have a look at what's called the Recycle Bin.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So the Recycle Bin is a way for you to protect your EBS Snapshots from accidental deletion, as well as your Amazon Machine Images.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So we can Create a Retention Rule and name it DemoRetentionRule.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 27:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: I will select EBS Snapshots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I will Apply to all resources and retain them during one day.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And for Rule Lock Setting, I will leave this unlocked, so that I can delete this rule whenever I want to.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 30:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: And then click on Create Retention Rule.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And now on the Resources, we can see if we have Resources in the Recycle Bin.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Lifecycle Operations
- Services: Amazon EC2
- Key Insights: So let's go back into our Snapshots in the EC2 Console.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: So I'm going to go into EC2.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: Here we go, Snapshots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Little shortcuts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: And what I'm going to do is take the Snapshots, and first, before I delete it, I wanna show you the Storage Tiers.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So right now it is a Standard Storage Tier, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Cost and Performance Optimization, Lifecycle Operations
- Services: (none explicit)
- Key Insights: But you can move the Storage Tier, by Archiving a snapshots, and so I need to move the Storage Tier into another Pricing Level.
- Hidden/Implicit Meaning: Storage economics signal.

Line 39:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: But if you want to restore it, of course, you will have to wait 24 to 72 hours.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So just to show you.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: But anyway, let's go ahead and delete the snapshot.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So we'll delete the Snapshots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: As you can see, it's gone.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: And before, it used to completely delete the snapshots, and you couldn't recover it, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: As you can see, it's gone.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 46:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: But now thanks to the Recycle Bin, well, if I refresh here my Resources, I can now see that my Snapshot has appeared here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And what I can do is click on it and Recover it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Lifecycle Operations
- Services: Amazon EC2
- Key Insights: Yes, Recover Resources, and voila, it's back into my Snapshots on my EC2 console.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, that was pretty awesome, right?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: Okay, that's it for EBS Snapshots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/063_EBS Volume Types.txt

Line 1:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So, now, let's talk about EBS volumes and their different volume types.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: They come in six different types today, and we can group them in several categories.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: The first one is gp2, gp3, which is a general purpose SSD volume that will balance price and performance for a wide variety of workloads, and this is something we've been using so far in this course.
- Hidden/Implicit Meaning: Storage economics signal.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then we have io1 and io2 Block Express.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: They're highest-performance SSD volumes that will be used for mission-critical low-latency and high-throughput workloads.
- Hidden/Implicit Meaning: Storage economics signal.

Line 6:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: Then we have st1 volumes, and they're low cost HDD volume designed for frequently accessed throughput intensive workloads.
- Hidden/Implicit Meaning: Storage economics signal.

Line 7:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: We have sc1 volume, which are going to be the lowest cost HDD volume, and it will be designed for less frequently accessed workloads.
- Hidden/Implicit Meaning: Storage economics signal.

Line 8:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: Now, how do you define an EBS volume?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Well, you can have several factors, for example, size, throughput, and IOPS, which means I/O operations per second, and, obviously, when in doubt, always consult the documentation.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage economics signal.

Line 10:
- Concepts: Block and File Storage Design
- Services: Amazon EC2
- Key Insights: Now, for your EC2 instances, only gp2 and gp3 and io1 and io2 can be used as boot volumes.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That means where the root OS is going to be running.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, now, let's go do a deeper dive onto gp2, gp3, io1 io2, and the other ones, but gp2, the general purpose and the provisioned IOPS are going to be the most important for your exam.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So gp2 is cost effective storage with low-latency, and you can use it for system boot volumes, virtual desktops, development and test environments.
- Hidden/Implicit Meaning: Storage economics signal.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The size can vary between one gigabytes to 16 terabytes, and so we have differences between gp2 and gp3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: Gp3 is the newer generation of volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So gp3 gives you a baseline of 3000 IOPS and a throughput of 125 megabytes per second, and then we can increase IOPS up to 16,000 and throughput up to 1,000 megabytes per second independently, okay, so they're not linked.
- Hidden/Implicit Meaning: Storage economics signal.

Line 17:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: For gp2, this is the older version, there're small gp2 volumes that can burst up to 3,000 IOPS, and then the size of the volume and the IOPS are linked.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: That means that if you increase the IOPS, if you increase the number of gigabytes on your volume, then you're going to get three more IOPS up to 16,000 IOPS, and so that means that if you have 5,334 gigabytes, then you will have 16,000 IOPS, and you'll maxed it out.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what do you remember from this slide?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You remember that in gp2, gp3, this is for cost-effective storage latency, and then gp3, you can independently set the IOPS and the throughput, whereas for gp2, they're linked together.
- Hidden/Implicit Meaning: Storage economics signal.

Line 21:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So, now, let's talk about provisioned IOPS volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So they're used for critical business applications that need to sustain IOPS performance or applications that need a lot of IOPS, for example, more than 16,000.
- Hidden/Implicit Meaning: Storage economics signal.

Line 23:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So from an exam perspective, whenever you see, for example, a database workload that is very sensitive to storage performance and consistency, then the provisioned volumes are going to be great.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage economics signal.

Line 24:
- Concepts: Block and File Storage Design
- Services: Amazon EC2
- Key Insights: So we have the io1 type of volume between four and 16 terabytes, and the max IOPS you can provision, so the max PIOPS, is going to be around 64,000 for natural EC2 instances and 32,000 for the other kind of instances, and because we have an io1 type of volume, we can increase the provisioned IOPS independently from the storage size.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: If we consider the io2 block express type of volume, you can go up to 64 terabytes of data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You get sub-millisecond latency, and you get a lot of max IOPS, such as 256,000 with an IOPS to gigabyte ratio of 1,000 per one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: Amazon EBS
- Key Insights: So this is definitely a very high performance I/O type of volume, and on top of this, the provisioned IOPS volumes that we'll see in the next lectures support the EBS multi-attach feature.
- Hidden/Implicit Meaning: Storage economics signal.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, now, let's quickly touch upon st1 and sc1.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So they cannot be a boot volumes.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 30:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: This is only for the previous types of volumes.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 31:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: You can get the size up to 16 terabytes, and we get two kinds of volumes here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We have the throughput optimized HDD, so st1, which is great for big data, data warehousing, and log processing, which gives you a max throughput of 500 megabytes per second and a max IOPS of 500, and then for cold HDD, so sc1, this is for archive data, so data that is infrequently accessed, and this is when you would use it when you need to have the lowest possible cost.
- Hidden/Implicit Meaning: Durability and retention signal; Storage economics signal.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Here, the max throughput is 250 megabytes per second, and the max IOPS is 250 as well.
- Hidden/Implicit Meaning: Storage economics signal.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, you don't have to remember all these details going into the exam.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: You just need to understand the differences at a high level of all these volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the general purpose SSD versus the provisioned IOPS SSD, in case you need a database, versus some st1 and sc1, in case you need to have high throughput and lowest cost, and so you can find a summary of all I said in this link right here, okay, which is a screenshot I just took you.
- Hidden/Implicit Meaning: Storage economics signal.

Line 37:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: So don't need to remember the details again, but, remember, that if you want to get, also, over 32,000 IOPS, you need EC2 Nitro with io1 or io2, and that will be it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/064_EBS Multi-Attach.txt

Line 1:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So now let's talk about the Multi-Attach feature of the EBS volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design
- Services: AWS SAM, Amazon EBS, Amazon EC2
- Key Insights: So as the name indicates, the Multi-Attach feature allows you to attach the same EBS volume to multiple EC2 instances in the same availability zone.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what does that mean?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Block and File Storage Design
- Services: Amazon EC2
- Key Insights: That means that, well, we have multiple EC2 instances, and we have an io2 volume with the Multi-Attach feature enabled.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: Then this volume can be attached to multiple EC2 instances at a time, which is something that is only available for the io1 and the io2 family of EBS volumes.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Now, each instance will have full read and write permissions to the high-performance volume.
- Hidden/Implicit Meaning: Storage economics signal.

Line 7:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: And so that means that they can all write and read at the same time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the use case for this is you have higher application availability in case of a clustered Linux application, for example, using Teradata, or if your application must manage concurrent rights operation.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 9:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So just so you know, this Multi-Attach feature is only available from within a specified availability zone, of course.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: It doesn't allow you to attach an EBS volume from one AZ to another AZ.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Block and File Storage Design
- Services: AWS SAM, Amazon EC2
- Key Insights: Another limitation of Multi-Attach is that it is up to 16 EC2 instances at a time that can be attaching the same volume.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this is something you have to know for the exam, so be careful to that 16 number.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: Finally, for it to work, you must use a file system that is going to be cluster-aware.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 14:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So it's a different file system than XFS or EX4.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this is just a little bit more details, but in case you wanted to use this feature, now you know.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it for this lecture, I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then we'll see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/065_EBS Encryption.txt

Line 1:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: All right, finally, let's talk about the last operation, which is how do you encrypt an EBS volume?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So, when you created and encrypted EBS volume, right away you get the following, you get data at rest being encrypted inside your volume, all the data in flight between the instance and the volume is encrypted, all the snapshots will be encrypted, and all the volumes created from the snapshots are encrypted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Data Protection and Immutability
- Services: Amazon ECR
- Key Insights: So, there's encryption all around the place, and the all encryption and decryption mechanism is handled transparently for you.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, you have nothing to do.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: It's all handled by EC2 and EBS behind the scenes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So, encryption overall, something you should use because it has a very, very minimal impact on latency, almost nothing, and it leverages keys from KMS, so AES-256, that's something that you should know.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 7:
- Concepts: Data Protection and Immutability, Lifecycle Operations
- Services: (none explicit)
- Key Insights: And so, when you copy an unencrypted snapshot, then you enable encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So, let's talk about a very important thing, which is how do you encrypt an unencrypted EBS volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So, to encrypt an unencrypted EBS volumes, which is a very tough thing to say, you create an EBS snapshot of the volume.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: Then you encrypt the EBS snapshot using the copy function.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: Then we create a new EBS volume from the snapshots and that volume will also be encrypted, and now we can attach the encrypted volume to the original instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, let's go have a look at how we do this in the console.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Block and File Storage Design, Data Protection and Immutability
- Services: Amazon EBS
- Key Insights: Okay, so let's explore the different options with EBS volumes and encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So, let's create a one gigabytes EBS volume, and this one will not be encrypted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Block and File Storage Design, Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So, I will leave this setting unchecked, and, therefore, when I create my volume and have a look at it, if we look at the state of encryption, it says not encrypted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Block and File Storage Design, Data Protection and Immutability, Lifecycle Operations
- Services: (none explicit)
- Key Insights: Okay, so what's happening is that if we do take to create a snapshot from this volume, as we can see the encryption setting will be set to not encrypted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So, any snapshots encrypted from a non-encrypted EBS volume, will be not encrypted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So, let's go ahead and create this snapshots, and let's go ahead to the snapshots page.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: And so, this snapshot, as we observe is not encrypted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Data Protection and Immutability, Lifecycle Operations
- Services: AWS SAM
- Key Insights: And so, to create an encrypted snapshot, now, what you have to do is to do action and then create copy snapshot, excuse me, and when you copy the snapshots, you have the option right here to enable encryption into the same destination region.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So, now, this snapshot is going to be encrypted and you can select the KMS key, right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So, we'll copy this snapshots and we're good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: (none explicit)
- Key Insights: Next, what I have to do is from this encrypted snapshots that is now completed I can create a volume.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: And if I do action, create volume from snapshots, as we can see, we can create a one gigabyte EBS volume.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Block and File Storage Design, Data Protection and Immutability, Lifecycle Operations
- Services: (none explicit)
- Key Insights: And here encryption is enabled for this volume because my underlying snapshot is encrypted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Block and File Storage Design, Data Protection and Immutability, Lifecycle Operations
- Services: (none explicit)
- Key Insights: And, therefore, if I click on create volume, and have a look at my volumes on the left hand side, this one who was created from a snapshots is now available and it says encryption, encrypted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, that's good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: We saw how we can encrypt one EBS volume this way, by going through a snapshot copying and so on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: There's a shortcut.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Block and File Storage Design, Data Protection and Immutability, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: So, if you take your unencrypted snapshot, so this one is not encrypted, so if you take this snapshot and then you do action, create volumes from snapshot, zero shortcuts, you can actually on the fly enable encryption for the EBS volume directly from here, select an EBS key, and you would create an encrypted EBS volume this way through a unencrypted snapshots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's say you've seen all the options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: AWS SAM
- Key Insights: Just to be finished make sure to delete your snapshots by typing deletes and then you would do the exact same thing on your volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: Just delete these EBS volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/066_Amazon EFS.txt

Line 1:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: Hi, and welcome to this lecture on Amazon EFS, Elastic File System.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So EFS is a managed NFS, which is a network file system.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Block and File Storage Design
- Services: Amazon EC2, Amazon EFS
- Key Insights: And because it's a network file system, it can be mounted on many EC2 instances, and these EC2 instances can also be in different availability zones, that's the whole power of EFS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's highly available, it's very scalable, it's expensive.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: It's about three times the cost of a GP2 EBS volume, and you pay per use so you don't have to provision capacity in advance.
- Hidden/Implicit Meaning: Storage economics signal.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let me explain.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So you have your EFS file system and you surround it with a security group.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: And then you can have EC2 instances, many of them in the US east-1A availability zone for example, or EC2 instances in the US east-1B availability zone or US east-1C availability zones for your EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Block and File Storage Design
- Services: AWS SAM, Amazon EFS
- Key Insights: And they can all connect at the same time to the same network file system through through EFS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So the use cases of EFS are content management, web serving, data sharing, WordPress.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: It uses internally the NFS protocol, and to control access to your EFS, you need to set up a security group.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: Now EFS, it's very important to note that it's only compatible with Linux-based AMI and not Windows.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 13:
- Concepts: Block and File Storage Design, Data Protection and Immutability
- Services: Amazon EFS
- Key Insights: You can enable encryption at rest in your EFS drive using KMS, and it's a standard file system on Linux, so uses the POSIX system, and it has a standard file API.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: And the cool thing about EFS is that you don't need to plan the capacity in advance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: The file system will scale automatically, and it's pay-per-use for each gigabyte of data you use in EFS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Then we have different performance and storage classes.
- Hidden/Implicit Meaning: Storage economics signal.

Line 17:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So first, the scale about EFS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: You get thousands of concurrent NFS clients and 10 gigabytes plus of throughput, and you can grow to a petabyte scale network file system automatically, which is really nice.
- Hidden/Implicit Meaning: Storage economics signal.

Line 19:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: Amazon EFS
- Key Insights: You can also set the performance mode at the EFS network file system creation time, and you have several options.
- Hidden/Implicit Meaning: Storage economics signal.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The first one is general purpose, which is the default.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's used for latency sensitive use cases such as a web server, a CMS, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: But if you wanted to maximize throughput, you have max I/O, which is a high latency kind of network file system, but higher throughput and it's highly parallel.
- Hidden/Implicit Meaning: Storage economics signal.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's great if you have big data applications or media processing needs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, throughput mode, you have different options.
- Hidden/Implicit Meaning: Storage economics signal.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The first one is bursting.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you have one terabyte, means that it's 50 megabytes per second plus burst of to 100 megabytes per second, so that's the kind of bursting you get.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You don't have to remember the numbers, but just to give you an idea.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Provisioned is when you want to set your throughput regardless of your storage size.
- Hidden/Implicit Meaning: Storage economics signal.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the previous one was growing in throughput as we have more storage, but with provisions you can have one gigabyte per second for one terabyte of storage.
- Hidden/Implicit Meaning: Storage economics signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That is fine because you have decorrelated your throughput from your storage.
- Hidden/Implicit Meaning: Storage economics signal.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And finally, to make things a little bit simpler, you have elastic to automatically scale the throughput up and down based on your workload.
- Hidden/Implicit Meaning: Storage economics signal.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So for example, you can get up to three gigabytes per second for reads and one gigabyte per second for writes based on your workload, and this is going to be a great fit when you have unpredictable workloads.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Now for storage classes we have several options.
- Hidden/Implicit Meaning: Storage economics signal.

Line 34:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: We have storage tiers, which is a lifecycle management feature to allow you to move files to different storage tiers after a certain number of days.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 35:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So you have the standard tier which is used for frequently accessed files, and then you have the EFS-IA tier for infrequent access, which gives you a cost to retrieve files but a lower price to store these files.
- Hidden/Implicit Meaning: Storage economics signal.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then you have the archive storage tier.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is for rarely accessed data, so you only access, for example, data a few times a year, which is going to be a lot cheaper to store the data on that tier.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 38:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: To move your files automatically between your storage tiers, you can implement lifecycle policies, which will allow you define after how many days a file should be moved to which tier.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Durability and retention signal.

Line 39:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So here's an example in which we have files in EFS standard, and one of these files hasn't been accessed for 60 days.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EFS
- Key Insights: Then by setting up the right lifecycle policy, we can move it to a new storage tier such as EFS-IA.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 41:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: Now, in terms of availability and durability, standard is going to be great when you have a multi-AZ setup, so your EFS across multiple availability zones, which is great for your production workloads so that you're resistant to disasters.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But if you just want to do development and want to have cheaper options, then you choose one zone, which is going to give you only one availability zone, and you will still have backups on it, and it's also compatible with the IA type of storage tier.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 43:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So you have the EFS one zone-IA type of option.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: Amazon EFS
- Key Insights: Overall, by using the right EFS storage classes, you can do up to 90% in cost savings, so this is very helpful.
- Hidden/Implicit Meaning: Storage economics signal.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/067_Amazon EFS - Hands On.txt

Line 1:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So let's go ahead and practice using the Amazon Elastic File System Service.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So let's create our file system and here we can give it an optional name, but I'll leave it empty and we have to choose a VPC where we want to connect to our file system.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we'll leave it as the default VPC as well, and we could just click on create and be done.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But I wanna show you the options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's click on Customize.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So here again, we'll leave the name empty and optional.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: Next, we need to choose a file system type.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we have two options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: We have regional, which gives you a file system within the region across multiple availability zones, which gives you very high availability and durability of the data.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But if you need to reduce costs, you could use the one zone option, in which case you have to choose one specific availability zone.
- Hidden/Implicit Meaning: Storage economics signal.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this is going to be good for development environments but not good for production environment because if that availability zone becomes unavailable, then your data will be unaccessible.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So definitely, you want to use regional in production settings and we'll use regional right now for this hands-on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Next we can enable or disabled automatic backups, but it's recommended to keep it enabled.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: Next we have lifecycle management.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is to move data across different storage tiers to save costs.
- Hidden/Implicit Meaning: Storage economics signal.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it turns out that you can transition into infrequent access or archive and then back to standard.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we're saying that hey, if a file hasn't been accessed for 30 days, but you can obviously customize this, if a file hasn't been accessed to 30 days, then move it to the infrequent access storage tier and it's going to be cheaper for you except when you access the file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But the likelihood is that after 30 days, you're rarely accessing the file.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then if the file was not accessed, for example, in 90 days since the last access, then moving into the archive, which is going to be even cheaper as a storage class.
- Hidden/Implicit Meaning: Durability and retention signal; Storage economics signal.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then for example, you say that here when the file is accessed the first time, so on first access, transition back into standard because for example, we assume that it's going to be reused a lot more.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So this is called a lifecycle management.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 22:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So we can keep this on as is encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We leave it enable, that's perfect.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: And then we have performance settings.
- Hidden/Implicit Meaning: Storage economics signal.

Line 25:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So for performance settings we have throughput mode and you should have three options.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage economics signal.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, enhanced is just a category to regroup, elastic and provisions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But so you have elastic throughput mode, you have provisioned throughput mode as well as bursting throughput mode.
- Hidden/Implicit Meaning: Storage economics signal.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's start with bursting.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So bursting is a way for you to have the throughput scale with the amount of storage you're actually using and going a little bit over, that's why it's called bursting.
- Hidden/Implicit Meaning: Storage economics signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if you have one gigabytes, you get a throughput based on one gigabyte.
- Hidden/Implicit Meaning: Storage economics signal.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If you have one terabyte, you get higher throughput because you use more storage.
- Hidden/Implicit Meaning: Storage economics signal.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then there was enhanced mode.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: And now elastic is recommended, which is saying, Hey, regardless of the size of your EFS file system, we're going to give you all the I/O you need and we'll scale automatically and you're going to only pay for what you use.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is best when you have a workload with unpredictable I/O where for example, you can scale from zero megabytes per second to a hundred megabytes per second in no time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is why it is the recommended mode because it doesn't require for you to think about any settings.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then the last one, so we have bursting elastic, and the last one is provisioned.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is when you know in advance the throughput you're going to be needing.
- Hidden/Implicit Meaning: Storage economics signal.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is the provision mode.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you say, Hey, I will need 100 megabytes per second for sure.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then you also have a bursting limit of 300 megabytes per second.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And because you provision throughput in advance, you're going to pay for it in advance.
- Hidden/Implicit Meaning: Storage economics signal.

Line 42:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So elastic is the recommended setting.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then if you look at the additional settings, so we have general purpose and max I/O.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So in the case of elastic, you get the I/O you need based on the performance you need.
- Hidden/Implicit Meaning: Storage economics signal.

Line 45:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So general purpose is the only option for performance mode, but if you use bursting or if you use provisions, then you have the option between two settings.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage economics signal.

Line 46:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So general purpose, which is giving you high performance and latency sensitive applications.
- Hidden/Implicit Meaning: Storage economics signal.

Line 47:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that means the latency is very low, but if you want to get a maximum amount of I/O mode, then this is for highly paralyzed workloads and you can tolerate higher latency.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So at the expense of a higher latency, you also get more I/O.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is good in a big data type of setting, but the best recommended setting now for AWS is to use enhanced with general purpose and elastic.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it for the options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Hopefully it's not too confusing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I don't love the fact that under enhanced there is elastic and provision, it's really just three options we have.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We have bursting, elastic and provision, and that's what you should remember for the exam.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 55:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, let's click on Next now.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Next we have the network access settings and they're very important, we have to choose a VPC.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I'll choose the default VPC and then the mount targets.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 58:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: And because we've chosen a regional type of EFS file system, we have free AZ available to us.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So each AZ is going to be assigned to a subnet.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 60:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I'll leave it as is, which is the default subnets.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The IP is automatic and we need to assign a security group.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: And so we need to go ahead and create a specific security group for my EFS file system.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 63:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: So I'll go into the EC2 console and then I will go into Security Groups.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 64:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: I will create a security group and I will call it sg-efs-demo.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 65:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: And I will call this one EFS Demo SG.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 66:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: For now, we will not have any inbound rules.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 67:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I'll click on Create Security Group and we cannot have this.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 68:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So EFS demo is good enough.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 69:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: Okay, so my EFS demo is created successfully and to have it appear here, what I need to do is to refresh the page.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 70:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we'll start all over, but the settings are the basic ones, the default ones that we come next.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 71:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: And now I can remove these security groups and choose the EFS demo security group that I have created from before.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 72:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, we're good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 73:
- Concepts: Storage Operational Context
- Services: AWS Config
- Key Insights: So now we have done all the network access configuration.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 74:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I will click on Next.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 75:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: We have a file system policy that is optional and we will not touch it right now.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 76:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is pretty advanced and we don't need it right now.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 77:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I will click on Next.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 78:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And here we can review and create all the file system settings.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 79:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we're happy with that.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 80:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And when we're done, we just click on Create.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 81:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: Now my file system is creating and I will get back to you when it is created.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 82:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: My file system is now available and I can go in it and see that the fact that there is six kilobytes of size that is being used right now.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 83:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: And when you have a EFS file system, you only pay for the storage you use, so right now my cost are zero.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage economics signal.

Line 84:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is good, this is created.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 85:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: And now we want to mount this onto EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 86:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: Therefore, you know the next step we're going to create EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 87:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's launch some instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 88:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And I will name this one Instance A, because we will launch it in subnet of AZA.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 89:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we are going to run Amazon Linux version 2.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 90:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We're good to go, we'll use the t2.micro because it's free tier eligible.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 91:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We will disable the key pair.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 92:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: We'll just do EC2 instance connect to connect to our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 93:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: For network settings, I will leave it as is and there will be a new security group created with these rules right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 94:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So allow SSH access from anywhere, which is good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 95:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then we have eight gigabytes of GP2 storage.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 96:
- Concepts: Block and File Storage Design
- Services: AWS Config, Amazon EC2, Amazon EFS
- Key Insights: But now because we want to configure the storage of the EC2 instance into Amazon EFS, we can actually now do it from within the EC2 console, which is very exciting.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 97:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let me show you how to do it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 98:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Before we had to run some commands.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 99:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So there are 0 x file systems and you do edit and it says that you cannot add a file system before you choose to select a subnet.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 100:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we scroll back up, we go to Network Settings, we Edit it, and in subnet I'm going to choose eu-west-1a.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 101:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So now that my subnet is created, I can go back into file systems.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 102:
- Concepts: Block and File Storage Design
- Services: Amazon EFS, Amazon FSx
- Key Insights: And as you can see, I can add an EFS or an FSx file system.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 103:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So we'll add an EFS file system, then we'll click on Add Shared File System.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 104:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: It's going to be linked to my EFS right here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 105:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: The mount point is /mnt/efs/fs1.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 106:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is good enough for us.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 107:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is going to automatically create and attach security groups for us, which is amazing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 108:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And then it's automatically going to mount shared file system by attaching the required user data scripts.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 109:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: So these in the past we had to run ourselves onto the EC2 instance manually or create our own user data script.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 110:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: But now this is done for us by the EC2 console, which is really nice.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 111:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, let's create one instance and launch it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 112:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this instance is launched.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 113:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I can go view all instances and I'm going to launch a new one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 114:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, I will call this one Instance B.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 115:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We'll have Amazon Linux 2, again to make it quick, I'm going to proceed without a key pair, I will go into eu-west-1b.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 116:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I can just select the security group of launch-wizard-2 that was created just from before.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 117:
- Concepts: Block and File Storage Design
- Services: AWS SAM, Amazon EFS
- Key Insights: And then again, we need to edit this and add a file system of type EFS and we'll use the same file system as before and the same mount points and we'll leave these options on as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 118:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we're good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 119:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Let's launch that instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 120:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And now let's have a look at the interesting stuff that has happened.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 121:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to just do instant state equals running and refresh this until I see both of my instances.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 122:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So now they're both running.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 123:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: And the interesting thing is that if we go into the EFS console and go to the network tab, as we can see now, each availability zone now has multiple security groups.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 124:
- Concepts: Block and File Storage Design
- Services: Amazon EC2, Amazon EFS
- Key Insights: So we have the EFS demo we created from before, but also the efs-sg-1 and efs-sg-2, which were auto created by the EC2 console for us and attached into our EFS file system.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 125:
- Concepts: Block and File Storage Design
- Services: Amazon EC2, Amazon EFS
- Key Insights: So if I go into my EC2 instances and then security group right here, I can look at for example, this efs-sg-2, look at the inbound rules.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 126:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: And as you see, it allows the protocol NFS on port 2049 and the source of it, if we have a look at the inbound rules himself, the source of this is this security group and that security group is the one that is attached into my EC2 instance, instance B.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 127:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So this allows my instance B to access the EFS file system because that security group right here called efs-sg-2 is attached into my EFS file system.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 128:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So all the setup is done by AWS for us, which is truly nice.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 129:
- Concepts: Storage Operational Context
- Services: AWS SAM, Amazon EC2
- Key Insights: So now if I go into one of these instance, we're going to connect using EC2 instance connect on this tab, and then I will also do the exact same thing by connecting to instance B over EC2 instance connect.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 130:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So now I can, for example, verify the fact that yes, in ls /mnt/efs/fs1/ there is an EFS file system and now we need to create files in it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 131:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So to make it simple, I will elevate my right and type sudo SU and then I can do echo "hello world" into the /mnt/efs/fs1/hello.txt.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 132:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we've created that file named hello.txt.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 133:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And if I do cat and then this entire file name right here, as you can see it says hello world.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 134:
- Concepts: Block and File Storage Design
- Services: Amazon EC2, Amazon EFS
- Key Insights: So this file has been created into my EFS file system from this EC2 instance, which is an eu-west-1a.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 135:
- Concepts: Block and File Storage Design
- Services: AWS SAM, Amazon EC2
- Key Insights: But now if I go into my second EC2 instance and do LS and then the same file system, so I look for files in it, as you can see, we also see this hello.txt file in it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 136:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And if I do cat and then cat the file, hello.txt, it says hello world as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 137:
- Concepts: Block and File Storage Design
- Services: AWS SAM, Amazon EC2, Amazon EFS
- Key Insights: So as you can see, the EFS file system is indeed mounted as a network drive onto both my EC2 instances and they are in different AZs and they share it the same EFS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 138:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's amazing and that's a different kind of storage that you had the demo of it right now.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 139:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So that's it for the EFS demo.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 140:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That was pretty complete.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 141:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: Now to just clean it up, what you can do is you can terminate these two EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 142:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you go here and you terminate them.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 143:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: And something else you can do is you can go into the EFS file system, you can delete it by entering the file system ID, and then when everything is deleted, you can go ahead into your security groups and delete the extra security groups that have been created during this demo.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 144:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 145:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/068_EFS vs EBS.txt

Line 1:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EFS
- Key Insights: So now let's talk about the differences of EBS volumes and EFS file systems.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So the EBS volumes, they're attached to one instance at a time, except in the edge case of using the multi attached feature of the io1 and io2 types of volume, but that is for very specific use cases.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: EBS volumes are also locked at the AZ level, so here is an example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: We have one EC2 in AZ 1 and we have one EBS volume attached to it and it cannot be attached to an EC2 instance in AZ 2.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: For the gp2 type of volume, the IO will increase if the disc size increases, and for the gp3 and IO1 type of volumes, you can increase the IO independently from your disc size.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: To migrate an EBS volume across AZ, we need to take a snapshot, so it will go into the EBS snapshots, and then we can restore the snapshot into another AZ.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is how we move from one AZ to the next.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: Amazon EBS
- Key Insights: Now, the EBS volumes backups, they will use IO, and so you shouldn't run them while your application is handling a lot of traffic because that may impact the performance.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Storage economics signal.

Line 9:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: For your EC2 instances, the route EBS volumes of your instances will get terminated by default if the EC2 instance gets terminated, but you can disable that behavior.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: Now for EFS, it's a bit different.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So it's a network file system, and the goal is really to attach it to hundreds of instances across availability zone, so we really see the distinction here.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So one with one EFS file system, we can have different mount targets in different AZs, and then multiple instances can share that one file system together, .
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's very helpful, for example, when you have WordPress and it's only for Linux instances because it is using the POSIX system.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EFS
- Key Insights: The EFS has a higher price point than EBS, but you can leverage storage tiers for cost savings.
- Hidden/Implicit Meaning: Storage economics signal.

Line 15:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2, Amazon EFS
- Key Insights: So hopefully you understand now the difference between EFS and EBS and for the instance store, well it is physically attached to the EC2 instance, and so therefore if you, you lose your EC2 instance, you will lose the storage as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/069_EBS & EFS - Section Cleanup.txt

Line 1:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's just clean up this entire section.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So for this I'm gonna go to Action on my file system and delete it, and for this I have to enter the file system ID, so I'll just copy and paste this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And so okay, we're gonna get rid of our file system.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Perfect!
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: Now into our EC2 instances, make sure to terminate any running EC2 instance, so that's good.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: Then in terms of volumes, we're going to have to clear up volumes as well, so any volumes that is available you have to terminate it, so I'll right-click and delete all these volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: Now for snapshots, you've made a few snapshots, so let's just go back and delete every snapshot you have.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: Just so that you can get rid and not pay for any storage for snapshots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then finally, security groups.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If you want to, because it's going to get a lot of security groups right here, you can basically delete so many of these security groups except the one for default, so just don't delete that one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you can go ahead and delete these security groups.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: And they will only be deleted once you have, basically, deleted all your EC2 instances associated with those.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So maybe these won't be deleted right away but you can just keep on trying until it works.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'll delete this security group now.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Yes this one works.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: Elastic Load Balancing
- Key Insights: I'll delete the load balancer for the security group.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Block and File Storage Design
- Services: Amazon EC2, Amazon EFS
- Key Insights: Yes that worked, and this EC2 for EFS, it's still used by my instances so I have to wait for my instances to be shutting down properly before I can go ahead and delete that last security group.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So I'll have to wait a little bit, but that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Once you've cleared up everything you're ready to go for the next section.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/175_Amazon FSx.txt

Line 1:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: So now let's talk about Amazon FSx.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: Amazon FSx
- Key Insights: So Amazon FSx allows you to launch third-party high-performance file systems on AWS as a fully managed service.
- Hidden/Implicit Meaning: Storage economics signal.

Line 3:
- Concepts: Storage Operational Context
- Services: Amazon RDS
- Key Insights: So the idea is that you want, for example, for RDS, you wanted to launch MySQL or PostgreSQL on AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Block and File Storage Design
- Services: AWS SAM, Amazon FSx, Amazon RDS
- Key Insights: Well, for FSx, it is the same as RDS, but for file systems.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: So for example, you can launch Lustre on FSx or you can launch a Windows File Server on FSx or you can launch NetApp ONTAP on FSx or OpenZFS on FSx.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And there may be more at the time of you seeing this lecture, and I will update this lecture only if I find that some significant file systems are making their appearance at the exam, okay?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But you need to know the four you have in front of you.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at them one by one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: So first, let's have a look at Amazon FSx for Windows File Server.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's a fully managed Windows File Server share drive.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And because it's Windows, it supports the SMB protocol, as well as Windows NTFS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Also, because it's Windows, it supports integration with Microsoft Active Directory to get security for your users.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It use also ACLs, access control list, and user quotas.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Block and File Storage Design
- Services: Amazon EC2, Amazon FSx
- Key Insights: And there is a specificity, though, of Amazon FSx for Windows File Server, is that even though it seems like it's dedicated for Windows, you can also mount them on Linux EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And it's something you have to remember.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: And if you have an existing Windows File Server somewhere, for example, on premises, then you can use the Microsoft Distributed File System, DFS feature, to group your file systems together and therefore join your FSx for Windows File Server to your on-premises Windows File Server.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Okay, now, in terms of performance, this scales up to tens of gigabytes per second, millions of IOPS, and hundreds of petabytes of data.
- Hidden/Implicit Meaning: Storage economics signal.

Line 18:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: Amazon FSx
- Key Insights: The storage option for FSx for Windows File Server are SSD to get very low latency sensitive workloads, for example, databases, media processing, data analytics.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Or if you wanted to have a broad spectrum of workloads, you can use HDD is cheaper, for example, home directory or CMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Block and File Storage Design
- Services: AWS Config, Amazon FSx
- Key Insights: Now you can access your FSx for Windows File Server from your on-premises infrastructure with a private connection, and you can also configure your FSx for Windows File Server to be Multi-AZ for high availability.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Finally, all your data is backed-up daily to Amazon S3 for disaster recovery purposes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: Now let's talk about the second kind of Amazon FSx, which is Amazon FSx for Lustre.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And Lustre is used to do a distributed file system that is going to be used for large-scale computing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So once I explained you the word Lustre, it's going to make sense.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So Lustre is derived from Linux and cluster.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: It is used for machine learning and high-performance computing, or HPC.
- Hidden/Implicit Meaning: Storage economics signal.

Line 27:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: And this is a keyword you need to look for to know that you need FSx for Lustre.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you can have applications such as video processing, financial modeling, electronic design automation.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You have massive scale, so you can scale up to hundreds of gigabytes of data per second, millions of IOPS, and sub-milliseconds latency.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And for storage, two options, either you want an SSD for very low latency, IOPS intensive workload, as well as small and random file operations, or HDD if you want throughput-intensive workload for large and sequential file operations.
- Hidden/Implicit Meaning: Storage economics signal.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And SSD is going to be more expensive than HDD.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: You have seamless integration with Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon FSx, Amazon S3
- Key Insights: That means that you can read S3 as a file system through FSx, and you can write the output of the computations from FSx back to Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that is something that the exam may ask you about.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: Finally, Amazon FSx for Lustre can be used from on-premises servers through VPN or direct connect.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: For FSx, you also need to know the file system deployment options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And there's two you need to know.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: There is scratch file system and persistent file system.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So scratch file system is going to be temporary storage, and the data will not be replicated.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That means that you have a file, and you will lose it if the underlying server fails.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But thanks to this optimization, we get really high bursts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So we get six times the performance of a persistent file system, and you get, for example, 200 megabytes per second per terabytes of throughput.
- Hidden/Implicit Meaning: Storage economics signal.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's actually really, really big.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So the use case of a scratch file system is going to do short-term processing of data, and you want to optimize your cost by not having data being replicated.
- Hidden/Implicit Meaning: Storage economics signal.

Line 45:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: So that means that you have FSx, your compute instances are going to connect on AZ1 and AZ2, and then the FSx for Lustre scratch file system only has one copy of your data as it is shown on this diagram right here.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Just one copy, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Finally, you can also have optional S3 buckets underlying for the data repository.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 48:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: For persistent file system, it's going to be for long-term storage.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: The data is going to be replicated within the same availability zone, okay, so not across AZ but within the same AZ.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But that means that if you have a failure of a underlying server, then the files will be replaced transparently within minutes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So the use case for a persistent file system is, as its name indicates, long-term processing and storage of sensitive data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: So the idea is exactly the same in terms of the architecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: Remember, FSx only lives for Lustre only within one single AZ.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 54:
- Concepts: Block and File Storage Design, Data Protection and Immutability
- Services: Amazon FSx
- Key Insights: And the FSx for Lustre file system in persistent mode will have two copies of the data, so you can see there is some replication right now from one data volume to the next data volume.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 55:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: Next, we have Amazon FSx for NetApp ONTAP.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So it's a managed NetApp ONTAP file system on AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And this file system is compatible with the NFS, SMB, and iSCSI protocol.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 58:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: So the idea is that you would use the FSx for NetApp ONTAP file system to move workloads that are already running on ONTAP or running on a NAS on your on-premises system into AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it has broad compatibility with different operating systems.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 60:
- Concepts: Storage Operational Context
- Services: Amazon EC2, Amazon ECS, Amazon EKS, VMware Cloud on AWS
- Key Insights: So it work with Linux, Windows, and macOS, as well as VMware Cloud on AWS, WorkSpaces, AppStream, EC2, ECS, and EKS, which are services you may have not seen yet in this course, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But the idea is that it has very, very, very broad compatibility.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: On top of it, these storage will automatically shrink or grow.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 63:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So there's auto-scaling for this, which is cool.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 64:
- Concepts: Data Protection and Immutability, Lifecycle Operations
- Services: (none explicit)
- Key Insights: Then you have replication, you have snapshots, replication features available.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 65:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's low cost, you can do data compression.
- Hidden/Implicit Meaning: Storage economics signal.

Line 66:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And also, you can do data de-duplication.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 67:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you can find duplicates of files on NetApp ONTAP.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 68:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And finally, very helpful, you can do point-in-time instantaneous cloning, which is very helpful for testing new workloads and in ones you want to test.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 69:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: You wanna take your file system, you clone it very quickly, and then you have a staging file system, for example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 70:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So these are some of the benefits you need to look out for in the exam when it's hinted at you that you should be using NetApp ONTAP.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 71:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: Finally, we have Amazon FSx for OpenZFS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 72:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So it's a managed OpenZFS file system on AWS, which is compatible only with the NFS protocol on multiple versions.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 73:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And the main use case is to move workloads that are already running on ZFS internally to AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 74:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It has also has broad compatibility with Linux, Mac, Windows, and so on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 75:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: And this one is really good performance.
- Hidden/Implicit Meaning: Storage economics signal.

Line 76:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: You can scale up to 1 million IOPS with less than 0.5 millisecond latency, support snapshots, compression, and low cost, but not data de-duplication.
- Hidden/Implicit Meaning: Storage economics signal.

Line 77:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And just like NetApp ONTAP, it has support for point-in-time instantaneous cloning, which is very helpful again to test new workloads.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 78:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So all this information should be enough for you to answer the question at the exam, to pick the right file system for the right use case.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 79:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 80:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/176_Amazon FSx - Hands On.txt

Line 1:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: So let's have a quick look at Amazon FSx, and Amazon FSx is where to get manage file systems on AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So, we can go ahead and create a file system, and you have to choose between multiple options, and the one you need to know for sure for the exam are going to be these four ones.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If more are added over time, unless they appear on the exam, I will not update this lecture, just to keep it super simple.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: So here we have FSx for Lustre, and that's to provide a Lustre file system for your workload, and you can just enter the file system details.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: You can get a deployment and storage type, which has, gives you better overage performance.
- Hidden/Implicit Meaning: Storage economics signal.

Line 6:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: You can choose your throughput, and so on, and then the place within your VPC, and choose any level of encryption.
- Hidden/Implicit Meaning: Storage economics signal.

Line 7:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So we don't need to know that many details about each file system, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: Just that there's Persistent and Scratch file systems options for Lustre.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: Next, if I go back to Amazon FSx for Windows File Server, this is the way to get a Windows File Server on AWS, and it's accessible using the Server Message Block, SMB protocol.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So if we look quickly at the option, we can do Multi AZ or Single AZ, which is good for Dev.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The Multi AZ is good as well.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The storage type, SSD or HDD, the full gift capacity depends on the storage capacity, so if you put, for example, one 10,000 gigabytes, then we're going to get some options for gift capacity.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We can deposit into a specific VPC.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: We can enable Windows authentication with Active Directory integration, either through a host, active host directory on AWS, or a Self-managed Microsoft Active Directory.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: And we get encryption, and then we can get more options, such as auditing, access, main, backup and maintenance, and so on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: Amazon FSx
- Key Insights: Now for Amazon FSx for NetApp ONTAP is to get the NetApp ONTAP popular file system onto AWS, and the main feature is that it's compatible with Linux, Windows, and macOS, okay, and then, you also get access to a really good performance.
- Hidden/Implicit Meaning: Storage economics signal.

Line 17:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So in that case, we can have a look at the file system options, where we again, we have Multi AZ or Single AZ, we specify a storage type capacity and whether or not we want storage efficiency, such as features, such as deduplication, compression, and compaction, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So this is where we quick create, and standard create, it gives you more option, but then again, you just need to know this file system at the high level.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: And finally, Amazon FSx for OpenZFS, and this is to have a ZFS file system on AWS, which is compatible with Linux, Windows, and macOS as well, and again, I would invite you to explore the options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But at a high level, from an exam perspective, you need to know the differences between these four options, okay, and all the details to choose which one is right was in the previous lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hoped you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/06_Storage/069_EBS & Local Instance Store.txt

Line 1:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: So now let's talk about EBS volumes and EC2 instance store.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So first, EBS volumes are network drives.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: And you attach them to one instance at a time, except with a EBS multi-attached feature that I will show you very, very soon.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So they're linked to a specific AZ, and if you wanted to transfer them between a different AZ, you need to first snapshot them, and then restore them into that other AZ.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 5:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: Your volumes can be resized, but only up, so you can increase the volume size without detaching the EBS volume first.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: You need to make sure also to leverage the EBS volume as much as you can to choose an EC2 instance type that is going to be EBS optimized to enjoy maximum throughputs.
- Hidden/Implicit Meaning: Storage economics signal.

Line 7:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: So in a diagram here, what it looks like, so we have one EC2 instance, it may have an EBS volume attached to it of 10 gigabytes and another EC2 instance that will have maybe two EBS volumes attached to it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: Now for volume types, you have different types of volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: For EBS, you have the gp2, gp3 family, and g means general.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So general purpose SSD volumes that will balance a good price and performance and fits most workloads.
- Hidden/Implicit Meaning: Storage economics signal.

Line 11:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: But if you want extremely high performance, very high throughput, very low latency, then you need to look into the i family, so the io1 and io2 block express.
- Hidden/Implicit Meaning: Storage economics signal.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: If you have a need for a low-cost HDD that is going to be designed for frequently accessed and throughput-intensive workload, usually sequential reads, then st1 one is going to be a great choice.
- Hidden/Implicit Meaning: Storage economics signal.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And if you want cold storage for less frequently accessed workloads, then sc1 one is going to be a good use case for you.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: The EBS volumes will have general characteristics, but they will be characterized in terms of size, throughputs, and IOPS, which is IO Operations Per Second.
- Hidden/Implicit Meaning: Storage economics signal.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And when you're in doubt, of course, always look at the AWS documentation.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Block and File Storage Design
- Services: Amazon EC2
- Key Insights: In terms of boot volumes, which is where your operating system can be for your EC2 instances, then it can only be on gp2, gp3, or io1, io2.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 17:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: Okay, so now snapshots.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So they're very helpful to transfer EBS volumes between AZ.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And they're incremental, so you only backup the changed blocks behind the scene.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 20:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Then the backups will use IO.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: Amazon ECR
- Key Insights: And so that means that because the volume's going to be read by AWS, if you are running an application that is also handling a lot of read traffic, and you are on top of it doing a backup, then you may experience decreased performance.
- Hidden/Implicit Meaning: Storage economics signal.

Line 22:
- Concepts: Lifecycle Operations, Object Storage Patterns
- Services: Amazon S3
- Key Insights: The snapshots are going to be stored in S3 in the backend, but you're not going to be getting direct access to them.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: (none explicit)
- Key Insights: And it's not necessary for you to detach a volume to do a snapshot, but it's recommended because if your volume is being actively used while you do a snapshot, you may get an inconsistent state.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: You can copy snapshots across AZ, yes, for sure and again, restore snapshots, sorry, across AZ of course, but you can also copy snapshots across region for disaster recovery purposes.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 25:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So it's a really good practice to snapshot, for example, data in one region and then copy it to another region in case you wanted to restore the data for disaster recovery purposes.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 26:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: Now it's also possible for you to make Amazon machine images from your snapshots using the AMI feature.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 27:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this is very common, for example, if you bootstrap an application and then make an AMI out of it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: Now when you restore an EBS volume, especially large ones, then you need to prewarm them.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 29:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: That means you need to read all the blocks to have the maximum performance.
- Hidden/Implicit Meaning: Storage economics signal.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And to do so, you have two ways of doing it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The first one is using a newer feature of AWS because that was a very popular request.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: It's called the Fast Snapshot Restore, which is FSR feature.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 33:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: And the idea is that this feature is going to read your EBS snapshot entirely and then give it to you.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: This way, when you restore it, it's going to be prewarmed.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 35:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS, Amazon EC2
- Key Insights: But if you wanted to do it the old way, then you need to just attach this restored EBS volume to your EC2 instance, and then you would issue the fio or dd command directly from within the EC2 instance to read the entire volume.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 36:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: Next, there is a service within EBS called Amazon Data Lifecycle Manager, which is used to automate the creation, retention, and deletion of EBS snapshots and EBS-backed AMI.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 37:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So it's a way for you to schedule backups, do cross account snapshot copies automatically, or to delete outdated backups using a policy.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 38:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: Use resource tags to identify the resources you want to back up, for example, EC2 instances or EBS volumes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so here is an example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS, Amazon EC2
- Key Insights: We can tag an EBS volume with environment prod to make sure that it automatically gets backed up by Amazon Data Lifecycle Manager, or we can tag directly an EC2 instance with this environment prod, and then the instance itself will be, and its EBS volumes will be backed up.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 41:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So it goes into Data Lifecycle Manager, and we can create snapshots and AMIs out of it.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 42:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: It cannot be used to manage snapshots or AMIs created outside of DLM.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 43:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: So everything has to be contained within Data Lifecycle Manager, and it cannot be used to manage instance-store backed AMIs.
- Hidden/Implicit Meaning: Constraint or limitation signal; Durability and retention signal.

Line 44:
- Concepts: Lifecycle Operations
- Services: AWS Backup
- Key Insights: So a question you may have is what is the difference between Amazon Data Lifecycle Manager and AWS backup?
- Hidden/Implicit Meaning: Durability and retention signal.

Line 45:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: AWS Backup, Amazon EBS
- Key Insights: So you use Data Lifecycle Manager when you want to automate the creation, retention, and deletion of EBS snapshots, whereas you're going to use AWS backups to manage and monitor backups across all the AWS services you use, including EBS volumes, from a single place.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's about scope, and it's about ease of management.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Block and File Storage Design, Data Protection and Immutability
- Services: Amazon EBS
- Key Insights: Talking about EBS volumes, we have also EBS encryption.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 48:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So there is an account level setting to encrypt your volumes because by default, new EBS volumes are not encrypted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EBS
- Key Insights: But if you turn on this setting, then automatically new EBS volumes and snapshots are going to be encrypted.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So in the UI, it looks like this.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: There is a EC2 dashboard setting, and when you set it, you can always encrypt new EBS volumes.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 52:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Just so you know, this setting, even though it's an account level setting, needs to be enabled on the per-region basis.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Block and File Storage Design
- Services: AWS SAM, Amazon EBS, Amazon EC2
- Key Insights: Now there's a feature called EBS multi-attach, and it's only available for the io1 and io2 family, which goes against what I told you, but it gives you the ability to attach the same EBS volumes to multiple EC2 instances in the same AZ.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 54:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And each instance will have full read and write permissions on the volume.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 55:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's only for a specific kind of applications.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 56:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: For example, the ones that need higher application availability, for example, Teradata that has a native support for this feature or applications that must manage concurrent write operations for this very specific use case as well.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 57:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: Now the file system is a little bit different.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 58:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's not going to be XFS or EX4 and so on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: It's going to be a file system that's cluster aware, and it's not the kind of things you deal with every day.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 60:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's a very unique feature for very unique use cases, but you need to know that it exists.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Block and File Storage Design
- Services: Amazon EC2
- Key Insights: And so the architecture looks like, well, you have one, for example, io2 volume with a multi-attach feature, and it can be attached to multiple EC2 instances at a time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: Now when you consider your local EC2 instance store, this one is not a network disc, it is a physical disc that is going to be attached to the physical server where your EC2 is.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 63:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: And while we do this, well, you get very, very high IOPS because well, the disc is attached to your EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 64:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now what you get on the right-hand side, for example, for the i3 family is a lot of write IOPS and a lot of read IOPS as you can see.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 65:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now the disc can vary in size, and this is just indicative, it can obviously increase over time, but the disc can go up to, for example, 7.5 terabytes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 66:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And if you strip them, so if you have them in parallel, you can reach, for example, 60 terabytes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 67:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And so you get a lot of IOPS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 68:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: It is still a block storage just like EBS, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 69:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But it is a physical device, not a network device.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 70:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And it cannot be increased in size.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 71:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: And in case your EC2 instance fails or gets shut down, you will lose your data because it is a physical disc attached to your EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 72:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2
- Key Insights: So if you compare EC2 instance store and EBS volumes, while the instance store is physically attached to the machine, it is considered ephemeral storage, whereas the EBS is a network drive, which is considered a persistent kind of storage.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 73:
- Concepts: Cost and Performance Optimization
- Services: Amazon EC2
- Key Insights: Now the pros of using the EC2 instance store is that you get a lot better IO performance.
- Hidden/Implicit Meaning: Storage economics signal.

Line 74:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: So the EBS gp2, for example, will have a max IOPS of 16,000, io1, 64,000, and io2 Block Express, 256,000.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 75:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But we saw that the instance store can have IOPS in the millions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 76:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now it's going to be very good if you want to have a buffer, a cache, scratch data, or temporary content.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 77:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Remember it is ephemeral storage.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 78:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: And in case you reboot your EC2 instance, your data will survive.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 79:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: But if you happen to stop or terminate your EC2 instance, then all the data on the EC2 instance store is going to be lost.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 80:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that means that you need to manage the data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 81:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you need to back up the data automatically to make sure that if you want to keep it, you have a mechanism to do so.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 82:
- Concepts: Storage Operational Context
- Services: Amazon EC2
- Key Insights: And because it is an EC2 instance store, and it's a physical storage, you cannot resize it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 83:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: Whereas for EBS volumes, of course you could resize it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 84:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 85:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/06_Storage/070_Amazon EFS.txt

Line 1:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So now let's talk about EFS, your Elastic File System.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design
- Services: Amazon EC2
- Key Insights: So it's a managed network file system or NFS, and the power of it is that it can be mounted on many EC2 instances at a time.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Block and File Storage Design
- Services: AWS SAM, Amazon EC2
- Key Insights: So it works for EC2 instances that are going to live within the same region but in different availability zones, so that's why it's called a network file system.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And it's also going to work for your on-premises servers if you mount them, and first, you need to connect your on-premise environment, of course to AWS, using direct connect or VPN connection.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's highly available, it's scalable.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's quite expensive.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Block and File Storage Design
- Services: Amazon EBS
- Key Insights: It's about three times the cost of gp2, and you're going to pay per gigabyte use, which I think is quite a cool model, whereas for EBS, you have to pay per gigabytes provisions.
- Hidden/Implicit Meaning: Storage economics signal.

Line 8:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So your EFS file system will be living on AWS, and you'll have a security group attached to it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Block and File Storage Design
- Services: Amazon EC2, Amazon EFS
- Key Insights: And your EC2 instances, for example, across three different AZs, if you set up the security groups correctly, can mount and access your EFS file system.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So if we look at it, the use cases for EFS are going to be content management, web data serving, data sharing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: WordPress is a really good candidate.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And for it to work, you need to have a Linux-based AMI.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So Windows does not work with EFS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's very important to understand this from an exam perspective.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And overall, the file system that you're going to use must be POSIX-compliant, which is a good use case for Linux.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It uses the NFSv4.1 protocol.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: And to control access to EFS, you must use security groups.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Data Protection and Immutability
- Services: (none explicit)
- Key Insights: You get encryption arrest using KMS, and you can only attach it into one VPC, and you create one mount target, one elastic network interface, ENI, per AZ.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So as I said, it's POSIX file system, so that means Linux, and it has a standard file API.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: The file system will scale automatically, which I think is really, really nice.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you can scale from one gigabyte to terabytes, of course.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: You pay per usage, so you only pay for the number of gigabytes you have in your file system.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So there is no capacity planning happening behind the scenes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: Amazon EFS
- Key Insights: Now, the very important part about EFS is to understand the performance and storage classes.
- Hidden/Implicit Meaning: Storage economics signal.

Line 25:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Then we have different performance and storage classes.
- Hidden/Implicit Meaning: Storage economics signal.

Line 26:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So the first, the scale about EFS, you get thousands of concurrent NFS clients and 10 gigabytes plus of throughputs, and you can grow to a Petabyte-scale network file system automatically, which is really nice.
- Hidden/Implicit Meaning: Storage economics signal.

Line 27:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: Amazon EFS
- Key Insights: You can also set the performance mode at the EFS network file system creation time, and you have several options.
- Hidden/Implicit Meaning: Storage economics signal.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The first one is General Purpose, which is a default.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's used for latency-sensitive use cases such as a web server, a CMS, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: But if you wanted to maximize throughput, you have Max I/O, which is a higher latency kind of network file system, but higher throughput, and it's highly parallel.
- Hidden/Implicit Meaning: Storage economics signal.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's great if you have big data applications or media processing needs.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Now, throughput mode, you have different options.
- Hidden/Implicit Meaning: Storage economics signal.

Line 33:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The first one is Bursting.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you have one terabyte, means that it's 50 megabytes per second plus burst up to 100 megabytes per second.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's the kind of bursting you get.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You don't have to remember the numbers, but just to give you an idea.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Provisioned is when you want to set your throughput regardless of your storage size.
- Hidden/Implicit Meaning: Storage economics signal.

Line 38:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So the previous one was growing in throughput as we have more storage, but with Provisioned, you can have one gigabyte per second for one terabyte of storage, that is fine because you have de correlated your throughput from your storage.
- Hidden/Implicit Meaning: Storage economics signal.

Line 39:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And finally, to make things a little bit simpler, you have Elastic, to automatically scale the throughput up and down based on your workload.
- Hidden/Implicit Meaning: Storage economics signal.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So, for example, you can get up to 3 gigabytes per second for reads, and one gigabytes per second for writes based on your workload.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And this is going to be a great fit when you have unpredictable workloads.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Now for storage classes, we have several options.
- Hidden/Implicit Meaning: Storage economics signal.

Line 43:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: We have Storage Tiers, which is a lifecycle management feature to allow you to move files to different source tiers after a certain number of days.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 44:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So you have the Standard tier which is used for frequently accessed files, and then you have the EFS-IA tier for infrequent access, which gives you a cost to retrieve files, but a lower price to store these files.
- Hidden/Implicit Meaning: Storage economics signal.

Line 45:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then you have the Archive storage tier.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is for rarely accessed data, so you only access, for example, data a few times a year, which is going to be a lot cheaper to store the data on that tier.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 47:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: To move your files automatically between your storage tiers, you can implement lifecycle policies which will allow to define after how many days a file should be moved to which tier.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Durability and retention signal.

Line 48:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: Amazon EFS
- Key Insights: So here's an example in which we have files in EFS standard, and one of these files hasn't been accessed for 60 days, then by setting up the right lifecycle policy, we can move it to a new storage tier such as EFS-IA.
- Hidden/Implicit Meaning: Durability and retention signal; Access-path and data-plane signal.

Line 49:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: Now, in terms of availability and durability, Standard is going to be great when you have a multi-AZ setup, so, your EFS across multiple availability zones, which is great for your production workloads so that you're resistant to disasters.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But if you just want to do development and want to have cheaper options, then you choose One Zone, which is going to give you only one availability zone, and you will still have backups on it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 51:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: And it's also compatible with the IA type of storage tier, so you have the EFS One Zone-IA type of option.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: Amazon EFS
- Key Insights: Overall, by using the right EFS storage classes, you can do up to 90% in cost savings.
- Hidden/Implicit Meaning: Storage economics signal.

Line 53:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is very helpful.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 54:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: Now, EFS has a way to be mounted for on-premises servers and has VPC peering.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 55:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So, your EFS has ENIs, okay, they're redundant across multiple AZ.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Block and File Storage Design
- Services: Amazon EBS, Amazon EC2, Amazon EFS
- Key Insights: And then your VPC elsewhere can be peered with your VPC of EFS for your EC2 instance to access your EFS drive, or also on-premises servers through direct connect or VPN, for site-to-site VPN, can also access your EBS volumes, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And you can build redundancy, for example, by having direct connect to direct connect or direct connect to VPN.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 58:
- Concepts: Block and File Storage Design
- Services: Amazon EC2, Amazon EFS
- Key Insights: Now, when your on-premises server need to mount your EFS drives, they need to mount using the IPv4 of the ENIs, okay, they cannot use a DNS, whereas your EC2 instance could use a DNS.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 59:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So make sure that when you have on-premises servers, retrieve the ENI IP, and then use that for mounting your NFS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 60:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: Now, another feature you need to know about is around EFS access points.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 61:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So this is to easily manage application access to NFS environments and enforce greater security.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So for this, using these access points, we can define a user and a group on the POSIX file system when accessing the file system.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 63:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So, this is going to allow us completely to restrict access to a directory within the file system and optionally specify a different route directory.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 64:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And you can restrict access to these access points using IAM policies.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 65:
- Concepts: Block and File Storage Design
- Services: AWS Config, Amazon ECR, Amazon EFS
- Key Insights: So to make it very clear, here is my EFS file system, and it has the data file folder, the secret file folder, and the config folder directly within the route.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 66:
- Concepts: Block and File Storage Design
- Services: AWS Config, Amazon EFS
- Key Insights: Now, if I set up an Access Point 1 with UID 1001 and GID 1001, which is just a user ID and a group ID, and the path is slash config, then the users who have access to this access point using IAM, will only get access to the config directory within your EFS file system.
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 67:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: But another group, for example, that has the analytics user groups, a different access points, so 1002 and 1002 for UID and group ID, then they only have access to the data file, and they can only access the data within this data folder, okay?
- Hidden/Implicit Meaning: Constraint or limitation signal; Access-path and data-plane signal.

Line 68:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So again, all of this is managed through IAM permissions.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 69:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: AWS SAM, Amazon S3
- Key Insights: Also, you can get file system policies and they are the same as S3 bucket policies, they're resource-based policies.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 70:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And by default, you have full access to all clients.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 71:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: But here, for example, I can say that Stephane can only do mount and the write, okay, and must use secure transport, so must encrypt the connection into EFS.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 72:
- Concepts: Block and File Storage Design, Data Protection and Immutability, Object Storage Patterns
- Services: Amazon EFS
- Key Insights: Next, we have cross-region replication for EFS, which allows you, of course, to replicate objects from an EFS file system to another AWS region.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 73:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And this works for existing file systems as well as a new file systems.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 74:
- Concepts: Storage Operational Context
- Services: Amazon ECR
- Key Insights: So you don't need to recreate one if you wanted to enable this feature.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 75:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: So you would have an EFS file system in us-east-1, and you would replicate it, for example, into eu-west-2 as a destination.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 76:
- Concepts: Block and File Storage Design
- Services: Amazon EFS
- Key Insights: It provides you RPO and RTO of minutes, which is great for disaster recovery, and it will not affect the provision throughput of the EFS file system.
- Hidden/Implicit Meaning: Storage economics signal.

Line 77:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: This is something that happens in the backend.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 78:
- Concepts: Block and File Storage Design, Data Protection and Immutability
- Services: (none explicit)
- Key Insights: So the use cases for cross-region replication is to meet your compliance and business continuity goals by having a second file system as an exact copy in another region.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 79:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 80:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 81:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/06_Storage/075_Amazon FSx.txt

Line 1:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: So now let's talk about Amazon FSx.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: Amazon FSx
- Key Insights: So Amazon FSx allows you to launch third-party high-performance file systems on AWS as a fully managed service.
- Hidden/Implicit Meaning: Storage economics signal.

Line 3:
- Concepts: Storage Operational Context
- Services: Amazon RDS
- Key Insights: So the idea is that you want, for example, for RDS, you wanted to launch MySQL or PostgreSQL on AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 4:
- Concepts: Block and File Storage Design
- Services: AWS SAM, Amazon FSx, Amazon RDS
- Key Insights: Well, for FSx, it is the same as RDS, but for file systems.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: So for example, you can launch Lustre on FSx or you can launch a Windows File Server on FSx or you can launch NetApp ONTAP on FSx or OpenZFS on FSx.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And there may be more at the time of you seeing this lecture, and I will update this lecture only if I find that some significant file systems are making their appearance at the exam, okay?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But you need to know the four you have in front of you.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at them one by one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: So first, let's have a look at Amazon FSx for Windows File Server.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's a fully managed Windows File Server share drive.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 11:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And because it's Windows, it supports the SMB protocol, as well as Windows NTFS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 12:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Also, because it's Windows, it supports integration with Microsoft Active Directory to get security for your users.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It use also ACLs, access control list, and user quotas.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 14:
- Concepts: Block and File Storage Design
- Services: Amazon EC2, Amazon FSx
- Key Insights: And there is a specificity, though, of Amazon FSx for Windows File Server, is that even though it seems like it's dedicated for Windows, you can also mount them on Linux EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And it's something you have to remember.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: And if you have an existing Windows File Server somewhere, for example, on premises, then you can use the Microsoft Distributed File System, DFS feature, to group your file systems together and therefore join your FSx for Windows File Server to your on-premises Windows File Server.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 17:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: Okay, now, in terms of performance, this scales up to tens of gigabytes per second, millions of IOPS, and hundreds of petabytes of data.
- Hidden/Implicit Meaning: Storage economics signal.

Line 18:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: Amazon FSx
- Key Insights: The storage option for FSx for Windows File Server are SSD to get very low latency sensitive workloads, for example, databases, media processing, data analytics.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Or if you wanted to have a broad spectrum of workloads, you can use HDD is cheaper, for example, home directory or CMS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 20:
- Concepts: Block and File Storage Design
- Services: AWS Config, Amazon FSx
- Key Insights: Now you can access your FSx for Windows File Server from your on-premises infrastructure with a private connection, and you can also configure your FSx for Windows File Server to be Multi-AZ for high availability.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 21:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Finally, all your data is backed-up daily to Amazon S3 for disaster recovery purposes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: Now let's talk about the second kind of Amazon FSx, which is Amazon FSx for Lustre.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 23:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And Lustre is used to do a distributed file system that is going to be used for large-scale computing.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 24:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So once I explained you the word Lustre, it's going to make sense.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So Lustre is derived from Linux and cluster.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: It is used for machine learning and high-performance computing, or HPC.
- Hidden/Implicit Meaning: Storage economics signal.

Line 27:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: And this is a keyword you need to look for to know that you need FSx for Lustre.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 28:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you can have applications such as video processing, financial modeling, electronic design automation.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 29:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: You have massive scale, so you can scale up to hundreds of gigabytes of data per second, millions of IOPS, and sub-milliseconds latency.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 30:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And for storage, two options, either you want an SSD for very low latency, IOPS intensive workload, as well as small and random file operations, or HDD if you want throughput-intensive workload for large and sequential file operations.
- Hidden/Implicit Meaning: Storage economics signal.

Line 31:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And SSD is going to be more expensive than HDD.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 32:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: You have seamless integration with Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 33:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon FSx, Amazon S3
- Key Insights: That means that you can read S3 as a file system through FSx, and you can write the output of the computations from FSx back to Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 34:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And that is something that the exam may ask you about.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 35:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: Finally, Amazon FSx for Lustre can be used from on-premises servers through VPN or direct connect.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 36:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: For FSx, you also need to know the file system deployment options.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 37:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And there's two you need to know.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 38:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: There is scratch file system and persistent file system.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 39:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So scratch file system is going to be temporary storage, and the data will not be replicated.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 40:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: That means that you have a file, and you will lose it if the underlying server fails.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 41:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But thanks to this optimization, we get really high bursts.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 42:
- Concepts: Block and File Storage Design, Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: So we get six times the performance of a persistent file system, and you get, for example, 200 megabytes per second per terabytes of throughput.
- Hidden/Implicit Meaning: Storage economics signal.

Line 43:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's actually really, really big.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 44:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So the use case of a scratch file system is going to do short-term processing of data, and you want to optimize your cost by not having data being replicated.
- Hidden/Implicit Meaning: Storage economics signal.

Line 45:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: So that means that you have FSx, your compute instances are going to connect on AZ1 and AZ2, and then the FSx for Lustre scratch file system only has one copy of your data as it is shown on this diagram right here.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 46:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Just one copy, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 47:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: Finally, you can also have optional S3 buckets underlying for the data repository.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 48:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: For persistent file system, it's going to be for long-term storage.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 49:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: The data is going to be replicated within the same availability zone, okay, so not across AZ but within the same AZ.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 50:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But that means that if you have a failure of a underlying server, then the files will be replaced transparently within minutes.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 51:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So the use case for a persistent file system is, as its name indicates, long-term processing and storage of sensitive data.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 52:
- Concepts: Storage Operational Context
- Services: AWS SAM
- Key Insights: So the idea is exactly the same in terms of the architecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 53:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: Remember, FSx only lives for Lustre only within one single AZ.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 54:
- Concepts: Block and File Storage Design, Data Protection and Immutability
- Services: Amazon FSx
- Key Insights: And the FSx for Lustre file system in persistent mode will have two copies of the data, so you can see there is some replication right now from one data volume to the next data volume.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 55:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: Next, we have Amazon FSx for NetApp ONTAP.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 56:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So it's a managed NetApp ONTAP file system on AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 57:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: And this file system is compatible with the NFS, SMB, and iSCSI protocol.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 58:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: So the idea is that you would use the FSx for NetApp ONTAP file system to move workloads that are already running on ONTAP or running on a NAS on your on-premises system into AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 59:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it has broad compatibility with different operating systems.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 60:
- Concepts: Storage Operational Context
- Services: Amazon EC2, Amazon ECS, Amazon EKS, VMware Cloud on AWS
- Key Insights: So it work with Linux, Windows, and macOS, as well as VMware Cloud on AWS, WorkSpaces, AppStream, EC2, ECS, and EKS, which are services you may have not seen yet in this course, okay?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 61:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: But the idea is that it has very, very, very broad compatibility.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 62:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: On top of it, these storage will automatically shrink or grow.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 63:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So there's auto-scaling for this, which is cool.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 64:
- Concepts: Data Protection and Immutability, Lifecycle Operations
- Services: (none explicit)
- Key Insights: Then you have replication, you have snapshots, replication features available.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 65:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It's low cost, you can do data compression.
- Hidden/Implicit Meaning: Storage economics signal.

Line 66:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And also, you can do data de-duplication.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 67:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So you can find duplicates of files on NetApp ONTAP.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 68:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And finally, very helpful, you can do point-in-time instantaneous cloning, which is very helpful for testing new workloads and in ones you want to test.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 69:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: You wanna take your file system, you clone it very quickly, and then you have a staging file system, for example.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 70:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So these are some of the benefits you need to look out for in the exam when it's hinted at you that you should be using NetApp ONTAP.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 71:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: Finally, we have Amazon FSx for OpenZFS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 72:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So it's a managed OpenZFS file system on AWS, which is compatible only with the NFS protocol on multiple versions.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 73:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And the main use case is to move workloads that are already running on ZFS internally to AWS.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 74:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: It has also has broad compatibility with Linux, Mac, Windows, and so on.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 75:
- Concepts: Cost and Performance Optimization
- Services: (none explicit)
- Key Insights: And this one is really good performance.
- Hidden/Implicit Meaning: Storage economics signal.

Line 76:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: You can scale up to 1 million IOPS with less than 0.5 millisecond latency, support snapshots, compression, and low cost, but not data de-duplication.
- Hidden/Implicit Meaning: Storage economics signal.

Line 77:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And just like NetApp ONTAP, it has support for point-in-time instantaneous cloning, which is very helpful again to test new workloads.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 78:
- Concepts: Block and File Storage Design
- Services: (none explicit)
- Key Insights: So all this information should be enough for you to answer the question at the exam, to pick the right file system for the right use case.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 79:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 80:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/06_Storage/076_Amazon FSx - Solution Architectures.txt

Line 1:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: So let's have a look at some solution architectures for Amazon FSx.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 2:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: First of all, how do you migrate from a single AZ FSx for Windows file server to a multi-AZ?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 3:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: There is no option to just upgrade it and with multi-AZ yet so therefore you must do some kind of steps.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Block and File Storage Design, Hybrid Transfer and Mobility
- Services: AWS DataSync, Amazon FSx
- Key Insights: So let's create first a multi-AZ version of FSx for Windows file server and then we're going to use DataSync to send data from the single AZ to the multi-AZ file server.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 5:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: The great thing about this solution is that we remain up and the data sync happens in the background and then when we're ready we're going to migrate over to multi-AZ.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 6:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So it's slower, but we maintain availability.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 7:
- Concepts: Lifecycle Operations
- Services: (none explicit)
- Key Insights: The other option to go from a single AZ to multi-AZ is to do a backup of the first Windows file server, shut it down, and then do a restore into a multi-AZ.
- Hidden/Implicit Meaning: Durability and retention signal.

Line 8:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So we're going to get some down time but at least we're going to be a bit quicker.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 9:
- Concepts: Block and File Storage Design
- Services: Amazon ECR, Amazon FSx
- Key Insights: So how would you go to decrease an FSx volume size?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 10:
- Concepts: Block and File Storage Design, Lifecycle Operations
- Services: AWS SAM
- Key Insights: Well, if you take a backup, you should know that you can only restore to a same size volume and you can only increase capacity for a file system.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Durability and retention signal.

Line 11:
- Concepts: Storage Operational Context
- Services: Amazon ECR
- Key Insights: You can never decrease it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Block and File Storage Design, Hybrid Transfer and Mobility
- Services: AWS DataSync, Amazon FSx
- Key Insights: So the way to do it is actually to do a create a FSx that is smaller and then you're going to use DataSync to sync data and migrate your app over.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 13:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: So say you have a two terabytes FSx for Windows file server app file system, and it's going to be used by an application and you know you only use it say 500 gigabytes and you want to migrate to one terabyte.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: Block and File Storage Design, Hybrid Transfer and Mobility
- Services: AWS DataSync, Amazon FSx
- Key Insights: Therefore, you will create that one terabyte FSx for Windows file server and then use DataSync to migrate the data over continuously.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 15:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: And then when you have reached parity you can just migrate your application to use the new FSx for Windows file server and stop using the old one.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 16:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: Another feature you should know for FSx for Lustre is called data lazy loading.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Object Storage Patterns
- Services: Amazon S3
- Key Insights: So any processing job on Lustre with S3 as an input data source can be started without Lustre doing a full download of the dataset first.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 18:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So what as that means?
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 19:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon FSx, Amazon S3
- Key Insights: That means that if you have a huge S3 bucket, we're talking you know, petabytes and using Amazon FSx for Lustre then you can start using your application for data processing right away because the data is going to be lazy loaded.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 20:
- Concepts: Block and File Storage Design
- Services: Amazon ECR, Amazon FSx
- Key Insights: So that means that's only when a client is going to request for that specific data set, will FSx for Lustre download it and therefore is going to decrease your cost and decrease your latency.
- Hidden/Implicit Meaning: Constraint or limitation signal; Storage economics signal.

Line 21:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: So your FSx for Lustre right now, the clients ask for a very specific dataset, so it's going to be loaded into FSx for Lustre and then processed by the clients.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 22:
- Concepts: Block and File Storage Design, Object Storage Patterns
- Services: Amazon FSx, Amazon S3
- Key Insights: But the idea is that as soon as you have an S3 bucket you can just launch Amazon FSx for Lustre on top of it and start using it.
- Hidden/Implicit Meaning: Access-path and data-plane signal.

Line 23:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: And then of course the data is is going to be loaded only once.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 24:
- Concepts: Block and File Storage Design
- Services: Amazon FSx
- Key Insights: So if you already have a dataset in your Amazon FSx for Lustre file system then it's not going to be loaded a second time if it hasn't changed or if it's being requested by clients.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 25:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So data lazy loading allows you to get the right data exactly when your client requested and that's a great feature.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

Line 26:
- Concepts: Storage Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes storage behavior detail.

## Step 2 - Consolidation

### 1. Concepts List
- Block and File Storage Design
- Cost and Performance Optimization
- Data Protection and Immutability
- Hybrid Transfer and Mobility
- Lifecycle Operations
- Object Storage Patterns
- Storage Operational Context

### 2. Services List
- AWS Backup
- AWS Config
- AWS DataSync
- AWS SAM
- Amazon EBS
- Amazon EC2
- Amazon ECR
- Amazon ECS
- Amazon EFS
- Amazon EKS
- Amazon FSx
- Amazon RDS
- Amazon S3
- Elastic Load Balancing
- VMware Cloud on AWS

### 3. Features List
- access points
- datasync
- ebs
- efs
- fsx
- lifecycle
- performance
- pricing
- replication
- s3
- storage classes

### 4. Use Cases
- 040_Amazon EFS vs. Amazon EBS.txt:2: So the EBS volumes, they're attached to one instance at a time, except in the edge case of using the multi attached feature of the io1 and io2 types of volume, but that is for very specific use cases.
- 040_Amazon EFS vs. Amazon EBS.txt:6: To migrate an EBS volume across AZ, we need to take a snapshot, so it will go into the EBS snapshots, and then we can restore the snapshot into another AZ.
- 040_Amazon EFS vs. Amazon EBS.txt:13: So it's very helpful, for example, when you have WordPress and it's only for Linux instances because it is using the POSIX system.
- 290_Amazon EFS vs. Amazon EBS.txt:2: So the EBS volumes, they're attached to one instance at a time, except in the edge case of using the multi attached feature of the io1 and io2 types of volume, but that is for very specific use cases.
- 290_Amazon EFS vs. Amazon EBS.txt:6: To migrate an EBS volume across AZ, we need to take a snapshot, so it will go into the EBS snapshots, and then we can restore the snapshot into another AZ.
- 290_Amazon EFS vs. Amazon EBS.txt:13: So it's very helpful, for example, when you have WordPress and it's only for Linux instances because it is using the POSIX system.
- 185_KMS with EBS.txt:3: So the process is we create a snapshot, and then we create a new volume, and this is when the key is going to change.
- 045_EBS Overview.txt:13: And when you create an EBS volume it is bound to a specific availability zone.
- 045_EBS Overview.txt:14: That means that you cannot have an EBS volume in created in for example, US East one attached to an instance in US East one.
- 045_EBS Overview.txt:27: And that makes it super handy when you want to do failovers.
- 045_EBS Overview.txt:28: For example, EBS volumes are locked to a specific availability zones.
- 045_EBS Overview.txt:40: And we can attach for example, one EBS volume to that EC2 instance.
- 045_EBS Overview.txt:52: Finally, when we go ahead and create EBS volumes through EC2 instances, there is this thing called a delete on termination attribute and this can come up in the exam.
- 045_EBS Overview.txt:53: So if we look at this when we create an EBS volume in the console, when we create an EC2 instance, there is the second to last column called delete on termination.
- 045_EBS Overview.txt:55: So this controls the EBS behavior when an EC2 instance is being terminated.
- 045_EBS Overview.txt:60: And so use case for it would be for example, that if you want to preserve the root volume when an instance is terminated, for example to save some data, then you can disable delete on termination for the root volume and you'll be good to go.
- 046_EBS Hands On.txt:45: Well, I don't know if you remember, but when you go through the process of launching an instance, okay?
- 047_EBS Snapshots.txt:5: So, for example, let's take EC2 instance that has an EBS volume in US-EAST-1A and an EC2 instance in US-EAST-1B.
- 047_EBS Snapshots.txt:20: This is particularly helpful if your snapshot is big, very big and need to initialize an EBS volume or needs to instance out of it very quickly, but this feature costs a lot of money, so be careful when using it.
- 048_EBS Snapshots - Hands On.txt:3: So we can add a Description, for example, DemoSnapshots, and then click on Create snapshots.
- 048_EBS Snapshots - Hands On.txt:12: And this can come in very handy, in case you want for example, to have a Disaster Recovery Strategy, to make sure data is backed up in another region of AWS.
- 048_EBS Snapshots - Hands On.txt:17: And then the target AZ doesn't have to remain eu-west-1a, it can be, for example, eu-west-1b.
- 048_EBS Snapshots - Hands On.txt:19: And so as we can see, when we click on Create volume, what's going to happen is that if we go back into our Volumes, well, now we have two Volumes, as you can see.
- 048_EBS Snapshots - Hands On.txt:29: And for Rule Lock Setting, I will leave this unlocked, so that I can delete this rule whenever I want to.
- 052_EBS Volume Types.txt:9: Well, you can have several factors, for example, size, throughput, and IOPS, which means I/O operations per second, and, obviously, when in doubt, always consult the documentation.
- 052_EBS Volume Types.txt:22: So they're used for critical business applications that need to sustain IOPS performance or applications that need a lot of IOPS, for example, more than 16,000.
- 052_EBS Volume Types.txt:23: So from an exam perspective, whenever you see, for example, a database workload that is very sensitive to storage performance and consistency, then the provisioned volumes are going to be great.
- 052_EBS Volume Types.txt:32: We have the throughput optimized HDD, so st1, which is great for big data, data warehousing, and log processing, which gives you a max throughput of 500 megabytes per second and a max IOPS of 500, and then for cold HDD, so sc1, this is for archive data, so data that is infrequently accessed, and this is when you would use it when you need to have the lowest possible cost.
- 053_EBS Multi-Attach.txt:8: So the use case for this is you have higher application availability in case of a clustered Linux application, for example, using Teradata, or if your application must manage concurrent rights operation.
- 054_Amazon EFS.txt:8: And then you can have EC2 instances, many of them in the US east-1A availability zone for example, or EC2 instances in the US east-1B availability zone or US east-1C availability zones for your EC2 instances.
- 054_Amazon EFS.txt:10: So the use cases of EFS are content management, web serving, data sharing, WordPress.
- 054_Amazon EFS.txt:21: It's used for latency sensitive use cases such as a web server, a CMS, et cetera.
- 054_Amazon EFS.txt:28: Provisioned is when you want to set your throughput regardless of your storage size.
- 054_Amazon EFS.txt:32: So for example, you can get up to three gigabytes per second for reads and one gigabyte per second for writes based on your workload, and this is going to be a great fit when you have unpredictable workloads.
- 054_Amazon EFS.txt:34: We have storage tiers, which is a lifecycle management feature to allow you to move files to different storage tiers after a certain number of days.
- 054_Amazon EFS.txt:37: This is for rarely accessed data, so you only access, for example, data a few times a year, which is going to be a lot cheaper to store the data on that tier.
- 054_Amazon EFS.txt:41: Now, in terms of availability and durability, standard is going to be great when you have a multi-AZ setup, so your EFS across multiple availability zones, which is great for your production workloads so that you're resistant to disasters.
- 055_Amazon EFS - Hands On.txt:17: So we're saying that hey, if a file hasn't been accessed for 30 days, but you can obviously customize this, if a file hasn't been accessed to 30 days, then move it to the infrequent access storage tier and it's going to be cheaper for you except when you access the file.
- 055_Amazon EFS - Hands On.txt:19: And then if the file was not accessed, for example, in 90 days since the last access, then moving into the archive, which is going to be even cheaper as a storage class.
- 055_Amazon EFS - Hands On.txt:20: And then for example, you say that here when the file is accessed the first time, so on first access, transition back into standard because for example, we assume that it's going to be reused a lot more.

### 5. Constraints / Limitations
- 040_Amazon EFS vs. Amazon EBS.txt:4: We have one EC2 in AZ 1 and we have one EBS volume attached to it and it cannot be attached to an EC2 instance in AZ 2.
- 040_Amazon EFS vs. Amazon EBS.txt:8: Now, the EBS volumes backups, they will use IO, and so you shouldn't run them while your application is handling a lot of traffic because that may impact the performance.
- 040_Amazon EFS vs. Amazon EBS.txt:13: So it's very helpful, for example, when you have WordPress and it's only for Linux instances because it is using the POSIX system.
- 290_Amazon EFS vs. Amazon EBS.txt:4: We have one EC2 in AZ 1 and we have one EBS volume attached to it and it cannot be attached to an EC2 instance in AZ 2.
- 290_Amazon EFS vs. Amazon EBS.txt:8: Now, the EBS volumes backups, they will use IO, and so you shouldn't run them while your application is handling a lot of traffic because that may impact the performance.
- 290_Amazon EFS vs. Amazon EBS.txt:13: So it's very helpful, for example, when you have WordPress and it's only for Linux instances because it is using the POSIX system.
- 185_KMS with EBS.txt:2: So you cannot change the encryption keys used by an EBS volume, but you can create a snapshot and you create a new EBS volume and then you can specify a new KMS key.
- 185_KMS with EBS.txt:14: And on the right-hand side, we're saying, "Hey, we can encrypt, decrypt, re-encrypt using the first data key, the first KMS key in the first account, and the second KMS key in the second account." So it should make sense by now, but I would like to repeat myself just to make things very clear.
- 045_EBS Overview.txt:12: So these EBS volumes at the CCP level can only be mounted to one instance at a time okay.
- 045_EBS Overview.txt:14: That means that you cannot have an EBS volume in created in for example, US East one attached to an instance in US East one.
- 045_EBS Overview.txt:29: That means that, as I said, if it's created in Us-east-1, it cannot be attached to Us-east-1.
- 045_EBS Overview.txt:41: If we create another EC2 instance, as I said, an EBS volume cannot be attached to two instances at a time at the certified cloud practitioner level.
- 046_EBS Hands On.txt:28: To actually use this new block device, it's a bit more complicated and out of scope for this course, but you can go to format EBS volume attach EC2, and you should find something like, yes, make an Amazon EBS volume available to use on Linux and this gives you instructions on how to do it but again, this is out of scope for this.
- 046_EBS Hands On.txt:34: And if I do actions and then attach volume, as you can see, I cannot attach it to my EC2 instance because my EC2 instance is in eu-west-1b.
- 046_EBS Hands On.txt:55: Only my two gigabyte volume is left and if I go to my EC2 console, well, it says that my first instance has been terminated.
- 052_EBS Volume Types.txt:10: Now, for your EC2 instances, only gp2 and gp3 and io1 and io2 can be used as boot volumes.
- 052_EBS Volume Types.txt:29: So they cannot be a boot volumes.
- 052_EBS Volume Types.txt:30: This is only for the previous types of volumes.
- 053_EBS Multi-Attach.txt:5: Then this volume can be attached to multiple EC2 instances at a time, which is something that is only available for the io1 and the io2 family of EBS volumes.
- 053_EBS Multi-Attach.txt:8: So the use case for this is you have higher application availability in case of a clustered Linux application, for example, using Teradata, or if your application must manage concurrent rights operation.
- 053_EBS Multi-Attach.txt:9: So just so you know, this Multi-Attach feature is only available from within a specified availability zone, of course.
- 053_EBS Multi-Attach.txt:11: Another limitation of Multi-Attach is that it is up to 16 EC2 instances at a time that can be attaching the same volume.
- 053_EBS Multi-Attach.txt:13: Finally, for it to work, you must use a file system that is going to be cluster-aware.
- 054_Amazon EFS.txt:12: Now EFS, it's very important to note that it's only compatible with Linux-based AMI and not Windows.
- 054_Amazon EFS.txt:37: This is for rarely accessed data, so you only access, for example, data a few times a year, which is going to be a lot cheaper to store the data on that tier.
- 054_Amazon EFS.txt:38: To move your files automatically between your storage tiers, you can implement lifecycle policies, which will allow you define after how many days a file should be moved to which tier.
- 054_Amazon EFS.txt:42: But if you just want to do development and want to have cheaper options, then you choose one zone, which is going to give you only one availability zone, and you will still have backups on it, and it's also compatible with the IA type of storage tier.
- 055_Amazon EFS - Hands On.txt:25: So for performance settings we have throughput mode and you should have three options.
- 055_Amazon EFS - Hands On.txt:33: And now elastic is recommended, which is saying, Hey, regardless of the size of your EFS file system, we're going to give you all the I/O you need and we'll scale automatically and you're going to only pay for what you use.
- 055_Amazon EFS - Hands On.txt:40: And then you also have a bursting limit of 300 megabytes per second.
- 055_Amazon EFS - Hands On.txt:45: So general purpose is the only option for performance mode, but if you use bursting or if you use provisions, then you have the option between two settings.
- 055_Amazon EFS - Hands On.txt:54: We have bursting, elastic and provision, and that's what you should remember for the exam.
- 055_Amazon EFS - Hands On.txt:67: I'll click on Create Security Group and we cannot have this.
- 055_Amazon EFS - Hands On.txt:83: And when you have a EFS file system, you only pay for the storage you use, so right now my cost are zero.
- 055_Amazon EFS - Hands On.txt:99: So there are 0 x file systems and you do edit and it says that you cannot add a file system before you choose to select a subnet.
- 055_Amazon EFS - Hands On.txt:108: And then it's automatically going to mount shared file system by attaching the required user data scripts.
- 056_EFS vs EBS.txt:4: We have one EC2 in AZ 1 and we have one EBS volume attached to it and it cannot be attached to an EC2 instance in AZ 2.
- 056_EFS vs EBS.txt:8: Now, the EBS volumes backups, they will use IO, and so you shouldn't run them while your application is handling a lot of traffic because that may impact the performance.
- 056_EFS vs EBS.txt:13: So it's very helpful, for example, when you have WordPress and it's only for Linux instances because it is using the POSIX system.
- 057_EBS & EFS - Section Cleanup.txt:14: And they will only be deleted once you have, basically, deleted all your EC2 instances associated with those.

### 6. Patterns / Architectures
- 052_EBS Volume Types.txt:6: Then we have st1 volumes, and they're low cost HDD volume designed for frequently accessed throughput intensive workloads.
- 052_EBS Volume Types.txt:7: We have sc1 volume, which are going to be the lowest cost HDD volume, and it will be designed for less frequently accessed workloads.
- 063_EBS Volume Types.txt:6: Then we have st1 volumes, and they're low cost HDD volume designed for frequently accessed throughput intensive workloads.
- 063_EBS Volume Types.txt:7: We have sc1 volume, which are going to be the lowest cost HDD volume, and it will be designed for less frequently accessed workloads.
- 175_Amazon FSx.txt:28: So you can have applications such as video processing, financial modeling, electronic design automation.
- 175_Amazon FSx.txt:52: So the idea is exactly the same in terms of the architecture.
- 069_EBS & Local Instance Store.txt:12: If you have a need for a low-cost HDD that is going to be designed for frequently accessed and throughput-intensive workload, usually sequential reads, then st1 one is going to be a great choice.
- 069_EBS & Local Instance Store.txt:61: And so the architecture looks like, well, you have one, for example, io2 volume with a multi-attach feature, and it can be attached to multiple EC2 instances at a time.
- 075_Amazon FSx.txt:28: So you can have applications such as video processing, financial modeling, electronic design automation.
- 075_Amazon FSx.txt:52: So the idea is exactly the same in terms of the architecture.
- 076_Amazon FSx - Solution Architectures.txt:1: So let's have a look at some solution architectures for Amazon FSx.

## Step 3 - Deep Expansion (Storage Concepts)

### Core Services in This Topic
- AWS Backup: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Config: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS DataSync: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EBS: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EC2: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon ECR: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon ECS: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EFS: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EKS: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

### Architect-Level Concept Expansion
- Block and File Storage Design: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Cost and Performance Optimization: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Data Protection and Immutability: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Hybrid Transfer and Mobility: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Lifecycle Operations: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Object Storage Patterns: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Storage Operational Context: treat this as a design lever that changes topology, risk posture, or operational workflow.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Object storage | S3 | Blob Storage | Cloud Storage |
| Managed block storage | EBS | Managed Disks | Persistent Disk |
| Managed elastic file storage | EFS / FSx | Azure Files / NetApp Files | Filestore / NetApp Volumes |
| Archival and immutability | Glacier / Object Lock | Archive tier / Immutable Blob | Archive storage / retention policy |
| Hybrid transfer | DataSync / Storage Gateway / Transfer Family | Data Box / File Sync / SFTP patterns | Transfer Appliance / Storage Transfer Service |
| Storage analytics and optimization | Storage Lens / lifecycle analytics | Azure Monitor / lifecycle management | Storage Insights / lifecycle management |

### Trade-offs and Decision Notes
- Storage Knowledge Base is strongest when design decisions are expressed as control objectives rather than vendor-only terminology.
- Cross-cloud portability improves when service choice, failure behavior, and governance model are documented together.
- Cloud-native implementations should still preserve comparable intent across AWS, Azure, and GCP.

## Phase-wise Architect-Level Organization

### Phase 1 - Foundations
- Choose storage by access pattern, consistency needs, latency expectations, and retention horizon.
- Durability, immutability, and restore paths define storage architecture quality.

### Phase 2 - Core Services
- Implement object, block, and file controls with explicit cost and lifecycle intent.
- Separate workload-facing storage design from archival, mobility, and governance workflows.

### Phase 3 - Advanced Patterns
- Use hybrid mobility and access abstraction carefully so transfer paths do not become hidden failure domains.
- Optimize for storage economics only after restore, integrity, and policy requirements are safe.

### Phase 4 - System Design
- Reference architecture: hot path storage, protection layer, archival tier, and mobility pipeline.
- Scaling considerations: object cardinality, metadata pressure, throughput ceilings, and transfer windows.
- Cost considerations: retrieval fees, replication sprawl, idle snapshots, and class-selection mistakes.
