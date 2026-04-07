# 14_Data_Protection_Storage.md

## Scope
- Topic: EBS/EFS/RDS/ELB storage and data-path security, backups, enclaves, lifecycle controls
- Files processed: 16
- Extracted non-empty transcript lines: 569
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 5 Topic 4: Data Protection and Storage)

This section is the study-first architecture view for block/file/database protection, backup strategy, and confidential compute patterns.

### Phase 1 - Foundations

#### Module 1: Data Protection Layers
- Data at rest: storage and snapshot encryption.
- Data in transit: endpoint and channel encryption.
- Data in use: workload isolation and confidential processing patterns.


##### Source Transcript Details
- Module focus: Data Protection Layers
- Primary transcript files:
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/218_[SAA_SOA] AWS Backup.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/212_[SAA_DVA_SOA] ELB SSL Certificates.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/213_ELB - SSL Certificates - Advanced.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/221_[DVA] AWS Nitro Enclaves.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/207_RDS & Aurora Security.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/185_KMS with EBS.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/214_Network Load Balancer - TLS Listeners.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/220_Amazon Data Lifecycle Manager.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/219_[SAA_SOA] AWS Backup - Hands On.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/186_EFS Encryption.txt
- Top concept clusters from transcript metadata:
- Governance/Platform Operational Context
- Data Plane Hardening
- Resilience and Recovery
- Continuous Compliance
- Workload Platform Security
- Operational Assurance
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 16
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 569
- Key insights inside selected files: 332
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- For example, Amazon EC2, EBS, Amazon S3, RDS and all database engines supported, Aurora, DynamoDB, DocumentDB, Amazon Neptune, EFS, FSX, including Lustre, and Windows File Server and probably others.
- AWS Storage Gateway, such as the Volume Gateway.
- The ideas that you get the concept behind database backup and the most important services are shown on the slide.
- If you want to transition the backup itself to Cold Storage.
- And then once it's done well, automatically your back, your data is going to be backed up to Amazon S3 in an internal bucket that is specific to AWS Backup.
- So that means the data as it goes through a network is going to be encrypted and only going to be able to be decrypted by the sender and the receiver.
- So the idea is that with this, you're going to get additional safeguards against the eavesdropping of encrypted data by using during the negotiation, a unique, random session key and that can come up in the exam.
- So the idea is that sometimes in the cloud you wanna process highly sensitive data, and you wanna process it in an isolated compute environment.
- So the sensitive data may be, for example, PII data, so personally identifiable information, or healthcare data, financial data, credit card data, whatever you want.
- So it's not a container, it doesn't have persistent storage, it doesn't have interactive access, you cannot SSH into it.
- And the idea is that this is where you want to do your data processing.
- So by creating a Nitro Enclave you're going to reduce the attack surface for very sensitive data processing apps.
- And on top of it, you can guarantee, thanks to KMS encryption, that only the Enclaves can access your sensitive data.
- So we have at-rest encryption to encrypt the database master and any replicas using KMS.
- And you must define this at launch time of your database.
- And if your database master is not encrypted, then the read repicas cannot be encrypted as well.
- If you want to encrypt an unencrypted database, you have to go through a database snapshot and then you restore it as an encrypted database.
- You have in-flight encryption so you have TLS-ready databases by default.

##### Polished Architect Notes
- Transcript signals that for example, Amazon EC2, EBS, Amazon S3, RDS and all database engines supported, Aurora, DynamoDB, DocumentDB, Amazon Neptune, EFS, FSX, including Lustre, and Windows File Server and probably others.
- Transcript signals that aWS Storage Gateway, such as the Volume Gateway.
- Transcript signals that the ideas that you get the concept behind database backup and the most important services are shown on the slide.
- Transcript signals that if you want to transition the backup itself to Cold Storage.
- Transcript signals that then once it's done well, automatically your back, your data is going to be backed up to Amazon S3 in an internal bucket that is specific to AWS Backup.
- Transcript signals that that means the data as it goes through a network is going to be encrypted and only going to be able to be decrypted by the sender and the receiver.
- Transcript signals that the idea is that with this, you're going to get additional safeguards against the eavesdropping of encrypted data by using during the negotiation, a unique, random session key and that can come up in the exam.
- Transcript signals that the idea is that sometimes in the cloud you wanna process highly sensitive data, and you wanna process it in an isolated compute environment.
- Transcript signals that the sensitive data may be, for example, PII data, so personally identifiable information, or healthcare data, financial data, credit card data, whatever you want.
- Transcript signals that the idea is that this is where you want to do your data processing.
- Transcript signals that by creating a Nitro Enclave you're going to reduce the attack surface for very sensitive data processing apps.
- Transcript signals that on top of it, you can guarantee, thanks to KMS encryption, that only the Enclaves can access your sensitive data.

##### Architect Synthesis (Transcript-Derived)
- Treat Governance/Platform Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Data Plane Hardening as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Resilience and Recovery as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Continuous Compliance as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Workload Platform Security as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: for example, Amazon EC2, EBS, Amazon S3, RDS and all database engines supported, Aurora, DynamoDB, DocumentDB, Amazon Neptune, EFS, FSX, including Lustre, and Windows File Server and probably others.
- Design implication: aWS Storage Gateway, such as the Volume Gateway.
- Design implication: the ideas that you get the concept behind database backup and the most important services are shown on the slide.
#### Module 2: Protected Data Surfaces
- Block and file storage services.
- Relational data stores and managed service endpoints.
- Backup artifacts and lifecycle copies.


##### Source Transcript Details
- Module focus: Protected Data Surfaces
- Primary transcript files:
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/218_[SAA_SOA] AWS Backup.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/212_[SAA_DVA_SOA] ELB SSL Certificates.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/213_ELB - SSL Certificates - Advanced.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/221_[DVA] AWS Nitro Enclaves.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/207_RDS & Aurora Security.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/185_KMS with EBS.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/214_Network Load Balancer - TLS Listeners.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/220_Amazon Data Lifecycle Manager.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/219_[SAA_SOA] AWS Backup - Hands On.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/186_EFS Encryption.txt
- Top concept clusters from transcript metadata:
- Governance/Platform Operational Context
- Data Plane Hardening
- Resilience and Recovery
- Continuous Compliance
- Workload Platform Security
- Operational Assurance
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 16
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 569
- Key insights inside selected files: 332
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- For example, Amazon EC2, EBS, Amazon S3, RDS and all database engines supported, Aurora, DynamoDB, DocumentDB, Amazon Neptune, EFS, FSX, including Lustre, and Windows File Server and probably others.
- AWS Storage Gateway, such as the Volume Gateway.
- The ideas that you get the concept behind database backup and the most important services are shown on the slide.
- If you want to transition the backup itself to Cold Storage.
- And then once it's done well, automatically your back, your data is going to be backed up to Amazon S3 in an internal bucket that is specific to AWS Backup.
- So that means the data as it goes through a network is going to be encrypted and only going to be able to be decrypted by the sender and the receiver.
- So the idea is that with this, you're going to get additional safeguards against the eavesdropping of encrypted data by using during the negotiation, a unique, random session key and that can come up in the exam.
- So the idea is that sometimes in the cloud you wanna process highly sensitive data, and you wanna process it in an isolated compute environment.
- So the sensitive data may be, for example, PII data, so personally identifiable information, or healthcare data, financial data, credit card data, whatever you want.
- So it's not a container, it doesn't have persistent storage, it doesn't have interactive access, you cannot SSH into it.
- And the idea is that this is where you want to do your data processing.
- So by creating a Nitro Enclave you're going to reduce the attack surface for very sensitive data processing apps.
- And on top of it, you can guarantee, thanks to KMS encryption, that only the Enclaves can access your sensitive data.
- So we have at-rest encryption to encrypt the database master and any replicas using KMS.
- And you must define this at launch time of your database.
- And if your database master is not encrypted, then the read repicas cannot be encrypted as well.
- If you want to encrypt an unencrypted database, you have to go through a database snapshot and then you restore it as an encrypted database.
- You have in-flight encryption so you have TLS-ready databases by default.

##### Polished Architect Notes
- Transcript signals that for example, Amazon EC2, EBS, Amazon S3, RDS and all database engines supported, Aurora, DynamoDB, DocumentDB, Amazon Neptune, EFS, FSX, including Lustre, and Windows File Server and probably others.
- Transcript signals that aWS Storage Gateway, such as the Volume Gateway.
- Transcript signals that the ideas that you get the concept behind database backup and the most important services are shown on the slide.
- Transcript signals that if you want to transition the backup itself to Cold Storage.
- Transcript signals that then once it's done well, automatically your back, your data is going to be backed up to Amazon S3 in an internal bucket that is specific to AWS Backup.
- Transcript signals that that means the data as it goes through a network is going to be encrypted and only going to be able to be decrypted by the sender and the receiver.
- Transcript signals that the idea is that with this, you're going to get additional safeguards against the eavesdropping of encrypted data by using during the negotiation, a unique, random session key and that can come up in the exam.
- Transcript signals that the idea is that sometimes in the cloud you wanna process highly sensitive data, and you wanna process it in an isolated compute environment.
- Transcript signals that the sensitive data may be, for example, PII data, so personally identifiable information, or healthcare data, financial data, credit card data, whatever you want.
- Transcript signals that the idea is that this is where you want to do your data processing.
- Transcript signals that by creating a Nitro Enclave you're going to reduce the attack surface for very sensitive data processing apps.
- Transcript signals that on top of it, you can guarantee, thanks to KMS encryption, that only the Enclaves can access your sensitive data.

##### Architect Synthesis (Transcript-Derived)
- Treat Governance/Platform Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Data Plane Hardening as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Resilience and Recovery as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Continuous Compliance as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Workload Platform Security as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: for example, Amazon EC2, EBS, Amazon S3, RDS and all database engines supported, Aurora, DynamoDB, DocumentDB, Amazon Neptune, EFS, FSX, including Lustre, and Windows File Server and probably others.
- Design implication: aWS Storage Gateway, such as the Volume Gateway.
- Design implication: the ideas that you get the concept behind database backup and the most important services are shown on the slide.
### Phase 2 - Core Services

#### EBS and EFS Protection Patterns
- Encryption for volumes, snapshots, and derived artifacts.
- Migration path from unencrypted to encrypted assets must be planned operationally.

#### RDS and ELB Data Path Security
- Database security includes encryption posture and access controls.
- Load balancer TLS termination and certificate posture directly affect trust boundaries.

#### Backup and Lifecycle Controls
- Centralized backup strategy with retention and recovery objectives.
- Lifecycle manager patterns for controlled snapshot and retention operations.

#### Confidential Compute Concepts
- Enclave-style isolation models for high-sensitivity processing paths.
- Use where data-in-use protection requirements exceed standard runtime boundaries.

### Phase 3 - Advanced Patterns

#### Pattern 1: Encrypted Snapshot Rebuild Workflows
- Convert legacy unencrypted assets via snapshot-copy and encrypted rehydration paths.
- Validate attachment, boot, and application integrity post-conversion.

#### Pattern 2: Cross-Account Backup Governance
- Separate backup ownership from workload account ownership where required.
- Enforce restore permissions and auditability for disaster scenarios.

#### Pattern 3: Tiered Recovery Architecture
- Classify workloads by RPO/RTO and map backup cadence accordingly.
- Test restore regularly to avoid false confidence.

### Phase 4 - System Design (Production)

#### Reference Data Protection Architecture
- Service-native encryption baseline for storage and database tiers.
- Central backup governance with immutable or controlled retention where required.
- Recovery runbooks integrated into incident and resilience operations.

#### Scaling Considerations
- Snapshot and backup growth over time.
- Key dependency management across recovery environments.
- Restore orchestration complexity in multi-account and multi-region estates.

#### Cost Considerations
- Backup retention windows and replication depth dominate long-term cost.
- Encryption overhead is typically lower than cost of breach or data loss.

### Cross-Cloud Concept Mapping (Data Protection and Storage)

#### Underlying Concept: Storage Encryption and Recovery
- AWS: EBS/EFS/RDS encryption plus backup ecosystems
- Azure: managed disk/file/db encryption plus backup services
- GCP: persistent/file/database encryption plus backup and DR services
- Trade-off: service integration depth varies; recovery design matters more than feature parity.

#### Underlying Concept: Confidential Compute
- AWS: enclave-based isolation patterns
- Azure: confidential computing options
- GCP: confidential VM and workload options
- Trade-off: stronger isolation may add integration and performance complexity.

### Real-World Use Cases from Transcript Signals
- Encrypt legacy storage estates through migration-safe workflows.
- Protect database and load-balanced traffic channels with robust TLS and key governance.
- Build tested recovery posture with centralized backup policies.

### Constraints and Exam-Relevant Traps Captured
- Encryption conversion workflows can disrupt operations if not staged carefully.
- Backup creation is not equivalent to recovery readiness without restore testing.
- Data protection controls must align with incident and governance models.
## Step 1 â€” Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/04_Security/021_RDS Security.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS
- Key Insights: So, another quick lecture, but this time on RDS-Security, that you hopefully should know, but maybe there's a thing or two that you'll learn here.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 2:
- Concepts: Data Plane Hardening
- Services: Amazon EBS
- Key Insights: So you can get KMS encryption at rest for your underlying EBS volume and snapshots.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 3:
- Concepts: Data Plane Hardening
- Services: Amazon RDS
- Key Insights: You have the option to use something called TDE, Transparent Data Encryption, if you have an Oracle or SQL Server database, managed by RDS.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 4:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: And you are able to define in-flight encryption, SSL encryption, for all the databases.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS
- Key Insights: You are able to use IAM authentication for MySQL, PostgreSQL and MariaDB, but that's just for the authentication, the authorization itself still happens within RDS, not in IAM.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But still, it's good for user management to be done through IAM.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS
- Key Insights: You can copy an un-encrypted RDS snapshot into an encrypted one, this is a very common DevOps feature to do, and CloudTrail cannot be used to track queries made within RDS.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS
- Key Insights: You will need to have specific monitoring tools, for RDS and database security to get these kind of logs, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So just a very short lecture, to be honest.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS
- Key Insights: We'll have a more deep dive into RDS in another section, but here you need to remember all the security options for RDS, because the exam may trick you into thinking TDE is for MySQL, or IAM authentication is for Oracle, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/185_KMS with EBS.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: So let's have a deeper look at the integration between KMS and EBS.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Data Plane Hardening
- Services: Amazon EBS
- Key Insights: So you cannot change the encryption keys used by an EBS volume, but you can create a snapshot and you create a new EBS volume and then you can specify a new KMS key.
- Hidden/Implicit Meaning: Constraint or limitation signal; Data protection and resilience signal.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the process is we create a snapshot, and then we create a new volume, and this is when the key is going to change.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: So we can also automate cross-account EBS KMS-encrypted snapshot copies.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This was very complicated to say.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: So we have account A and we have an EBS snapshot in here encrypted with the KMS key.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: What's going to do is that we're going to share this with a target accounts, and we need to make sure from an IAM permissions perspective that we have anything for grants, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Because we're going to share this and it's going to be used by a service.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So then once this is done, we can copy to us-east-1.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's going to be to the new account.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's going to be decrypted by the first KMS key and it's going to be re-encrypt by the second KMS key.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The KMS key policy in the target accounts is a bit special.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So you'll have this one, and we're saying, "Hey, we allow to create grants for both these keys, for AWS resources." That's the left part of this slide.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And on the right-hand side, we're saying, "Hey, we can encrypt, decrypt, re-encrypt using the first data key, the first KMS key in the first account, and the second KMS key in the second account." So it should make sense by now, but I would like to repeat myself just to make things very clear.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 15:
- Concepts: Data Plane Hardening
- Services: Amazon EBS
- Key Insights: So also for EBS encryption, there's an account level setting so that you make sure that every single EBS volume is going to be encrypted.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So if you enable this volume, but if you don't, of course, they're not encrypted by default.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So you need to enable this on the per-region setting.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Data Plane Hardening
- Services: Amazon EBS
- Key Insights: You go to your EC2 Console, Settings and then you have EBS encryption.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: And here you can define a default EBS key to encrypt your volumes with.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: So that's it for what you need to know between EBS and KMS.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/186_EFS Encryption.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EFS
- Key Insights: So here is a short lecture on how to encrypt an EFS file system that is unencrypted to start with.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Data Plane Hardening
- Services: Amazon EFS
- Key Insights: So there's no option to just turn on encryption for your EFS file system.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EFS
- Key Insights: What you must do instead is that you create a new EFS file system and then you will migrate the files and their permissions using AWS DataSync.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EFS
- Key Insights: So to summarize, we have an unencrypted EFS file system and then we create an encrypted EFS file system that at first is empty, and then we'll use AWS DataSync to migrate from one to the other.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: When we're ready, then our applications can switch over from the unencrypted file system to the encrypted file system, and that's the process.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/207_RDS & Aurora Security.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS
- Key Insights: So let's do a quick review of RDS and Aurora Security but you may know already most of this information.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: So we have at-rest encryption to encrypt the database master and any replicas using KMS.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And you must define this at launch time of your database.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And if your database master is not encrypted, then the read repicas cannot be encrypted as well.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: If you want to encrypt an unencrypted database, you have to go through a database snapshot and then you restore it as an encrypted database.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 6:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: You have in-flight encryption so you have TLS-ready databases by default.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 7:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: For this, you just connect using the TLS port and you also use the TLS root certificate from AWS client side to establish this connection.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You can use IAM authentication to connect to your database so the IAM roles will be exchanged for credentials and then this allows you to get removed from permanent usernames and passwords, and have tighter security.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Access to your database is also managed by security groups.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS
- Key Insights: This is from a network perspective, and you cannot SSH onto your RDS databases unless you're using RDS custom where you can have access to the OS of your RDS database.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: Operational Assurance
- Services: (none explicit)
- Key Insights: You can send the audit logs of your databases to CloudWatch Logs for longer retention.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So for IAM authentication, this works for MariaDB, MySQL and PostgreSQL.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Workload Platform Security
- Services: Amazon RDS
- Key Insights: You don't need a password, just to make sure you obtain an authentication token directly by using the IAM and the RDS API calls.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This token has a lifetime of 15 minutes for authentication but then once you have established a connection, you're good to go.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS
- Key Insights: Well, your EC2 instance wants to connect to your RDS database.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You're going to attach an IAM role to your EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Workload Platform Security
- Services: Amazon RDS
- Key Insights: Then you're going to issue API calls to the RDS service to get an authentication token out of it, and then you're going to pass this authentication token on the secure connection with SSL into your RDS database and then you will be connected.
- Hidden/Implicit Meaning: Platform workload security signal.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the benefits of this is that your network in and out must be encrypted with SSL.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So you have secure connections.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You have IAM to centrally manage all your users of your database instead of creating them and managing them from within your database, so it's very handy, and you can leverage IAM roles and EC2 two instances for easy integrations, which streamlines your security.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS
- Key Insights: I also want to bring your attention to how to encrypt an unencrypted snapshot of Aurora.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So when you have an encrypted database, everything is going to be encrypted, such as your database instances, your snapshot, your logs and your backups.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But what happens if it's unencrypted?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So you have a database snapshot, it's unencrypted.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: What you can do is that you can restore this as a database cluster, and this will be encrypted and only then you can create a snapshot that is going to be encrypted from this database cluster.
- Hidden/Implicit Meaning: Constraint or limitation signal; Data protection and resilience signal.

Line 27:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is a misconception but if you have an unencrypted database cluster, you cannot create an encrypted snapshot out of it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And if you have an unencrypted snapshot, it's not possible for you to copy this snapshot and encrypt it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS
- Key Insights: The only way to do that is to go by restoring this snapshot as an encrypted Aurora database cluster and then create a snapshot out of it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 30:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 31:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/208_[CCP] Elastic Load Balancing Overview.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's see, the first service that will allow us to be more elastic on AWS, this is called elastic load balancing.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So a load balancer is a server that will forward the internet traffic down to multiple servers downstream.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And for then there will be EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: They're also called the backend EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So elastic load balancing is something that is managed by AWS.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So we have a load balancer and this is what we will be publicly exposing for our users.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And behind that load balancer, we will have multiple EC2 instances, maybe three in that case.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And then we have our first user talking to our load balancer, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And the load balancer will be directing the traffic to one of these EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And the EC2 instance will reply back with something and the user will get the response.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But now if a second user comes in, then they will get the reply from another EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And if a third user comes in as you can expect, it will be replying from another EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And so the load balancer, the more users we have, the more it will balance the load across multiple EC2 instances and that will allow us to scale better our backend.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So why would you use one?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I think it's clear.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You can spread the load across multiple downstream instances.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You can expose a single point of access, DNS host name, for your application.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You can seamlessly handle the failures of downstream instances.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So we do regular health checks on them and if one of them is failing, then the load balancer will not direct traffic to that instance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So we can hide the failure of an instance using a load balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We can also provide SSL termination, so HTTPS for your websites very easily.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And you are able to use a load balancer across multiple availability zones which was making your application highly available.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, let's keep on going.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So the ELB is a manager load balancer, so you don't need to be provisioning servers.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: AWS will do it for you and AWS will guarantee that it will be working.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: AWS will take care of all the upgrades, maintenance, and high availability of that elastic load balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 27:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And the only thing we have to do is to configure a few things for the behavior of that load balancer.
- Hidden/Implicit Meaning: Constraint or limitation signal; Governance and compliance signal.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: It's obviously less expensive if you want to set up your own load balancer on EC2.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It is definitely possible, but in the end, there will be a lot more effort on your end for maintenance, integration, maintaining and taking care of the operating system, upgrades, et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 30:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So there are four kinds of load balancers offered by AWS and I need you to know the differences between them.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 31:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So the first one is the application load balancer, which is for HTTP or HTTPS-only traffic which is called a Layer 7 type of load balancer because it's HTTP and HTTPS.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 32:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: Next, we have the network load balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 33:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It's ultra high performance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 34:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So look for that keyword.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 35:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It allows for TCP and UDP actually.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 36:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And it's Layer 4.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 37:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's Layer 4 because it's lower level, so TCP and UDP.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 38:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: Then we have the gateway load balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 39:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It's Layer 3.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 40:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I will show you the differences in the next slide.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 41:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And then finally, we have the classic load balancer but it's being retired in 2023, so it's not going to appear at the exam anymore I feel.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 42:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: But if you wanna know, it was a Layer 4 and Layer 7 type of load balancer of older generation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 43:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And it's been replaced by the ALB, the application balancer and the NLB, the network load balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 44:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So if you have a look at the differences between the ALB, the NLB, and the gateway load balancer, also GWLB, then what you'll need to look at for the exam are these kind of keywords.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 45:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So if you see HTTP, HTTPS or gRPC protocol, it means it's Layer 7 and it's the ALB.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 46:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Also, anytime you need HTTP routing features, this will be requested.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 47:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: For a static DNS as well, this would be very helpful if you wanna have a static URL.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 48:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the architecture is very simple.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 49:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: The users access your load balancers on one of the protocols I just mentioned and then the load balancer routes traffic to the downstream EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 50:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: For example, if you've chosen the targets to be EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 51:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: For the network load balancer, it is Layer 4.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 52:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So TCP and UDP protocol, and it's very high performance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 53:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We're talking millions of requests per second.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 54:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It gives you a static IP this time, so not a static URL, but a static IP through the use of elastic IP which are IPs that you own that you can move around.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 55:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So this NLB gives you a static IP and the architecture is the exact same as the ALB.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 56:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: The traffic is being sent to the NLB on the TCP and UDP protocol, and then sent, forwarded to downstream targets.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 57:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: For example, E2 instances.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 58:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: Now, the gateway load balancer is using the GENEVE protocol on the IP packets themselves.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 59:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's Layer 3.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 60:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And the use case you need to look at for the exam is to route traffic to firewalls that you manage on EC2 instances, so that you can do, for example, classic firewall or intrusion detection or deep packet inspection.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 61:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And the architecture, it is a little bit more complicated.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 62:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So the gateway load balancer doesn't balance the load to your application.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 63:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It actually balances the load of the traffic to the virtual appliances that you run on EC2 instances so that you can analyze the traffic or perform firewall operations.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 64:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: That's why it's called third-party security virtual appliances.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 65:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And they can be, many of them address represented one on this diagram.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 66:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And so therefore, the traffic, when it goes to the gateway load balancer, first sends the traffic to these EC2 instances that will analyze the traffic.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 67:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: The traffic will be sent back afterwards to the gateway load balancer and then forwarded back to the applications.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 68:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So the gateway load balancer here is in the middle to allow us to inspect the IP packets themself and to perform firewall features or intrusion detection or deep packet inspection.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 69:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, so if you understood this, you know the differences between the load balancers and you'll be good for the exam.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 70:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture for some practice.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/209_[SAA_DVA_SOA] Network Load Balancer Overview.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So now let's talk about the network load balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So it's a Layer 4 load balancer and therefore it allows you to deal with TCP and UDP traffic.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This is lower level, Layer 7 was HTTP and Layer 4 is going to be TCP and UDP traffic.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So these work for the network load balancer and therefore when in the exam you see UDP think network load balancer or even TCP.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: Okay, also on top of it, the network load balancer is really, really high performance and therefore it can handle millions of requests per seconds and it has ultra low latency.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: Now, another specificity of the network load balancer is that it only has one static IP per availability zones and you can assign an elastic IP to each AZ.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is very helpful when you need to expose your application with a set of static IPs.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And this can be elastic IPs.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So when the exam you say, Hey, your application can only be accessed within one, two, or three different IPs, then you need to think about the network load balancer as an option.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So if you see extreme performance TCP or UDP or static IPs, think network balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look at how that works.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it works very similarly to the application balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We create target groups and then the network balancer will redirect to them.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we can use for example, the TCP traffic or for example, in the backend, the GTP, but still in the front end use TCP.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So what about the target groups?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This is the important part.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the target groups can be EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: That means that your network load balancer can redirect to your EC2 instances and send TCP or UDP traffic to them.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But you can also register IP addresses and these IP addresses when they're hard coded and they must be hard coded, they must be private IPs.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So why would you do this?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: Well, you can of course send the private IP of the EC2 instance that you own, but also you could use the private IP of a server that you have in your own data center and therefore both of them can be fronted by the same network load balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And it's also possible for you to have a network load balancer in front of an application load balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So in that case, the NLB is in front of your ALB.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So why would you do this?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: Well, thanks to the network load balancer you would get, for example, the fixed IP addresses, and then thanks to the application load balancer, you can get all the rules that you have around the handling HTTP type of traffic.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it is a valid combination.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 27:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: Now one last thing you need to know for the exam is that the health checks performed by the network load balancer target groups are support three different kind of protocols.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: They support the TCP protocol, the HTTP protocol and the HTTPS protocol.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So if your backend application supports the HTTP or HTTPS protocol, then it is definitely possible for you to define a health check on these protocols.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 30:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So that's it for the network load balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 31:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/210_Network Load Balancer Advanced.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: Let's talk about some interesting security concepts around the Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The first one is the Client IP Preservation concept.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So the client IP addresses, they're forwarded to the Network Load Balancer targets, but we have several options.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So the client talks to the Network Load Balancer, and of course the traffic goes to the EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: It turns out that when client IP preservation is turned on, the EC2 instances see the request coming from the source IP of the client and not from the source IP of the NLB.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: But when you disable it, then the Network Load Balancer becomes the client IP address for all incoming traffics.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So when do we have client IP preservation and when don't we have client IP preservation?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: Amazon ECS
- Key Insights: Well, when you have a target by Instance ID or ECS task, client IP preservation will be enabled.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: When you have targets by IP addresses for TCP traffic and TLS, it's going to be disabled by default.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then when you have targets by IP address for UDP and TCP_UDP, then it's going to be enabled by default.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: So it's always enabled, except when you have IP address for TCP and TLS.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Data protection and resilience signal.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Now, you can obviously change this thing, but you cannot disable it for targets by Instance ID and by IP address of UDP, TCP_UDP.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You can now attach security groups to Network Load Balancers just like you would for an application balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So the idea is that you have security groups for your EC2 instances in your private subnets, and they're your targets of your Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: But now you can also attach a security group to your Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Continuous Compliance
- Services: Elastic Load Balancing
- Key Insights: That means that you have the client that will be connecting to the security group and from a target EC2 instance security group, you can just have a rule that allows the inbound security group of the Network Load Balancer to let traffic flow securely, which is very handy and is a similar setup to what you will have with an application load balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So how can we troubleshoot Network Load Balancer connectivity?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Well, for example, if the registered target is not in service, then it could be an issue with the health checks or it could be an issue with security group.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So you need to make sure that the target security group does allow traffic from the health check port/protocol from the NLB's security group, or also the target subnet network ACL does not allow traffic from the NLB.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: In case the requests are not routed to the targets, then it could be also an issue with security groups, or again, it could be an issue with NACLs.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You need to make sure also that the availability zone is enabled.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And if the EC2 instances are in a peered VPC, then you need to make sure that these EC2 instances are registered by IP addresses, not by Instance ID.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Alright, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/211_[SAA_DVA_SOA] ELB Sticky Sessions.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: Let's talk about sticky sessions or so-called session affinity for your elastic load balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's possible to implement what's called stickiness or sticky sessions.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And the idea is that the client doing two requests to the load balancer will have the same instance in the backend to respond to the request.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So the idea is that, for example, you have the ALB with two EC2 instances and you have three clients.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: If the client one makes a request and it goes to the first EC2 instance, that means that when it does a second request to the load balancer, it will go to the same instance, which is a different behavior where usually the application balancer will do a spread of all the requests across all the EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: Now for client two, if it goes to the ALB and talks to the second instance, then all the requests will go there.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And same for client three, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So this can be enabled for the Classic Load Balancer Application Balancer and Network Load Balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And how it works, well, there is a cookie that is sent as part of the request from the clients to the load balancer and it has stickiness and it has an expiration date.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: That means that when the cookie expires, then the client may be redirected to another EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The use case for this is to make sure that the user is connected to the same backend instance in order not to lose his session data, which can take some important information such as the login of the user, for example.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But if you enable stickiness, it may bring imbalance to the load over the backend EC2 instances in case some instances I have a very, very sticky user.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, now to go a little bit deeper, how about the cookie itself?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Well, there are two types of cookie that you can have for sticky sessions.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The first one is application-based cookie and the second one is duration-based cookie.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So for application-based cookies, well, it's a custom cookie that is generated by the target, so by your application itself.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And you can include any custom attributes you want required by your application.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The cookie name must be specified individually for each target group, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And you may not, you must not use the following names, so AWSALB, AWSALBAPPOR or AWSALBTG, because they are already reserved for use by the ELB itself.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Or it could be an application cookie.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And this time will be generated by the load balancer itself, and the cookie name used by the ALB will be AWSALBAPP, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: Now the second type of cookies is duration-based cookie and it's a cookie generated by the load answer, and the name is AWSALB for the ALB and AWSELB for the CLB, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And the idea is this one, will have an expiry based on a specific duration, and the duration is generated by the load balancer itself, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Whereas before, while there is an application-based cookie, so the duration can be specified by the application itself.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's how it works, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You don't need to remember exactly the name of the cookies or the fact that you have custom and application, but you remember there's application-based cookies and duration based, and they have a specific name.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 27:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And this will be coming into account when we talk about CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: Okay, so if I look at my load balancer right now and I open it in the new tab, as you can see, it goes between my three instances in my load answer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's perfect.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 30:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But now I'm going to enable sticky sessions.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 31:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So to do so, I'm going to go at the target group level, open my target group and then Action, and I will can edit the attributes of my target group.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 32:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So here, let's scroll down and we have the target selection configuration, and here we have stickiness.
- Hidden/Implicit Meaning: Governance and compliance signal.

Line 33:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So here for stickiness, we can turn it on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 34:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And we have two types of stickiness available to us.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 35:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: We have a load balancer generated cookie or the application based cookie.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 36:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's look at the first one.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 37:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So here we're able to set a duration.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 38:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So between one second to seven days, you can modify it here.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 39:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Or if you wanted to have your own application cookie, again, they are the same settings, but you need to add an app cookie name, for example, MYCUSTOMCOOKIEAPP.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 40:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And this is just a name that you would give your cookie so that you know how to apply stickiness at the low balancer level.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 41:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: Now, to keep things simple, we're going to choose Load balancer generated cookie and have everything as the default, so one day.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 42:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And let's click on Save changes.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 43:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So now let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 44:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to go and open the debugger as well, so we can have a look at the network and see what happens.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 45:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So if you ever look at the network and then I refresh this page, as we can see, I refresh multiple times, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 46:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You get access to the same instance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 47:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So 7176 is the one that's coming back, back and back and back.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 48:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And now what's going to happen is that when you look at the get request made to the load balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 49:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I'm very, very sorry for the font size here.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 50:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I don't think I can really increase it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 51:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But if you go to Cookies, as you can see here, there is a response cookie, okay, that is saying that your cookie expires tomorrow.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 52:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Here is the path and here is the value of the cookie.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 53:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And then in the request cookie, when the browser makes a request to the load balancer, it sends again the cookie it has right here.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 54:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so because of the cookie being passed and sent, this is how stickiness works, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 55:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So just a little bit of a deeper dive into how stickiness works.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 56:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 57:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 58:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And by the way, to access the web developer tools, you click on Web Developer and then Web Developer Tools.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 59:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And I just use a short shortcut for that.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 60:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And it's the same on Chrome and Firefox.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 61:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then you go into Network and you get access to your information around your request, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 62:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And finally, just go back to your target group, and then you edit the attributes itself and you can disable stickiness to come back to a normal behavior, which should be good to go.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 63:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 64:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/212_[SAA_DVA_SOA] ELB SSL Certificates.txt

Line 1:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: Okay, so now let's talk about SSL and TLS Certificates.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is a dumb down version of how this works.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This is obviously way more complicated but I want to introduce you to the concepts in case you don't know it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: And even if you do know SSL and TLS, please watch this lecture.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I'm going to talk about SNI and I'm going to talk about the integrations with load balancers.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So bear with me please.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Data Plane Hardening
- Services: Elastic Load Balancing
- Key Insights: So an SSL certificate allows the traffic between your clients and your load balancer to be encrypted while in transit.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: This is called in-flight encryption.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So that means the data as it goes through a network is going to be encrypted and only going to be able to be decrypted by the sender and the receiver.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So, SSL refers to Secure Sockets Layer and it's used to encrypt transfer connections.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: And TLS is the newer version of SSL and it refers to Transport Layer Security.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 12:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: But the thing is, nowadays, TLS certificates are the one that are mainly used, but people, including myself, I will still refer this as SSL.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I'm making a mistake, but I'm making it on purpose, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: So it's better to say a TLS certificate than SSL certificates, but for many reasons, I'm still gonna say it's SSL because it's easier to understand.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 15:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: So public SSL certificates are issued by Certificate Authorities, and they include something like Comodo, Symantec, GoDaddy, GlobalSign, Digicert, Letsencrypt, and so on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Data Plane Hardening
- Services: Elastic Load Balancing
- Key Insights: And using this public SSL certificate attached to our load balancer, we're able to encrypt the connection between the clients and the load balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So whenever you go to a website, for example google.com or anything, any other website, and you have a lock or a green lock that means that your traffic is encrypted.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And if traffic is not encrypted, you'll have a red sign saying, "Hey, traffic is not encrypted.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Don't put your credit card details.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Don't put your login information because it's not secure." So the SSL certificates, they have an an expiration date that you set and they must be renewed regularly to make sure that they're authentic, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So how does it work from a load balancer perspective?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So users connect over HTTPS, and it's S because it's using SSL certificates and it's encrypted.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: It's secure, and it connects over the public internet to your load balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Data Plane Hardening
- Services: Elastic Load Balancing
- Key Insights: And internally, your load balancer does something called SSL certificate termination.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And in the backend, it can talk to your EC2 instance using HTTP, so not encrypted, but the traffic goes over your VPC, which is private traffic network.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And that is somewhat secure.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 27:
- Concepts: Data Plane Hardening
- Services: Elastic Load Balancing
- Key Insights: So the load balancer will load an X.509 certificate, which is called a SSL or TLS server certificate.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 28:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: And you can manage these SSL certificates in AWS using ACM, meaning AWS Certificate Manager.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we're not going to view ACM in that lecture but just to get an idea of what it is.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 30:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Now, you can also upload your own certificates to ACM if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 31:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: And when you set you an HTTPS listener, you must specify a default certificate.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 32:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Then you can add an optional list of certs to support multiple domains, and clients can use something called SNI or Server Name Indication to specify the hostname they reach.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 33:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Now don't worry, I'm going to explain what SNI is in details in the next slide because it is really, really important for you to understand what it means.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 34:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: That means that, and you can also, finally for HTTPS, set a specific security policy if you wanted to support all their versions of SSL and TLS, called also legacy clients.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 35:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's talk about SNI 'cause it is so important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 36:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: SNI solves a very important problem, which is how do you load multiple SSL certificates onto one web server in order for that web server to serve multiple websites?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 37:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And there's a newer protocol that now requires the client to indicate the hostname of the target server in the initial SSL handshake.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 38:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: So the client will say, "I want to connect to this website." And the server will know what certificate to load.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 39:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so, this is a newer protocol and this is something new.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 40:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Not every client supports this.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 41:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So it only works when you use the application load balancer and the network load balancer, so the newer generations, or CloudFront.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 42:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And we'll see what CloudFront is later in this course.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 43:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And it does not work when you use the classic load balancer because it is older generation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 44:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So anytime you see multiple SSL certificates onto your load balancer, think ALB or NLB.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 45:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So as a diagram, what does it look like?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 46:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: We have our ALB here and we have two target groups.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 47:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The first one is www.mycorp.com, and the second one is Domain1.example.com.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 48:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So the ALB will be routing to these target groups based on some rules and the rules may be directly linked, in this case to the hostname.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 49:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So the ALB will have two SSL certificates: Domain1.example.com and www.mycorp.com, which corresponds to the corresponding target groups.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 50:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: Now the clients connects to our ALB and says, "I would like www.mycorp.com", and that is part of server name indication.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 51:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And the ALB says, "Okay, I've seen that you want mycorp.com.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 52:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Let me use the correct SSL certificates to fill that request." So it's going to take the right SSL certificates, encrypt the traffic, and then thanks to the routes, it's going to know to redirect to the correct target group, mycorp.com.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 53:
- Concepts: Data Plane Hardening
- Services: Elastic Load Balancing
- Key Insights: And obviously, if you have another client connecting to your ALB for Domain1.example.com, then you will be able to pull the right SSL certificate again and connect to the right target group.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 54:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So using SNI or server name indication, you are able to have multiple target groups for different websites using different SSL certificates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 55:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Excellent.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 56:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So finally, what is supported for SSL certificates?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 57:
- Concepts: Data Plane Hardening
- Services: Elastic Load Balancing
- Key Insights: So classic load balancer is yes, you can only support one SSL certificate.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 58:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And if you want multiple hostnames with multiple SSL certificates, the best way is to use multiple classic load balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 59:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: For ALB, the v2, you need to, you can support multiple listeners with multiple SSL certificates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 60:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And that's the great part of it, and it uses SNI to make it work.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 61:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And we just saw what it is.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 62:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And for the NLB or network load balancer, it supports, again, multiple listeners with multiple SSL certificates, and it will use SNI again to make it work.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/213_ELB - SSL Certificates - Advanced.txt

Line 1:
- Concepts: Data Plane Hardening
- Services: Elastic Load Balancing
- Key Insights: Okay, so let's talk about SSL encryption for your Elastic Load Balancer.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 2:
- Concepts: Data Plane Hardening
- Services: Elastic Load Balancing
- Key Insights: So this is our classic architecture, and the idea is that you could have termination at the ELB level by having an SSL or TLS certificate loaded onto it.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: In which case, while our users will access our ELB using an encrypted connection for example, HTTPS, but there is going to be a termination because then the ELB will just send HTTP traffic over your prior VPC into your EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Data Plane Hardening
- Services: Elastic Load Balancing
- Key Insights: So you would load an SSL or TLS certificate on the ELB and to manage these certificates, you need to use ACM, which is AWS Certificate Manager.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: You can upload your own certificates as well onto ACM and then have them used by the ELB.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: For your HTTPS listener, you must specify a default certificate and you can have as well an optional list of certificates if you wanted to support multiple domains.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And as we'll see, there's something called Server Name Indication, SNI, to allow clients to specify the domain the hostname they're gonna trying to reach and therefore your ELB will be able to send back the correct certificates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Continuous Compliance
- Services: (none explicit)
- Key Insights: You can also specify an SSL Security Policy for compliance features, compatibility, or security as we'll see in the very next slides.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about SNI or Server Name Indication.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The idea is that SNI will solve the problem of loading multiple SSL certificates onto one single web server that will be serving multiple websites and domains.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So we have our ALB and say, we have two target groups.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: One is www.mycorp.com, which has EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And the other target group will be serving demo.example.com with other sets of EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: The idea is that on our ALB we're going to have routing based on hostname.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so therefore the hostname when indicated will be served by the right target group.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: Now, we're also going to load a lot of certificates on the ALB.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we're going to load demo.example.com, but also www.mycorp.com as well as maybe other ones and a default SSL Certificates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: What's going to happen is that a client when it connects to your ALB, will indicate the server name, the hostname.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Data Plane Hardening
- Services: Elastic Load Balancing
- Key Insights: So I would like to connect to www.mycorp.com and thanks to the SNI feature, the ALB will know which SSL certificate to use to establish the connection with the clients and make sure it is correctly encrypted.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So SNI is quote in quote, a newer protocol and requires the client to indicate the hostname of the target it tries to connect to during the initial SSL handshake.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And therefore, the server will find the correct certificates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: This only works therefore for the newer generations types of load balancer, such as the Application Load Balancer and the Network Load Balancer.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Now, these SSL certificates can be loaded onto the CLB.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: So the CLB supports only one SSL certificate.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And if you wanted to support multiple hostnames through your CLB, you would need to use SAN.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So Subject Alternate Name on your SSL certificates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 27:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: But the idea is that anytime you will need to add or remove a domain name, you will need to edit the SSL certificate with new SANs.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so therefore it is a complicated process because you will need to reissue and reassign these certificates over time.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Therefore, sometimes the best option is to use multiple CLBs for multiple hostnames with multiple SSL certificates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 30:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: But if you can transition away from the CLB and use the ALB instead, because the ALB has the Server Name Indication feature that we just saw that will simplify your life.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 31:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So talking about the ALB, it supports multiple HTTPS listeners and multiple SSL certificates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 32:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then in order to make it work with multiple hostnames, then we're going to use this Server Name Indication feature, the SNI feature we just saw.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 33:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: The NLB is similar.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 34:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It supports multiple listeners with multiple SSL certificates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 35:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And we're also going to use SNI to serve the correct SSL certificates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 36:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Now, finally, it is possible for you to set up a security policy for your HTTPS or your SSL listener.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 37:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So security policy is a combination of SSL protocols, SSL ciphers and Server Order Preference option that's going to be supported during the SSL negotiation.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 38:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: That is when your client is connecting to your server and establishing a secure connection.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 39:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So you can use some predefined security policies for example, the ELBSecurityPolicy-2016-08 and then apply it to your load balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 40:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So if you consider the Application Load Balancer and the Network Load Balancer, then in case of frontend connections, so connections from the client to your load balancer, then you can use a predefined security policy.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 41:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And for backend connections, then you must use the ELBSecurityPolicy-2016-08.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 42:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It's going to be always used.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 43:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So what can we set for predefined security policy?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 44:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We have different ones.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 45:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We have the default I just showed you.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 46:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: But also you can use the ELBSecurityPolicy-TLS policies.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 47:
- Concepts: Continuous Compliance, Data Plane Hardening
- Services: (none explicit)
- Key Insights: So in this case, you must meet compliance and security standards that require to only use certain TLS protocol version.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Data protection and resilience signal.

Line 48:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: That may be something internally within your company.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 49:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: And also if you wanted to sometimes support older versions of SSL and TLS for your legacy clients and application.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 50:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The other kind of policies you may want to use is the ELBSecurityPolicy-FS.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 51:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And this is when you require Forward Secrecy.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 52:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that with this, you're going to get additional safeguards against the eavesdropping of encrypted data by using during the negotiation, a unique, random session key and that can come up in the exam.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 53:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: So anytime you see, how do we use a unique random session key for your ALB, think of a Forward Secrecy policy for your load balancer.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 54:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 55:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 56:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/214_Network Load Balancer - TLS Listeners.txt

Line 1:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: So here is a specific lecture for TLS and your network balancer.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 2:
- Concepts: Data Plane Hardening
- Services: Elastic Load Balancing
- Key Insights: So if you want to have a TLS listener, you can use it on your NLB.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 3:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: So it will use the server certificate to terminate the TLS traffic and then it will decrypt the front end connections and then they will send it to the targets unencrypted.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 4:
- Concepts: Data Plane Hardening
- Services: Elastic Load Balancing
- Key Insights: If you wanna create a TLS listener, you must create a certificate in ACM and then you attach it on your NLB.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Data protection and resilience signal.

Line 5:
- Concepts: Data Plane Hardening
- Services: Elastic Load Balancing
- Key Insights: And even if you have TLS termination on your NLB, with client IP preservation setting enabled, the target instances, we'll still see the source IP address and port as if it comes from your clients.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the diagram is like this.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Data Plane Hardening
- Services: Elastic Load Balancing
- Key Insights: The client, for example, talks to the TLS listener on port 443 of your network load balancer, which has TLS termination enabled because it has a certificate.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: What's going to happen is that the EC2 instances in your target group are going to see HTTP unencrypted traffic from your network load balancer, and the source IP of that if client IP preservation is enabled is going to be the IP of your client.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Data Plane Hardening
- Services: Elastic Load Balancing
- Key Insights: Now, with this kind of mechanism, because the traffic is terminated at the NLB level from an encryption perspective, then these networks do not support TLS renegotiation, or mutual TLS authentication, mTLS because it has to be done directly by the client with the EC2 instances and not by the NLB.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So how do we do this?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: Well, the option to do this kind of end-to-end encryption is to use a TCP listener, so not an encrypted one but you define it on port 443, even though it's just TCP.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: And what's going to happen is that all this TCP traffic is going to be passed encrypted to the target without the NLB decrypting it or terminating it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: So we don't use a TLS listener, and it is the responsibility of the target group to actually decrypt the traffic.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: Elastic Load Balancing
- Key Insights: The clients sends encrypted traffic through your NLB but we have a TCP listener this time.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: Then the same traffic is going to be passed in encrypted to your EC2 instances, which are the one that will be performing TLS termination.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 17:
- Concepts: Data Plane Hardening
- Services: Elastic Load Balancing
- Key Insights: And when you have the setting, you support mutual TLS because well, the NLB will pass the traffic as is and then the mutual TLS authentication can be implemented directly on your EC2 instances as targets.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So something to know that once you see it in the exam, it would make sense.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/218_[SAA_SOA] AWS Backup.txt

Line 1:
- Concepts: Resilience and Recovery
- Services: AWS Backup
- Key Insights: Hello, and welcome to this lecture on AWS Backup.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 2:
- Concepts: Resilience and Recovery
- Services: AWS Backup
- Key Insights: So AWS Backup is a fully managed service and it allows you to centrally manage and automate backups across all your AWS services.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And the list is getting bigger and bigger by the day.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that you want to have a central place.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You don't want to create any custom scripts or have any manual processes.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: You want to have a central view of your backup strategy.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So supported services are pretty wide.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: Amazon DynamoDB, Amazon EBS, Amazon EFS, Amazon RDS
- Key Insights: For example, Amazon EC2, EBS, Amazon S3, RDS and all database engines supported, Aurora, DynamoDB, DocumentDB, Amazon Neptune, EFS, FSX, including Lustre, and Windows File Server and probably others.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: AWS Storage Gateway, such as the Volume Gateway.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And it's more that can come over time, but I'm not necessarily going to update this lecture because, well it doesn't really matter.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: The ideas that you get the concept behind database backup and the most important services are shown on the slide.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Data protection and resilience signal.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it supports cross-region backups.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 13:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: Doesn't mean that you cant have your backup pushed to another region for disaster recovery strategy, all in one place.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And also supports cross-account backups, if you are using multiple accounts in your AWS strategy.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: Amazon RDS
- Key Insights: So, it supports point in time recovery for supported services, such as Aurora.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It supports on-demand and scheduled backups.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 17:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: There's tag-based backup policies to make sure you only backup maybe resources that have been tagged with production.
- Hidden/Implicit Meaning: Constraint or limitation signal; Data protection and resilience signal.

Line 18:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: And you can create backup policies known as Backup Plans.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 19:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: You define the frequency, for example every 12 hours or weekly or monthly or whatever cron expression you have, the Backup Window.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 20:
- Concepts: Data Plane Hardening, Resilience and Recovery
- Services: (none explicit)
- Key Insights: If you want to transition the backup itself to Cold Storage.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 21:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: So never, or maybe after some days, some weeks, some months or some years, and the Retention Period of your backup.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Data protection and resilience signal.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So every always or days, weeks, months, and years.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's quite supportive and comprehensive and it supports really most services, so it's a really nice addition to the AWS services.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Resilience and Recovery
- Services: AWS Backup
- Key Insights: So if we have a look at AWS Backup, we create a backup plan, as I said, and then you assign specific AWS resources that are important to you.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Data protection and resilience signal.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So here is a list, but it can get bigger.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Resilience and Recovery
- Services: AWS Backup
- Key Insights: And then once it's done well, automatically your back, your data is going to be backed up to Amazon S3 in an internal bucket that is specific to AWS Backup.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 27:
- Concepts: Resilience and Recovery
- Services: AWS Backup
- Key Insights: And another feature you need to know about for AWS Backup is the Vault Lock.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So you enforce a WORM read, Write Once Read Many Policy.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: That means that all your backup that you store in your Backup Vault cannot be deleted.
- Hidden/Implicit Meaning: Constraint or limitation signal; Data protection and resilience signal.

Line 30:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that, you know for sure, you can prove it that thanks to the Vault Lock Policy, you cannot delete your backups.
- Hidden/Implicit Meaning: Constraint or limitation signal; Data protection and resilience signal.

Line 31:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And it provides an additional layer of defense for your backups against, for example inadvertent or malicious delete operations or updates that shorten or alter the retention period.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 32:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And even the root user itself cannot delete backups when enabled.
- Hidden/Implicit Meaning: Constraint or limitation signal; Data protection and resilience signal.

Line 33:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it gives you strong guarantees on the safety of your backups.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 34:
- Concepts: Resilience and Recovery
- Services: AWS Backup
- Key Insights: Okay, that's all you need to know for the AWS Backup service.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 35:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/219_[SAA_SOA] AWS Backup - Hands On.txt

Line 1:
- Concepts: Resilience and Recovery
- Services: AWS Backup
- Key Insights: Okay, so let's practice using AWS Backup.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 2:
- Concepts: Resilience and Recovery
- Services: AWS Backup
- Key Insights: So I'm going to type AWS Backup into the search bar and open the Backup service.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 3:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: So we are going to create our first backup plan.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 4:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: So I'm going to click on Create Backup plan.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And we have three options.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Either we start with a template or we build a new plan, or we define a plan using JSON.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the simplest for us is to start with a template, and we can have different templates.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: For example, Daily-35day-Retention, Daily-Monthly-1yr-Retention, and so on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So let's go with Daily-Monthly-1yr-Retention, and I'll call it TestPlan.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: Next, we click at Backup rules.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 11:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: And you see we can have many Backup rules in our Backup rules.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So we have two, we have daily Backups and monthly.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 13:
- Concepts: Continuous Compliance, Resilience and Recovery
- Services: (none explicit)
- Key Insights: So if I click on Daily Backup, as we can see, there's a rule name.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 14:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: The Backup vault is wherever the backup is going.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 15:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: So we can use a default one by AWS, or we can create our own new Backup vault if we wanted to.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 16:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: The Backup frequency, the Backup window, so when to start, which is 5:00 AM UTC, start within eight hours, or you can customize it if you want.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 17:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: Whether or not you want to transition to cold storage, never, after some days, weeks, months, or years.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: And the retention period of your backup, for example, this one is retained for five weeks.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Then we can also copy these backups to a specific destination.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: For example, another region for disaster recovery purposes.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Continuous Compliance, Resilience and Recovery
- Services: (none explicit)
- Key Insights: So I'm going to save this backup rule.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 22:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: And for monthly while we get the similar thing, so it's going into the default Backup vault.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It's monthly on day one of each month, and the rest looks the same.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: So we actually transition these ones to cold storage after one month, and then we retain them for one year.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we have these ready, and then I can just scroll down and click on create plan.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So now our test plan is created and we need to assign resources to it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 27:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to click on assign resources, and I will just call it TestAssignments.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so here for IAM role, we're going to use the default role, which is going to create a role for us with the correct permissions, or you can choose your own one, but let's go with default role, easy.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then for resource selection, we have two things we can do.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 30:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Number one, we can include all resource types, or number two, we can include specific resource types.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 31:
- Concepts: Governance/Platform Operational Context
- Services: Amazon DynamoDB
- Key Insights: For example, if you wanted to just have a DynamoDB table, and then you could select the resource you want on there, you could do this.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 32:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Or if you wanted to, you can have all tables.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 33:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's one way of doing it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 34:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Or if you go with all resource types, usually we'd use this as a combination with tags.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 35:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: And so for tags you would say, well, if the key environment is equal to the value production, then do a backup.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 36:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: This would be the kind of use cases for backups, but you're free to do anything you want, of course.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 37:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then when you're done, you click on assign resources.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 38:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: And so just to make it very, very clear, if I went into EC2 and I were to create an EBS volume, and that volume would have, so for example, one gigabytes and then the key would be environment production.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 39:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: Then this would be automatically backed up by my Backup plan because it has the correct tags.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 40:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: So if we look at our volume right now, and we go into tags, as we can see has environment production, which corresponds to the tags that I've set up for my backup plan, okay?
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 41:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this is the assignments right here.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 42:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And we can have multiple assignments as well in here.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 43:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 44:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then that's it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 45:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: The backup plan is going to run automatically, and then the backups are going to happen here in my Backup vaults, okay?
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 46:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: The jobs are the jobs that are going to be scheduled and happening.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 47:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: So we have backup jobs, restore jobs and copy jobs if we wanted to.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 48:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then we can look at the settings.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 49:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: So the settings is around, do you want to have backup policies, cross account monitoring, cross account backups, and so on.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 50:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But we've seen the basics of how backups work.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 51:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so that's it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 52:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I want to show you all this, okay?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 53:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: That's all you need to know.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 54:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to delete everything.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 55:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: So for that, please make sure to delete your EBS volume, or you could wait a day if you wanted to see if the backups work, obviously.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 56:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then when you're done, you take the assignments and you delete it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 57:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: So type the name of the assignment in here, and then for the Daily Backup rules, you can delete them or delete directly the Backup plan.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 58:
- Concepts: Resilience and Recovery
- Services: (none explicit)
- Key Insights: And for this, just enter the name of the backup plan and press delete.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 59:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 60:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: We've seen backups.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 61:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/220_Amazon Data Lifecycle Manager.txt

Line 1:
- Concepts: Resilience and Recovery
- Services: Amazon EBS, Data Lifecycle Manager
- Key Insights: Next, there is a service with an EBS called Amazon Data Lifecycle Manager, which is used to automate the creation, retention and deletion of EBS snapshots and EBS-backed AMIs.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's a way for you to schedule backups, do cross-account snapshot copies automatically or to delete outdated backups using policy.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: Use resource tags to identify the resources you want to back up, for example, EC2 instances or EBS volumes.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so here's an example.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Resilience and Recovery
- Services: Amazon EBS, Data Lifecycle Manager
- Key Insights: We can tag an EBS volume with environment prod to make sure that it automatically gets backed up by Amazon Data Lifecycle Manager.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Or we can tag directly an EC2 instance with this environment prod.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: And then the instance itself will be and its EBS volumes will be backed up.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Resilience and Recovery
- Services: Data Lifecycle Manager
- Key Insights: So it goes into Data Lifecycle Manager and we can create snapshots and AMIs out of it.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: It cannot be used to manage snapshots or AMIs created outside of DLM.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Resilience and Recovery
- Services: Data Lifecycle Manager
- Key Insights: So everything has to be contained within Data Lifecycle Manager and it cannot be used to manage instance-store backed AMIs.
- Hidden/Implicit Meaning: Constraint or limitation signal; Data protection and resilience signal.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/221_[DVA] AWS Nitro Enclaves.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: AWS Nitro Enclaves
- Key Insights: So now let's talk about Nitro Enclaves.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that sometimes in the cloud you wanna process highly sensitive data, and you wanna process it in an isolated compute environment.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So the sensitive data may be, for example, PII data, so personally identifiable information, or healthcare data, financial data, credit card data, whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And historically, if you wanted to create this very isolated compute environment, you would create a new VPC, you would restrict access to it, you would restrict the networking, and so on, and that would be cumbersome.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: AWS Nitro Enclaves
- Key Insights: So instead, what you can use is Nitro Enclaves.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Governance/Platform Operational Context
- Services: AWS Nitro Enclaves
- Key Insights: Nitro Enclaves are virtual machines that are super isolated.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 7:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: They're hardened and they're highly constrained.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 8:
- Concepts: Data Plane Hardening, Workload Platform Security
- Services: (none explicit)
- Key Insights: So it's not a container, it doesn't have persistent storage, it doesn't have interactive access, you cannot SSH into it.
- Hidden/Implicit Meaning: Constraint or limitation signal; Platform workload security signal.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: There's no external networking.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So it's really, really contained.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that this is where you want to do your data processing.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: AWS Nitro Enclaves
- Key Insights: So by creating a Nitro Enclave you're going to reduce the attack surface for very sensitive data processing apps.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: On top of it, you can make sure that, thanks to Cryptographic Attestation, only authorized code can be running in your Enclave, and you would sign the code and then only the sign code can be running in your Enclave.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: And on top of it, you can guarantee, thanks to KMS encryption, that only the Enclaves can access your sensitive data.
- Hidden/Implicit Meaning: Constraint or limitation signal; Data protection and resilience signal.

Line 15:
- Concepts: Governance/Platform Operational Context
- Services: AWS Nitro Enclaves
- Key Insights: So the use cases for Nitro Enclaves is whenever you want to do private key processing, processing credit cards, or secure multi-party computation, and so on.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So this gives you a highest level amount of security on EC2.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: AWS Nitro Enclaves
- Key Insights: Well, you're going to launch a compatible Nitro-based EC2 instance, and you're going to set the 'EnclaveOptions' to 'true' which will allow you to launch from within the EC2 instance, a Nitro Enclave.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Then you use a Nitro CLI to convert your app into an Enclave image file, EIF.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then you use this as an input with the Nitro CLI to create an Enclave on your EC2 instance and it will share the VP, the memory, the CPU, and the kernel with the host but it will be very, very isolated within.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So if you consider EC2 Hosts on AWS that is running on the Nitro Hypervisor.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: AWS Nitro Enclaves
- Key Insights: This is why it's called Nitro Enclave, is because it leverages the Nitro Hypervisor.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Then EC2 instance has separation from your Enclave.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: They can just communicate over a secure local channel, but that's it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And then there will be of course separation from any other instance running on the same host, but you have the guarantee that the Enclave is going to be as secure as I told you before, with a lot of restrictions on it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 26:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 27:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: You just need to know this concept at a high level.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: But I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/07_EC2 Instance Storage/065_EBS Encryption.txt

Line 1:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: All right, finally, let's talk about the last operation, which is how do you encrypt an EBS volume?
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 2:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: So, when you created and encrypted EBS volume, right away you get the following, you get data at rest being encrypted inside your volume, all the data in flight between the instance and the volume is encrypted, all the snapshots will be encrypted, and all the volumes created from the snapshots are encrypted.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 3:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: So, there's encryption all around the place, and the all encryption and decryption mechanism is handled transparently for you.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 4:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So, you have nothing to do.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 5:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: It's all handled by EC2 and EBS behind the scenes.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 6:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: So, encryption overall, something you should use because it has a very, very minimal impact on latency, almost nothing, and it leverages keys from KMS, so AES-256, that's something that you should know.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Data protection and resilience signal.

Line 7:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: And so, when you copy an unencrypted snapshot, then you enable encryption.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 8:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: So, let's talk about a very important thing, which is how do you encrypt an unencrypted EBS volumes.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 9:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: So, to encrypt an unencrypted EBS volumes, which is a very tough thing to say, you create an EBS snapshot of the volume.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 10:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: Then you encrypt the EBS snapshot using the copy function.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 11:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: Then we create a new EBS volume from the snapshots and that volume will also be encrypted, and now we can attach the encrypted volume to the original instance.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 12:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So, let's go have a look at how we do this in the console.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 13:
- Concepts: Data Plane Hardening
- Services: Amazon EBS
- Key Insights: Okay, so let's explore the different options with EBS volumes and encryption.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 14:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: So, let's create a one gigabytes EBS volume, and this one will not be encrypted.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 15:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: So, I will leave this setting unchecked, and, therefore, when I create my volume and have a look at it, if we look at the state of encryption, it says not encrypted.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 16:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: Okay, so what's happening is that if we do take to create a snapshot from this volume, as we can see the encryption setting will be set to not encrypted.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 17:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: So, any snapshots encrypted from a non-encrypted EBS volume, will be not encrypted.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 18:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So, let's go ahead and create this snapshots, and let's go ahead to the snapshots page.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 19:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: And so, this snapshot, as we observe is not encrypted.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 20:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: And so, to create an encrypted snapshot, now, what you have to do is to do action and then create copy snapshot, excuse me, and when you copy the snapshots, you have the option right here to enable encryption into the same destination region.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 21:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So, now, this snapshot is going to be encrypted and you can select the KMS key, right here.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 22:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So, we'll copy this snapshots and we're good.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 23:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Next, what I have to do is from this encrypted snapshots that is now completed I can create a volume.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 24:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: And if I do action, create volume from snapshots, as we can see, we can create a one gigabyte EBS volume.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 25:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: And here encryption is enabled for this volume because my underlying snapshot is encrypted.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 26:
- Concepts: Data Plane Hardening
- Services: (none explicit)
- Key Insights: And, therefore, if I click on create volume, and have a look at my volumes on the left hand side, this one who was created from a snapshots is now available and it says encryption, encrypted.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 27:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: So, that's good.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 28:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: We saw how we can encrypt one EBS volume this way, by going through a snapshot copying and so on.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 29:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: There's a shortcut.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 30:
- Concepts: Data Plane Hardening
- Services: Amazon EBS
- Key Insights: So, if you take your unencrypted snapshot, so this one is not encrypted, so if you take this snapshot and then you do action, create volumes from snapshot, zero shortcuts, you can actually on the fly enable encryption for the EBS volume directly from here, select an EBS key, and you would create an encrypted EBS volume this way through a unencrypted snapshots.
- Hidden/Implicit Meaning: Data protection and resilience signal.

Line 31:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's say you've seen all the options.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 32:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Just to be finished make sure to delete your snapshots by typing deletes and then you would do the exact same thing on your volumes.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 33:
- Concepts: Governance/Platform Operational Context
- Services: Amazon EBS
- Key Insights: Just delete these EBS volumes.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 34:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

Line 35:
- Concepts: Governance/Platform Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes governance/platform security detail.

## Step 2 â€” Consolidation

### 1. Concepts List
- Continuous Compliance
- Data Plane Hardening
- Governance/Platform Operational Context
- Operational Assurance
- Resilience and Recovery
- Workload Platform Security

### 2. Services List
- AWS Backup
- AWS Nitro Enclaves
- Amazon DynamoDB
- Amazon EBS
- Amazon ECS
- Amazon EFS
- Amazon RDS
- Data Lifecycle Manager
- Elastic Load Balancing

### 3. Features List
- backup
- encryption
- guard
- restore
- vault

### 4. Use Cases
- 185_KMS with EBS.txt:3: So the process is we create a snapshot, and then we create a new volume, and this is when the key is going to change.
- 186_EFS Encryption.txt:5: When we're ready, then our applications can switch over from the unencrypted file system to the encrypted file system, and that's the process.
- 207_RDS & Aurora Security.txt:23: So when you have an encrypted database, everything is going to be encrypted, such as your database instances, your snapshot, your logs and your backups.
- 208_[CCP] Elastic Load Balancing Overview.txt:50: For example, if you've chosen the targets to be EC2 instances.
- 208_[CCP] Elastic Load Balancing Overview.txt:57: For example, E2 instances.
- 208_[CCP] Elastic Load Balancing Overview.txt:60: And the use case you need to look at for the exam is to route traffic to firewalls that you manage on EC2 instances, so that you can do, for example, classic firewall or intrusion detection or deep packet inspection.
- 208_[CCP] Elastic Load Balancing Overview.txt:66: And so therefore, the traffic, when it goes to the gateway load balancer, first sends the traffic to these EC2 instances that will analyze the traffic.
- 209_[SAA_DVA_SOA] Network Load Balancer Overview.txt:4: So these work for the network load balancer and therefore when in the exam you see UDP think network load balancer or even TCP.
- 209_[SAA_DVA_SOA] Network Load Balancer Overview.txt:7: So this is very helpful when you need to expose your application with a set of static IPs.
- 209_[SAA_DVA_SOA] Network Load Balancer Overview.txt:9: So when the exam you say, Hey, your application can only be accessed within one, two, or three different IPs, then you need to think about the network load balancer as an option.
- 209_[SAA_DVA_SOA] Network Load Balancer Overview.txt:14: So we can use for example, the TCP traffic or for example, in the backend, the GTP, but still in the front end use TCP.
- 209_[SAA_DVA_SOA] Network Load Balancer Overview.txt:19: But you can also register IP addresses and these IP addresses when they're hard coded and they must be hard coded, they must be private IPs.
- 209_[SAA_DVA_SOA] Network Load Balancer Overview.txt:25: Well, thanks to the network load balancer you would get, for example, the fixed IP addresses, and then thanks to the application load balancer, you can get all the rules that you have around the handling HTTP type of traffic.
- 210_Network Load Balancer Advanced.txt:5: It turns out that when client IP preservation is turned on, the EC2 instances see the request coming from the source IP of the client and not from the source IP of the NLB.
- 210_Network Load Balancer Advanced.txt:6: But when you disable it, then the Network Load Balancer becomes the client IP address for all incoming traffics.
- 210_Network Load Balancer Advanced.txt:7: So when do we have client IP preservation and when don't we have client IP preservation?
- 210_Network Load Balancer Advanced.txt:8: Well, when you have a target by Instance ID or ECS task, client IP preservation will be enabled.
- 210_Network Load Balancer Advanced.txt:9: When you have targets by IP addresses for TCP traffic and TLS, it's going to be disabled by default.
- 210_Network Load Balancer Advanced.txt:10: And then when you have targets by IP address for UDP and TCP_UDP, then it's going to be enabled by default.
- 210_Network Load Balancer Advanced.txt:11: So it's always enabled, except when you have IP address for TCP and TLS.
- 210_Network Load Balancer Advanced.txt:19: Well, for example, if the registered target is not in service, then it could be an issue with the health checks or it could be an issue with security group.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:4: So the idea is that, for example, you have the ALB with two EC2 instances and you have three clients.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:5: If the client one makes a request and it goes to the first EC2 instance, that means that when it does a second request to the load balancer, it will go to the same instance, which is a different behavior where usually the application balancer will do a spread of all the requests across all the EC2 instances.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:10: That means that when the cookie expires, then the client may be redirected to another EC2 instance.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:11: The use case for this is to make sure that the user is connected to the same backend instance in order not to lose his session data, which can take some important information such as the login of the user, for example.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:27: And this will be coming into account when we talk about CloudFront.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:39: Or if you wanted to have your own application cookie, again, they are the same settings, but you need to add an app cookie name, for example, MYCUSTOMCOOKIEAPP.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:48: And now what's going to happen is that when you look at the get request made to the load balancer.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:53: And then in the request cookie, when the browser makes a request to the load balancer, it sends again the cookie it has right here.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:10: So, SSL refers to Secure Sockets Layer and it's used to encrypt transfer connections.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:17: So whenever you go to a website, for example google.com or anything, any other website, and you have a lock or a green lock that means that your traffic is encrypted.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:31: And when you set you an HTTPS listener, you must specify a default certificate.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:41: So it only works when you use the application load balancer and the network load balancer, so the newer generations, or CloudFront.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:43: And it does not work when you use the classic load balancer because it is older generation.
- 213_ELB - SSL Certificates - Advanced.txt:3: In which case, while our users will access our ELB using an encrypted connection for example, HTTPS, but there is going to be a termination because then the ELB will just send HTTP traffic over your prior VPC into your EC2 instances.
- 213_ELB - SSL Certificates - Advanced.txt:15: And so therefore the hostname when indicated will be served by the right target group.
- 213_ELB - SSL Certificates - Advanced.txt:18: What's going to happen is that a client when it connects to your ALB, will indicate the server name, the hostname.
- 213_ELB - SSL Certificates - Advanced.txt:38: That is when your client is connecting to your server and establishing a secure connection.
- 213_ELB - SSL Certificates - Advanced.txt:39: So you can use some predefined security policies for example, the ELBSecurityPolicy-2016-08 and then apply it to your load balancer.
- 213_ELB - SSL Certificates - Advanced.txt:51: And this is when you require Forward Secrecy.
- 214_Network Load Balancer - TLS Listeners.txt:7: The client, for example, talks to the TLS listener on port 443 of your network load balancer, which has TLS termination enabled because it has a certificate.
- 214_Network Load Balancer - TLS Listeners.txt:17: And when you have the setting, you support mutual TLS because well, the NLB will pass the traffic as is and then the mutual TLS authentication can be implemented directly on your EC2 instances as targets.
- 218_[SAA_SOA] AWS Backup.txt:8: For example, Amazon EC2, EBS, Amazon S3, RDS and all database engines supported, Aurora, DynamoDB, DocumentDB, Amazon Neptune, EFS, FSX, including Lustre, and Windows File Server and probably others.
- 218_[SAA_SOA] AWS Backup.txt:19: You define the frequency, for example every 12 hours or weekly or monthly or whatever cron expression you have, the Backup Window.
- 218_[SAA_SOA] AWS Backup.txt:31: And it provides an additional layer of defense for your backups against, for example inadvertent or malicious delete operations or updates that shorten or alter the retention period.
- 218_[SAA_SOA] AWS Backup.txt:32: And even the root user itself cannot delete backups when enabled.
- 219_[SAA_SOA] AWS Backup - Hands On.txt:8: For example, Daily-35day-Retention, Daily-Monthly-1yr-Retention, and so on.
- 219_[SAA_SOA] AWS Backup - Hands On.txt:16: The Backup frequency, the Backup window, so when to start, which is 5:00 AM UTC, start within eight hours, or you can customize it if you want.
- 219_[SAA_SOA] AWS Backup - Hands On.txt:18: And the retention period of your backup, for example, this one is retained for five weeks.
- 219_[SAA_SOA] AWS Backup - Hands On.txt:20: For example, another region for disaster recovery purposes.
- 219_[SAA_SOA] AWS Backup - Hands On.txt:31: For example, if you wanted to just have a DynamoDB table, and then you could select the resource you want on there, you could do this.
- 219_[SAA_SOA] AWS Backup - Hands On.txt:36: This would be the kind of use cases for backups, but you're free to do anything you want, of course.
- 219_[SAA_SOA] AWS Backup - Hands On.txt:37: And then when you're done, you click on assign resources.
- 219_[SAA_SOA] AWS Backup - Hands On.txt:38: And so just to make it very, very clear, if I went into EC2 and I were to create an EBS volume, and that volume would have, so for example, one gigabytes and then the key would be environment production.
- 219_[SAA_SOA] AWS Backup - Hands On.txt:56: And then when you're done, you take the assignments and you delete it.
- 220_Amazon Data Lifecycle Manager.txt:3: Use resource tags to identify the resources you want to back up, for example, EC2 instances or EBS volumes.
- 221_[DVA] AWS Nitro Enclaves.txt:3: So the sensitive data may be, for example, PII data, so personally identifiable information, or healthcare data, financial data, credit card data, whatever you want.
- 221_[DVA] AWS Nitro Enclaves.txt:15: So the use cases for Nitro Enclaves is whenever you want to do private key processing, processing credit cards, or secure multi-party computation, and so on.
- 065_EBS Encryption.txt:2: So, when you created and encrypted EBS volume, right away you get the following, you get data at rest being encrypted inside your volume, all the data in flight between the instance and the volume is encrypted, all the snapshots will be encrypted, and all the volumes created from the snapshots are encrypted.
- 065_EBS Encryption.txt:7: And so, when you copy an unencrypted snapshot, then you enable encryption.
- 065_EBS Encryption.txt:15: So, I will leave this setting unchecked, and, therefore, when I create my volume and have a look at it, if we look at the state of encryption, it says not encrypted.
- 065_EBS Encryption.txt:20: And so, to create an encrypted snapshot, now, what you have to do is to do action and then create copy snapshot, excuse me, and when you copy the snapshots, you have the option right here to enable encryption into the same destination region.

### 5. Constraints / Limitations
- 021_RDS Security.txt:1: So, another quick lecture, but this time on RDS-Security, that you hopefully should know, but maybe there's a thing or two that you'll learn here.
- 021_RDS Security.txt:7: You can copy an un-encrypted RDS snapshot into an encrypted one, this is a very common DevOps feature to do, and CloudTrail cannot be used to track queries made within RDS.
- 185_KMS with EBS.txt:2: So you cannot change the encryption keys used by an EBS volume, but you can create a snapshot and you create a new EBS volume and then you can specify a new KMS key.
- 185_KMS with EBS.txt:14: And on the right-hand side, we're saying, "Hey, we can encrypt, decrypt, re-encrypt using the first data key, the first KMS key in the first account, and the second KMS key in the second account." So it should make sense by now, but I would like to repeat myself just to make things very clear.
- 186_EFS Encryption.txt:3: What you must do instead is that you create a new EFS file system and then you will migrate the files and their permissions using AWS DataSync.
- 207_RDS & Aurora Security.txt:3: And you must define this at launch time of your database.
- 207_RDS & Aurora Security.txt:4: And if your database master is not encrypted, then the read repicas cannot be encrypted as well.
- 207_RDS & Aurora Security.txt:10: This is from a network perspective, and you cannot SSH onto your RDS databases unless you're using RDS custom where you can have access to the OS of your RDS database.
- 207_RDS & Aurora Security.txt:19: So the benefits of this is that your network in and out must be encrypted with SSL.
- 207_RDS & Aurora Security.txt:26: What you can do is that you can restore this as a database cluster, and this will be encrypted and only then you can create a snapshot that is going to be encrypted from this database cluster.
- 207_RDS & Aurora Security.txt:27: So this is a misconception but if you have an unencrypted database cluster, you cannot create an encrypted snapshot out of it.
- 207_RDS & Aurora Security.txt:29: The only way to do that is to go by restoring this snapshot as an encrypted Aurora database cluster and then create a snapshot out of it.
- 208_[CCP] Elastic Load Balancing Overview.txt:27: And the only thing we have to do is to configure a few things for the behavior of that load balancer.
- 208_[CCP] Elastic Load Balancing Overview.txt:31: So the first one is the application load balancer, which is for HTTP or HTTPS-only traffic which is called a Layer 7 type of load balancer because it's HTTP and HTTPS.
- 209_[SAA_DVA_SOA] Network Load Balancer Overview.txt:6: Now, another specificity of the network load balancer is that it only has one static IP per availability zones and you can assign an elastic IP to each AZ.
- 209_[SAA_DVA_SOA] Network Load Balancer Overview.txt:9: So when the exam you say, Hey, your application can only be accessed within one, two, or three different IPs, then you need to think about the network load balancer as an option.
- 209_[SAA_DVA_SOA] Network Load Balancer Overview.txt:16: This is the important part.
- 209_[SAA_DVA_SOA] Network Load Balancer Overview.txt:19: But you can also register IP addresses and these IP addresses when they're hard coded and they must be hard coded, they must be private IPs.
- 210_Network Load Balancer Advanced.txt:12: Now, you can obviously change this thing, but you cannot disable it for targets by Instance ID and by IP address of UDP, TCP_UDP.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:11: The use case for this is to make sure that the user is connected to the same backend instance in order not to lose his session data, which can take some important information such as the login of the user, for example.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:17: And you can include any custom attributes you want required by your application.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:18: The cookie name must be specified individually for each target group, okay?
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:19: And you may not, you must not use the following names, so AWSALB, AWSALBAPPOR or AWSALBTG, because they are already reserved for use by the ELB itself.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:62: And finally, just go back to your target group, and then you edit the attributes itself and you can disable stickiness to come back to a normal behavior, which should be good to go.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:9: So that means the data as it goes through a network is going to be encrypted and only going to be able to be decrypted by the sender and the receiver.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:20: Don't put your login information because it's not secure." So the SSL certificates, they have an an expiration date that you set and they must be renewed regularly to make sure that they're authentic, okay?
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:31: And when you set you an HTTPS listener, you must specify a default certificate.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:33: Now don't worry, I'm going to explain what SNI is in details in the next slide because it is really, really important for you to understand what it means.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:35: Okay, so let's talk about SNI 'cause it is so important.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:36: SNI solves a very important problem, which is how do you load multiple SSL certificates onto one web server in order for that web server to serve multiple websites?
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:41: So it only works when you use the application load balancer and the network load balancer, so the newer generations, or CloudFront.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:57: So classic load balancer is yes, you can only support one SSL certificate.
- 213_ELB - SSL Certificates - Advanced.txt:6: For your HTTPS listener, you must specify a default certificate and you can have as well an optional list of certificates if you wanted to support multiple domains.
- 213_ELB - SSL Certificates - Advanced.txt:22: This only works therefore for the newer generations types of load balancer, such as the Application Load Balancer and the Network Load Balancer.
- 213_ELB - SSL Certificates - Advanced.txt:24: So the CLB supports only one SSL certificate.
- 213_ELB - SSL Certificates - Advanced.txt:41: And for backend connections, then you must use the ELBSecurityPolicy-2016-08.
- 213_ELB - SSL Certificates - Advanced.txt:47: So in this case, you must meet compliance and security standards that require to only use certain TLS protocol version.
- 214_Network Load Balancer - TLS Listeners.txt:4: If you wanna create a TLS listener, you must create a certificate in ACM and then you attach it on your NLB.
- 218_[SAA_SOA] AWS Backup.txt:11: The ideas that you get the concept behind database backup and the most important services are shown on the slide.
- 218_[SAA_SOA] AWS Backup.txt:17: There's tag-based backup policies to make sure you only backup maybe resources that have been tagged with production.
- 218_[SAA_SOA] AWS Backup.txt:24: So if we have a look at AWS Backup, we create a backup plan, as I said, and then you assign specific AWS resources that are important to you.
- 218_[SAA_SOA] AWS Backup.txt:29: That means that all your backup that you store in your Backup Vault cannot be deleted.
- 218_[SAA_SOA] AWS Backup.txt:30: So the idea is that, you know for sure, you can prove it that thanks to the Vault Lock Policy, you cannot delete your backups.
- 218_[SAA_SOA] AWS Backup.txt:32: And even the root user itself cannot delete backups when enabled.
- 220_Amazon Data Lifecycle Manager.txt:9: It cannot be used to manage snapshots or AMIs created outside of DLM.
- 220_Amazon Data Lifecycle Manager.txt:10: So everything has to be contained within Data Lifecycle Manager and it cannot be used to manage instance-store backed AMIs.
- 221_[DVA] AWS Nitro Enclaves.txt:8: So it's not a container, it doesn't have persistent storage, it doesn't have interactive access, you cannot SSH into it.
- 221_[DVA] AWS Nitro Enclaves.txt:13: On top of it, you can make sure that, thanks to Cryptographic Attestation, only authorized code can be running in your Enclave, and you would sign the code and then only the sign code can be running in your Enclave.
- 221_[DVA] AWS Nitro Enclaves.txt:14: And on top of it, you can guarantee, thanks to KMS encryption, that only the Enclaves can access your sensitive data.
- 065_EBS Encryption.txt:6: So, encryption overall, something you should use because it has a very, very minimal impact on latency, almost nothing, and it leverages keys from KMS, so AES-256, that's something that you should know.
- 065_EBS Encryption.txt:8: So, let's talk about a very important thing, which is how do you encrypt an unencrypted EBS volumes.

### 6. Patterns / Architectures
- 208_[CCP] Elastic Load Balancing Overview.txt:48: So the architecture is very simple.
- 208_[CCP] Elastic Load Balancing Overview.txt:55: So this NLB gives you a static IP and the architecture is the exact same as the ALB.
- 208_[CCP] Elastic Load Balancing Overview.txt:61: And the architecture, it is a little bit more complicated.
- 213_ELB - SSL Certificates - Advanced.txt:2: So this is our classic architecture, and the idea is that you could have termination at the ELB level by having an SSL or TLS certificate loaded onto it.

## Step 3 â€” Deep Expansion (Core Governance and Platform Security Concepts)

### AWS Backup
- What it is: Centralized backup policy and recovery orchestration across AWS services.
- Why it exists: Standardizes resilience, retention, and restore processes at scale.
- Internal working: Backup plans assign schedules/retention to tagged resources and vault destinations.
- Architecture: Backup plan -> protected resources -> vaults -> restore workflows.
- Key components: Backup plans, vaults, lifecycle policies, cross-region/account copy, restore points.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Continuous config compliance | AWS Config + conformance packs | Azure Policy + Defender for Cloud | Organization Policy + Config Validator / SCC posture |
| IaC governance and drift control | CloudFormation + Guard + Drift | ARM/Bicep + Policy + What-If | Deployment Manager/Terraform + policy controls |
| Backup orchestration | AWS Backup | Azure Backup | Backup and DR services |
| Confidential compute | Nitro Enclaves | Azure Confidential Computing | Confidential VM / Confidential GKE |
| Container platform security | ECR/ECS/EKS controls | ACR/AKS security stack | Artifact Registry/GKE security stack |
| Serverless/API security | Lambda + API Gateway controls | Functions + API Management controls | Cloud Functions/Run + API Gateway controls |

### Trade-offs and Decision Notes
- AWS offers strong account-native governance primitives with deep service integrations.
- Azure excels in enterprise policy inheritance and integrated posture tooling.
- GCP often favors policy-as-code and centralized analytics-centric governance workflows.
- Multi-cloud governance should standardize control objectives, then map to provider-native enforcement mechanisms.

## Phase-wise Architect-Level Organization

### Phase 1 â€” Foundations
- Control objectives and policy baseline concepts for governance and platform hardening.
- Mapping preventive, detective, and corrective controls across service layers.

### Phase 2 â€” Core Services
- Implement continuous compliance, backup/recovery, and workload-specific hardening controls.
- Integrate IaC and service operation pipelines with security guardrails.

### Phase 3 â€” Advanced Patterns
- Organization-wide compliance aggregation and automated remediation workflows.
- Service-specific security reference architectures for container/serverless/data platforms.

### Phase 4 â€” System Design
- Enterprise platform-security architecture with policy-as-code, auditability, and resilience by default.
- Scaling considerations: policy explosion, exception governance, and control drift management.
- Cost considerations: compliance scan volume, backup storage lifecycle, and platform security operations overhead.

## Deduped Consolidation Snapshot

This additive section keeps original extraction untouched and provides duplicate-clean views for faster review.

### Concepts (Deduped)
- Continuous Compliance
- Data Plane Hardening
- Governance/Platform Operational Context
- Operational Assurance
- Resilience and Recovery
- Workload Platform Security

### Services (Deduped)
- AWS Backup
- AWS Nitro Enclaves
- Amazon DynamoDB
- Amazon EBS
- Amazon ECS
- Amazon EFS
- Amazon RDS
- Data Lifecycle Manager
- Elastic Load Balancing

### Features (Deduped)
- backup
- encryption
- guard
- restore
- vault

### Use Cases (Deduped)
- 185_KMS with EBS.txt:3: So the process is we create a snapshot, and then we create a new volume, and this is when the key is going to change.
- 186_EFS Encryption.txt:5: When we're ready, then our applications can switch over from the unencrypted file system to the encrypted file system, and that's the process.
- 207_RDS & Aurora Security.txt:23: So when you have an encrypted database, everything is going to be encrypted, such as your database instances, your snapshot, your logs and your backups.
- 208_[CCP] Elastic Load Balancing Overview.txt:50: For example, if you've chosen the targets to be EC2 instances.
- 208_[CCP] Elastic Load Balancing Overview.txt:57: For example, E2 instances.
- 208_[CCP] Elastic Load Balancing Overview.txt:60: And the use case you need to look at for the exam is to route traffic to firewalls that you manage on EC2 instances, so that you can do, for example, classic firewall or intrusion detection or deep packet inspection.
- 208_[CCP] Elastic Load Balancing Overview.txt:66: And so therefore, the traffic, when it goes to the gateway load balancer, first sends the traffic to these EC2 instances that will analyze the traffic.
- 209_[SAA_DVA_SOA] Network Load Balancer Overview.txt:4: So these work for the network load balancer and therefore when in the exam you see UDP think network load balancer or even TCP.
- 209_[SAA_DVA_SOA] Network Load Balancer Overview.txt:7: So this is very helpful when you need to expose your application with a set of static IPs.
- 209_[SAA_DVA_SOA] Network Load Balancer Overview.txt:9: So when the exam you say, Hey, your application can only be accessed within one, two, or three different IPs, then you need to think about the network load balancer as an option.
- 209_[SAA_DVA_SOA] Network Load Balancer Overview.txt:14: So we can use for example, the TCP traffic or for example, in the backend, the GTP, but still in the front end use TCP.
- 209_[SAA_DVA_SOA] Network Load Balancer Overview.txt:19: But you can also register IP addresses and these IP addresses when they're hard coded and they must be hard coded, they must be private IPs.
- 209_[SAA_DVA_SOA] Network Load Balancer Overview.txt:25: Well, thanks to the network load balancer you would get, for example, the fixed IP addresses, and then thanks to the application load balancer, you can get all the rules that you have around the handling HTTP type of traffic.
- 210_Network Load Balancer Advanced.txt:5: It turns out that when client IP preservation is turned on, the EC2 instances see the request coming from the source IP of the client and not from the source IP of the NLB.
- 210_Network Load Balancer Advanced.txt:6: But when you disable it, then the Network Load Balancer becomes the client IP address for all incoming traffics.
- 210_Network Load Balancer Advanced.txt:7: So when do we have client IP preservation and when don't we have client IP preservation?
- 210_Network Load Balancer Advanced.txt:8: Well, when you have a target by Instance ID or ECS task, client IP preservation will be enabled.
- 210_Network Load Balancer Advanced.txt:9: When you have targets by IP addresses for TCP traffic and TLS, it's going to be disabled by default.
- 210_Network Load Balancer Advanced.txt:10: And then when you have targets by IP address for UDP and TCP_UDP, then it's going to be enabled by default.
- 210_Network Load Balancer Advanced.txt:11: So it's always enabled, except when you have IP address for TCP and TLS.
- 210_Network Load Balancer Advanced.txt:19: Well, for example, if the registered target is not in service, then it could be an issue with the health checks or it could be an issue with security group.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:4: So the idea is that, for example, you have the ALB with two EC2 instances and you have three clients.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:5: If the client one makes a request and it goes to the first EC2 instance, that means that when it does a second request to the load balancer, it will go to the same instance, which is a different behavior where usually the application balancer will do a spread of all the requests across all the EC2 instances.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:10: That means that when the cookie expires, then the client may be redirected to another EC2 instance.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:11: The use case for this is to make sure that the user is connected to the same backend instance in order not to lose his session data, which can take some important information such as the login of the user, for example.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:27: And this will be coming into account when we talk about CloudFront.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:39: Or if you wanted to have your own application cookie, again, they are the same settings, but you need to add an app cookie name, for example, MYCUSTOMCOOKIEAPP.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:48: And now what's going to happen is that when you look at the get request made to the load balancer.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:53: And then in the request cookie, when the browser makes a request to the load balancer, it sends again the cookie it has right here.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:10: So, SSL refers to Secure Sockets Layer and it's used to encrypt transfer connections.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:17: So whenever you go to a website, for example google.com or anything, any other website, and you have a lock or a green lock that means that your traffic is encrypted.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:31: And when you set you an HTTPS listener, you must specify a default certificate.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:41: So it only works when you use the application load balancer and the network load balancer, so the newer generations, or CloudFront.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:43: And it does not work when you use the classic load balancer because it is older generation.
- 213_ELB - SSL Certificates - Advanced.txt:3: In which case, while our users will access our ELB using an encrypted connection for example, HTTPS, but there is going to be a termination because then the ELB will just send HTTP traffic over your prior VPC into your EC2 instances.
- 213_ELB - SSL Certificates - Advanced.txt:15: And so therefore the hostname when indicated will be served by the right target group.
- 213_ELB - SSL Certificates - Advanced.txt:18: What's going to happen is that a client when it connects to your ALB, will indicate the server name, the hostname.
- 213_ELB - SSL Certificates - Advanced.txt:38: That is when your client is connecting to your server and establishing a secure connection.
- 213_ELB - SSL Certificates - Advanced.txt:39: So you can use some predefined security policies for example, the ELBSecurityPolicy-2016-08 and then apply it to your load balancer.
- 213_ELB - SSL Certificates - Advanced.txt:51: And this is when you require Forward Secrecy.
- 214_Network Load Balancer - TLS Listeners.txt:7: The client, for example, talks to the TLS listener on port 443 of your network load balancer, which has TLS termination enabled because it has a certificate.
- 214_Network Load Balancer - TLS Listeners.txt:17: And when you have the setting, you support mutual TLS because well, the NLB will pass the traffic as is and then the mutual TLS authentication can be implemented directly on your EC2 instances as targets.
- 218_[SAA_SOA] AWS Backup.txt:8: For example, Amazon EC2, EBS, Amazon S3, RDS and all database engines supported, Aurora, DynamoDB, DocumentDB, Amazon Neptune, EFS, FSX, including Lustre, and Windows File Server and probably others.
- 218_[SAA_SOA] AWS Backup.txt:19: You define the frequency, for example every 12 hours or weekly or monthly or whatever cron expression you have, the Backup Window.
- 218_[SAA_SOA] AWS Backup.txt:31: And it provides an additional layer of defense for your backups against, for example inadvertent or malicious delete operations or updates that shorten or alter the retention period.
- 218_[SAA_SOA] AWS Backup.txt:32: And even the root user itself cannot delete backups when enabled.
- 219_[SAA_SOA] AWS Backup - Hands On.txt:8: For example, Daily-35day-Retention, Daily-Monthly-1yr-Retention, and so on.
- 219_[SAA_SOA] AWS Backup - Hands On.txt:16: The Backup frequency, the Backup window, so when to start, which is 5:00 AM UTC, start within eight hours, or you can customize it if you want.
- 219_[SAA_SOA] AWS Backup - Hands On.txt:18: And the retention period of your backup, for example, this one is retained for five weeks.
- 219_[SAA_SOA] AWS Backup - Hands On.txt:20: For example, another region for disaster recovery purposes.
- 219_[SAA_SOA] AWS Backup - Hands On.txt:31: For example, if you wanted to just have a DynamoDB table, and then you could select the resource you want on there, you could do this.
- 219_[SAA_SOA] AWS Backup - Hands On.txt:36: This would be the kind of use cases for backups, but you're free to do anything you want, of course.
- 219_[SAA_SOA] AWS Backup - Hands On.txt:37: And then when you're done, you click on assign resources.
- 219_[SAA_SOA] AWS Backup - Hands On.txt:38: And so just to make it very, very clear, if I went into EC2 and I were to create an EBS volume, and that volume would have, so for example, one gigabytes and then the key would be environment production.
- 219_[SAA_SOA] AWS Backup - Hands On.txt:56: And then when you're done, you take the assignments and you delete it.
- 220_Amazon Data Lifecycle Manager.txt:3: Use resource tags to identify the resources you want to back up, for example, EC2 instances or EBS volumes.
- 221_[DVA] AWS Nitro Enclaves.txt:3: So the sensitive data may be, for example, PII data, so personally identifiable information, or healthcare data, financial data, credit card data, whatever you want.
- 221_[DVA] AWS Nitro Enclaves.txt:15: So the use cases for Nitro Enclaves is whenever you want to do private key processing, processing credit cards, or secure multi-party computation, and so on.
- 065_EBS Encryption.txt:2: So, when you created and encrypted EBS volume, right away you get the following, you get data at rest being encrypted inside your volume, all the data in flight between the instance and the volume is encrypted, all the snapshots will be encrypted, and all the volumes created from the snapshots are encrypted.
- 065_EBS Encryption.txt:7: And so, when you copy an unencrypted snapshot, then you enable encryption.
- 065_EBS Encryption.txt:15: So, I will leave this setting unchecked, and, therefore, when I create my volume and have a look at it, if we look at the state of encryption, it says not encrypted.
- 065_EBS Encryption.txt:20: And so, to create an encrypted snapshot, now, what you have to do is to do action and then create copy snapshot, excuse me, and when you copy the snapshots, you have the option right here to enable encryption into the same destination region.

### Constraints / Limitations (Deduped)
- 021_RDS Security.txt:1: So, another quick lecture, but this time on RDS-Security, that you hopefully should know, but maybe there's a thing or two that you'll learn here.
- 021_RDS Security.txt:7: You can copy an un-encrypted RDS snapshot into an encrypted one, this is a very common DevOps feature to do, and CloudTrail cannot be used to track queries made within RDS.
- 185_KMS with EBS.txt:2: So you cannot change the encryption keys used by an EBS volume, but you can create a snapshot and you create a new EBS volume and then you can specify a new KMS key.
- 185_KMS with EBS.txt:14: And on the right-hand side, we're saying, "Hey, we can encrypt, decrypt, re-encrypt using the first data key, the first KMS key in the first account, and the second KMS key in the second account." So it should make sense by now, but I would like to repeat myself just to make things very clear.
- 186_EFS Encryption.txt:3: What you must do instead is that you create a new EFS file system and then you will migrate the files and their permissions using AWS DataSync.
- 207_RDS & Aurora Security.txt:3: And you must define this at launch time of your database.
- 207_RDS & Aurora Security.txt:4: And if your database master is not encrypted, then the read repicas cannot be encrypted as well.
- 207_RDS & Aurora Security.txt:10: This is from a network perspective, and you cannot SSH onto your RDS databases unless you're using RDS custom where you can have access to the OS of your RDS database.
- 207_RDS & Aurora Security.txt:19: So the benefits of this is that your network in and out must be encrypted with SSL.
- 207_RDS & Aurora Security.txt:26: What you can do is that you can restore this as a database cluster, and this will be encrypted and only then you can create a snapshot that is going to be encrypted from this database cluster.
- 207_RDS & Aurora Security.txt:27: So this is a misconception but if you have an unencrypted database cluster, you cannot create an encrypted snapshot out of it.
- 207_RDS & Aurora Security.txt:29: The only way to do that is to go by restoring this snapshot as an encrypted Aurora database cluster and then create a snapshot out of it.
- 208_[CCP] Elastic Load Balancing Overview.txt:27: And the only thing we have to do is to configure a few things for the behavior of that load balancer.
- 208_[CCP] Elastic Load Balancing Overview.txt:31: So the first one is the application load balancer, which is for HTTP or HTTPS-only traffic which is called a Layer 7 type of load balancer because it's HTTP and HTTPS.
- 209_[SAA_DVA_SOA] Network Load Balancer Overview.txt:6: Now, another specificity of the network load balancer is that it only has one static IP per availability zones and you can assign an elastic IP to each AZ.
- 209_[SAA_DVA_SOA] Network Load Balancer Overview.txt:9: So when the exam you say, Hey, your application can only be accessed within one, two, or three different IPs, then you need to think about the network load balancer as an option.
- 209_[SAA_DVA_SOA] Network Load Balancer Overview.txt:16: This is the important part.
- 209_[SAA_DVA_SOA] Network Load Balancer Overview.txt:19: But you can also register IP addresses and these IP addresses when they're hard coded and they must be hard coded, they must be private IPs.
- 210_Network Load Balancer Advanced.txt:12: Now, you can obviously change this thing, but you cannot disable it for targets by Instance ID and by IP address of UDP, TCP_UDP.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:11: The use case for this is to make sure that the user is connected to the same backend instance in order not to lose his session data, which can take some important information such as the login of the user, for example.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:17: And you can include any custom attributes you want required by your application.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:18: The cookie name must be specified individually for each target group, okay?
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:19: And you may not, you must not use the following names, so AWSALB, AWSALBAPPOR or AWSALBTG, because they are already reserved for use by the ELB itself.
- 211_[SAA_DVA_SOA] ELB Sticky Sessions.txt:62: And finally, just go back to your target group, and then you edit the attributes itself and you can disable stickiness to come back to a normal behavior, which should be good to go.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:9: So that means the data as it goes through a network is going to be encrypted and only going to be able to be decrypted by the sender and the receiver.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:20: Don't put your login information because it's not secure." So the SSL certificates, they have an an expiration date that you set and they must be renewed regularly to make sure that they're authentic, okay?
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:31: And when you set you an HTTPS listener, you must specify a default certificate.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:33: Now don't worry, I'm going to explain what SNI is in details in the next slide because it is really, really important for you to understand what it means.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:35: Okay, so let's talk about SNI 'cause it is so important.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:36: SNI solves a very important problem, which is how do you load multiple SSL certificates onto one web server in order for that web server to serve multiple websites?
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:41: So it only works when you use the application load balancer and the network load balancer, so the newer generations, or CloudFront.
- 212_[SAA_DVA_SOA] ELB SSL Certificates.txt:57: So classic load balancer is yes, you can only support one SSL certificate.
- 213_ELB - SSL Certificates - Advanced.txt:6: For your HTTPS listener, you must specify a default certificate and you can have as well an optional list of certificates if you wanted to support multiple domains.
- 213_ELB - SSL Certificates - Advanced.txt:22: This only works therefore for the newer generations types of load balancer, such as the Application Load Balancer and the Network Load Balancer.
- 213_ELB - SSL Certificates - Advanced.txt:24: So the CLB supports only one SSL certificate.
- 213_ELB - SSL Certificates - Advanced.txt:41: And for backend connections, then you must use the ELBSecurityPolicy-2016-08.
- 213_ELB - SSL Certificates - Advanced.txt:47: So in this case, you must meet compliance and security standards that require to only use certain TLS protocol version.
- 214_Network Load Balancer - TLS Listeners.txt:4: If you wanna create a TLS listener, you must create a certificate in ACM and then you attach it on your NLB.
- 218_[SAA_SOA] AWS Backup.txt:11: The ideas that you get the concept behind database backup and the most important services are shown on the slide.
- 218_[SAA_SOA] AWS Backup.txt:17: There's tag-based backup policies to make sure you only backup maybe resources that have been tagged with production.
- 218_[SAA_SOA] AWS Backup.txt:24: So if we have a look at AWS Backup, we create a backup plan, as I said, and then you assign specific AWS resources that are important to you.
- 218_[SAA_SOA] AWS Backup.txt:29: That means that all your backup that you store in your Backup Vault cannot be deleted.
- 218_[SAA_SOA] AWS Backup.txt:30: So the idea is that, you know for sure, you can prove it that thanks to the Vault Lock Policy, you cannot delete your backups.
- 218_[SAA_SOA] AWS Backup.txt:32: And even the root user itself cannot delete backups when enabled.
- 220_Amazon Data Lifecycle Manager.txt:9: It cannot be used to manage snapshots or AMIs created outside of DLM.
- 220_Amazon Data Lifecycle Manager.txt:10: So everything has to be contained within Data Lifecycle Manager and it cannot be used to manage instance-store backed AMIs.
- 221_[DVA] AWS Nitro Enclaves.txt:8: So it's not a container, it doesn't have persistent storage, it doesn't have interactive access, you cannot SSH into it.
- 221_[DVA] AWS Nitro Enclaves.txt:13: On top of it, you can make sure that, thanks to Cryptographic Attestation, only authorized code can be running in your Enclave, and you would sign the code and then only the sign code can be running in your Enclave.
- 221_[DVA] AWS Nitro Enclaves.txt:14: And on top of it, you can guarantee, thanks to KMS encryption, that only the Enclaves can access your sensitive data.
- 065_EBS Encryption.txt:6: So, encryption overall, something you should use because it has a very, very minimal impact on latency, almost nothing, and it leverages keys from KMS, so AES-256, that's something that you should know.
- 065_EBS Encryption.txt:8: So, let's talk about a very important thing, which is how do you encrypt an unencrypted EBS volumes.

### Patterns / Architectures (Deduped)
- 208_[CCP] Elastic Load Balancing Overview.txt:48: So the architecture is very simple.
- 208_[CCP] Elastic Load Balancing Overview.txt:55: So this NLB gives you a static IP and the architecture is the exact same as the ALB.
- 208_[CCP] Elastic Load Balancing Overview.txt:61: And the architecture, it is a little bit more complicated.
- 213_ELB - SSL Certificates - Advanced.txt:2: So this is our classic architecture, and the idea is that you could have termination at the ELB level by having an SSL or TLS certificate loaded onto it.

## Deduped Consolidation Snapshot End

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: And you must define this at launch time of your database.
- Signal 2: Key Insights: So you cannot change the encryption keys used by an EBS volume, but you can create a snapshot and you create a new EBS volume and then you can specify a new KMS key.
- Signal 3: Key Insights: So the process is we create a snapshot, and then we create a new volume, and this is when the key is going to change.
- Signal 4: Key Insights: So you'll have this one, and we're saying, "Hey, we allow to create grants for both these keys, for AWS resources." That's the left part of this slide.
- Signal 5: Key Insights: You go to your EC2 Console, Settings and then you have EBS encryption.
- Signal 6: Key Insights: What you must do instead is that you create a new EFS file system and then you will migrate the files and their permissions using AWS DataSync.
- Signal 7: Key Insights: So to summarize, we have an unencrypted EFS file system and then we create an encrypted EFS file system that at first is empty, and then we'll use AWS DataSync to migrate from one to the other.
- Signal 8: Key Insights: And you must define this at launch time of your database.
- Signal 9: Key Insights: What you can do is that you can restore this as a database cluster, and this will be encrypted and only then you can create a snapshot that is going to be encrypted from this database cluster.
- Signal 10: Key Insights: So this is a misconception but if you have an unencrypted database cluster, you cannot create an encrypted snapshot out of it.

### Service-Specific Lab Paths
### Activity 1: IAM Lab for EBS/EFS/RDS/ELB storage and data-path security, backups, enclaves, lifecycle controls
- AWS console path: AWS Console -> IAM
- Azure equivalent: Microsoft Entra ID + RBAC
- GCP equivalent: Cloud IAM
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> IAM.
3. Build: Create a test user or role with least privilege.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Sign in or simulate policy permissions.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete the test user/role and inline policies.

### Activity 2: Amazon S3 Lab for EBS/EFS/RDS/ELB storage and data-path security, backups, enclaves, lifecycle controls
- AWS console path: AWS Console -> S3 -> Buckets
- Azure equivalent: Azure Blob Storage
- GCP equivalent: Cloud Storage
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> S3 -> Buckets.
3. Build: Create a bucket and upload one sample file.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Open object metadata and test download.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete objects and delete bucket.

### Activity 3: Amazon VPC Lab for EBS/EFS/RDS/ELB storage and data-path security, backups, enclaves, lifecycle controls
- AWS console path: AWS Console -> VPC
- Azure equivalent: Azure Virtual Network
- GCP equivalent: VPC Network
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> VPC.
3. Build: Create a VPC with one public and one private subnet.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Validate route table associations.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete test subnets and VPC components.

### Activity 4: Amazon CloudWatch Lab for EBS/EFS/RDS/ELB storage and data-path security, backups, enclaves, lifecycle controls
- AWS console path: AWS Console -> CloudWatch
- Azure equivalent: Azure Monitor
- GCP equivalent: Cloud Monitoring
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> CloudWatch.
3. Build: Create one dashboard and one alarm.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Trigger alarm condition and inspect alarm history.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete dashboard and alarm.

### Quick Troubleshooting
- Access denied: verify role permissions or ask admin for least-privilege lab policy.
- Resource limit reached: pick another region or request quota increase.
- Unexpected charges: stop/delete resources and review cost explorer immediately.

## Cross-Cloud Thinking Mode

Use this lens to study EBS/EFS/RDS/ELB storage and data-path security, backups, enclaves, lifecycle controls in a cloud-agnostic way: focus on capability first, provider name second.

### Capability Mapping (AWS / Azure / GCP)
| Capability | AWS | Azure | GCP |
|---|---|---|---|
| Identity | IAM / IAM Identity Center | Microsoft Entra ID + RBAC | Cloud IAM |
| Object Storage | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Virtual Machines | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Serverless Functions | AWS Lambda | Azure Functions | Cloud Functions / Cloud Run |
| Containers | Amazon EKS / ECS | AKS | GKE / Cloud Run |
| Databases | RDS / DynamoDB / ElastiCache | Azure SQL / Cosmos DB / Azure Cache | Cloud SQL / Firestore / Memorystore |
| Networking | VPC / Route 53 / ELB | VNet / DNS / Load Balancer | VPC / Cloud DNS / Cloud Load Balancing |
| Observability | CloudWatch / X-Ray / CloudTrail | Azure Monitor / App Insights / Activity Log | Cloud Monitoring / Cloud Logging / Cloud Trace |

### Same Lab Across 3 Clouds
| Lab Theme | AWS | Azure | GCP |
|---|---|---|---|
| IAM | IAM | Microsoft Entra ID + RBAC | Cloud IAM |
| Amazon S3 | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Amazon VPC | Amazon VPC | Azure Virtual Network | VPC Network |
| Amazon CloudWatch | Amazon CloudWatch | Azure Monitor | Cloud Monitoring |

### How To Think Cross-Cloud
1. Start with workload requirement: latency, throughput, security, and compliance.
2. Map requirement to capability family (identity, network, compute, data, observability).
3. Compare service behavior, not branding: limits, scaling model, and failure modes.
4. Keep a portable architecture note: what is generic vs provider-specific.
5. Test same mini-lab in at least 2 clouds and write down differences.

### Child-Friendly Practice Challenge
- Pick one simple task (for example: upload one file, run one function, read one metric).
- Do the same task in AWS, Azure, and GCP.
- Fill this mini template:
  - What was the same?
  - What had a different name?
  - What felt easier/harder and why?

<!-- END PRACTICE_ENHANCEMENTS -->

