# 02_Backup_Restore_Recovery.md

## Scope
- Topic: AWS Backup, restore workflows, retention, and recoverability operations
- Files processed: 5
- Extracted non-empty transcript lines: 227
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Disaster Recovery Knowledge Base
- Cross-domain referrals: 0

## Real Material - Architect Learning Build (Disaster Recovery: Backup Restore Recovery)

This section is the study-first architecture guide for aws backup, restore workflows, retention, and recoverability operations.

### Phase 1 - Foundations

#### Module: Backup Restore Recovery Mental Model
- Use backup restore recovery decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: Backup Restore Recovery Mental Model
- Primary transcript files:
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/218_[SAA_SOA] AWS Backup.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/28_Disaster Recovery & Migrations/359_AWS Backup.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/14_Migration/148_AWS Backup.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/219_[SAA_SOA] AWS Backup - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/28_Disaster Recovery & Migrations/360_AWS Backup - Hands On.txt
- Top concept clusters from transcript metadata:
- Backup and Restore Operations
- Service-Level Recovery Design
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 5
- Module-selected transcript files: 5
- Key insight candidates scanned (topic): 227
- Key insights inside selected files: 24
- Unique concept tags in selected files: 2

##### Transcript-Enriched Learning Notes
- And another feature you need to know about for AWS Backup is the Vault Lock.
- And then once it's done well, automatically your back, your data is going to be backed up to Amazon S3 in an internal bucket that is specific to AWS Backup.
- So if we have a look at AWS Backup, we create a backup plan, as I said, and then you assign specific AWS resources that are important to you.
- So AWS Backup is a fully managed service and it allows you to centrally manage and automate backups across all your AWS services.
- So the idea is that, you know for sure, you can prove it that thanks to the Vault Lock Policy, you cannot delete your backups.
- The backup plan is going to run automatically, and then the backups are going to happen here in my Backup vaults, okay?
- So we can use a default one by AWS, or we can create our own new Backup vault if we wanted to.
- And for monthly while we get the similar thing, so it's going into the default Backup vault.
- That means that all your backup that you store in your Backup Vault cannot be deleted.

##### Polished Architect Notes
- Transcript signals that and another feature you need to know about for AWS Backup is the Vault Lock.
- Transcript signals that and then once it's done well, automatically your back, your data is going to be backed up to Amazon S3 in an internal bucket that is specific to AWS Backup.
- Transcript signals that so if we have a look at AWS Backup, we create a backup plan, as I said, and then you assign specific AWS resources that are important to you.
- Transcript signals that so AWS Backup is a fully managed service and it allows you to centrally manage and automate backups across all your AWS services.
- Transcript signals that so the idea is that, you know for sure, you can prove it that thanks to the Vault Lock Policy, you cannot delete your backups.
- Transcript signals that the backup plan is going to run automatically, and then the backups are going to happen here in my Backup vaults, okay?
- Transcript signals that so we can use a default one by AWS, or we can create our own new Backup vault if we wanted to.
- Transcript signals that and for monthly while we get the similar thing, so it's going into the default Backup vault.
- Transcript signals that that means that all your backup that you store in your Backup Vault cannot be deleted.

##### Architect Synthesis (Transcript-Derived)
- Treat Backup and Restore Operations as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Service-Level Recovery Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: and another feature you need to know about for AWS Backup is the Vault Lock.
- Design implication: and then once it's done well, automatically your back, your data is going to be backed up to Amazon S3 in an internal bucket that is specific to AWS Backup.
- Design implication: so if we have a look at AWS Backup, we create a backup plan, as I said, and then you assign specific AWS resources that are important to you.
- Design implication: so AWS Backup is a fully managed service and it allows you to centrally manage and automate backups across all your AWS services.
- Design implication: so the idea is that, you know for sure, you can prove it that thanks to the Vault Lock Policy, you cannot delete your backups.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/218_[SAA_SOA] AWS Backup.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/28_Disaster Recovery & Migrations/359_AWS Backup.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/14_Migration/148_AWS Backup.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/219_[SAA_SOA] AWS Backup - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/28_Disaster Recovery & Migrations/360_AWS Backup - Hands On.txt
- Top concept clusters from transcript metadata:
- Backup and Restore Operations
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 5
- Module-selected transcript files: 5
- Key insight candidates scanned (topic): 227
- Key insights inside selected files: 24
- Unique concept tags in selected files: 1

##### Transcript-Enriched Learning Notes
- And it provides an additional layer of defense for your backups against, for example inadvertent or malicious delete operations or updates that shorten or alter the retention period.
- So the idea is that, you know for sure, you can prove it that thanks to the Vault Lock Policy, you cannot delete your backups.
- The backup plan is going to run automatically, and then the backups are going to happen here in my Backup vaults, okay?
- So never, or maybe after some days, some weeks, some months or some years, and the Retention Period of your backup.
- So we can use a default one by AWS, or we can create our own new Backup vault if we wanted to.
- And for monthly while we get the similar thing, so it's going into the default Backup vault.
- And the retention period of your backup, for example, this one is retained for five weeks.
- That means that all your backup that you store in your Backup Vault cannot be deleted.
- And another feature you need to know about for AWS Backup is the Vault Lock.
- For example, Daily-35day-Retention, Daily-Monthly-1yr-Retention, and so on.

##### Polished Architect Notes
- Transcript signals that and it provides an additional layer of defense for your backups against, for example inadvertent or malicious delete operations or updates that shorten or alter the retention period.
- Transcript signals that so the idea is that, you know for sure, you can prove it that thanks to the Vault Lock Policy, you cannot delete your backups.
- Transcript signals that the backup plan is going to run automatically, and then the backups are going to happen here in my Backup vaults, okay?
- Transcript signals that so never, or maybe after some days, some weeks, some months or some years, and the Retention Period of your backup.
- Transcript signals that so we can use a default one by AWS, or we can create our own new Backup vault if we wanted to.
- Transcript signals that and for monthly while we get the similar thing, so it's going into the default Backup vault.
- Transcript signals that and the retention period of your backup, for example, this one is retained for five weeks.
- Transcript signals that that means that all your backup that you store in your Backup Vault cannot be deleted.
- Transcript signals that and another feature you need to know about for AWS Backup is the Vault Lock.
- Transcript signals that for example, Daily-35day-Retention, Daily-Monthly-1yr-Retention, and so on.

##### Architect Synthesis (Transcript-Derived)
- Treat Backup and Restore Operations as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: and it provides an additional layer of defense for your backups against, for example inadvertent or malicious delete operations or updates that shorten or alter the retention period.
- Design implication: so the idea is that, you know for sure, you can prove it that thanks to the Vault Lock Policy, you cannot delete your backups.
- Design implication: the backup plan is going to run automatically, and then the backups are going to happen here in my Backup vaults, okay?
- Design implication: so never, or maybe after some days, some weeks, some months or some years, and the Retention Period of your backup.
- Design implication: so we can use a default one by AWS, or we can create our own new Backup vault if we wanted to.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/218_[SAA_SOA] AWS Backup.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/28_Disaster Recovery & Migrations/359_AWS Backup.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/14_Migration/148_AWS Backup.txt
- outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/219_[SAA_SOA] AWS Backup - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/28_Disaster Recovery & Migrations/360_AWS Backup - Hands On.txt
- Top concept clusters from transcript metadata:
- Backup and Restore Operations
- Service-Level Recovery Design
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 5
- Module-selected transcript files: 5
- Key insight candidates scanned (topic): 227
- Key insights inside selected files: 24
- Unique concept tags in selected files: 2

##### Transcript-Enriched Learning Notes
- And another feature you need to know about for AWS Backup is the Vault Lock.
- And it provides an additional layer of defense for your backups against, for example inadvertent or malicious delete operations or updates that shorten or alter the retention period.
- And then once it's done well, automatically your back, your data is going to be backed up to Amazon S3 in an internal bucket that is specific to AWS Backup.
- So if we have a look at AWS Backup, we create a backup plan, as I said, and then you assign specific AWS resources that are important to you.
- So AWS Backup is a fully managed service and it allows you to centrally manage and automate backups across all your AWS services.
- So the idea is that, you know for sure, you can prove it that thanks to the Vault Lock Policy, you cannot delete your backups.
- The backup plan is going to run automatically, and then the backups are going to happen here in my Backup vaults, okay?
- So never, or maybe after some days, some weeks, some months or some years, and the Retention Period of your backup.
- So we can use a default one by AWS, or we can create our own new Backup vault if we wanted to.

##### Polished Architect Notes
- Transcript signals that and another feature you need to know about for AWS Backup is the Vault Lock.
- Transcript signals that and it provides an additional layer of defense for your backups against, for example inadvertent or malicious delete operations or updates that shorten or alter the retention period.
- Transcript signals that and then once it's done well, automatically your back, your data is going to be backed up to Amazon S3 in an internal bucket that is specific to AWS Backup.
- Transcript signals that so if we have a look at AWS Backup, we create a backup plan, as I said, and then you assign specific AWS resources that are important to you.
- Transcript signals that so AWS Backup is a fully managed service and it allows you to centrally manage and automate backups across all your AWS services.
- Transcript signals that so the idea is that, you know for sure, you can prove it that thanks to the Vault Lock Policy, you cannot delete your backups.
- Transcript signals that the backup plan is going to run automatically, and then the backups are going to happen here in my Backup vaults, okay?
- Transcript signals that so never, or maybe after some days, some weeks, some months or some years, and the Retention Period of your backup.
- Transcript signals that so we can use a default one by AWS, or we can create our own new Backup vault if we wanted to.

##### Architect Synthesis (Transcript-Derived)
- Treat Backup and Restore Operations as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Service-Level Recovery Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: and another feature you need to know about for AWS Backup is the Vault Lock.
- Design implication: and it provides an additional layer of defense for your backups against, for example inadvertent or malicious delete operations or updates that shorten or alter the retention period.
- Design implication: and then once it's done well, automatically your back, your data is going to be backed up to Amazon S3 in an internal bucket that is specific to AWS Backup.
- Design implication: so if we have a look at AWS Backup, we create a backup plan, as I said, and then you assign specific AWS resources that are important to you.
- Design implication: so AWS Backup is a fully managed service and it allows you to centrally manage and automate backups across all your AWS services.

### Phase 2 - Core Services
- AWS Backup should be understood in terms of request path, control plane, and operational boundary.
- Amazon Aurora should be understood in terms of request path, control plane, and operational boundary.
- Amazon DocumentDB should be understood in terms of request path, control plane, and operational boundary.
- Amazon DynamoDB should be understood in terms of request path, control plane, and operational boundary.
- Amazon EBS should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: Backup and Restore Operations becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Cutover and Recovery Execution becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Disaster Recovery Operational Context becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Recovery Objectives becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Resilience Topologies becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design backup restore recovery with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when backup restore recovery decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: So if we have a look at AWS Backup, we create a backup plan, as I said, and then you assign specific AWS resources that are important to you.
- Signal 2: So we can use a default one by AWS, or we can create our own new Backup vault if we wanted to.
- Signal 3: Transcript signals that so if we have a look at AWS Backup, we create a backup plan, as I said, and then you assign specific AWS resources that are important to you.
- Signal 4: Transcript signals that so we can use a default one by AWS, or we can create our own new Backup vault if we wanted to.
- Signal 5: Design implication: so if we have a look at AWS Backup, we create a backup plan, as I said, and then you assign specific AWS resources that are important to you.
- Signal 6: Design implication: so we can use a default one by AWS, or we can create our own new Backup vault if we wanted to.
- Signal 7: Key Insights: You don't want to create any custom scripts or have any manual processes.
- Signal 8: Key Insights: And you can create backup policies known as Backup Plans.
- Signal 9: Key Insights: So if we have a look at AWS Backup, we create a backup plan, as I said, and then you assign specific AWS resources that are important to you.
- Signal 10: Key Insights: So we are going to create our first backup plan.

### Service-Specific Lab Paths
### Activity 1: Amazon S3 Lab for AWS Backup, restore workflows, retention, and recoverability operations
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

### Activity 2: Amazon RDS Lab for AWS Backup, restore workflows, retention, and recoverability operations
- AWS console path: AWS Console -> RDS -> Databases
- Azure equivalent: Azure SQL Database
- GCP equivalent: Cloud SQL
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> RDS -> Databases.
3. Build: Create a small dev database instance.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Check endpoint, connect test, and run one query.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete DB instance and snapshots not needed.

### Activity 3: AWS MGN Lab for AWS Backup, restore workflows, retention, and recoverability operations
- AWS console path: AWS Console -> Application Migration Service
- Azure equivalent: Azure Migrate
- GCP equivalent: Migrate to Virtual Machines
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> Application Migration Service.
3. Build: Register source server and configure launch settings.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Run test launch and verify application health.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Stop replication and remove source configuration.

### Activity 4: AWS DMS Lab for AWS Backup, restore workflows, retention, and recoverability operations
- AWS console path: AWS Console -> DMS
- Azure equivalent: Azure Database Migration Service
- GCP equivalent: Database Migration Service
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> DMS.
3. Build: Create source and target endpoints and one migration task.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Validate task status and replicated rows.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete migration task and endpoints.

### Quick Troubleshooting
- Access denied: verify role permissions or ask admin for least-privilege lab policy.
- Resource limit reached: pick another region or request quota increase.
- Unexpected charges: stop/delete resources and review cost explorer immediately.

## Cross-Cloud Thinking Mode

Use this lens to study AWS Backup, restore workflows, retention, and recoverability operations in a cloud-agnostic way: focus on capability first, provider name second.

### Capability Mapping (AWS / Azure / GCP)
| Capability | AWS | Azure | GCP |
|---|---|---|---|
| Identity | IAM / IAM Identity Center | Microsoft Entra ID + RBAC | Cloud IAM |
| Object Storage | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Virtual Machines | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Containers | Amazon EKS / ECS | AKS | GKE / Cloud Run |
| Databases | RDS / DynamoDB / ElastiCache | Azure SQL / Cosmos DB / Azure Cache | Cloud SQL / Firestore / Memorystore |
| Networking | VPC / Route 53 / ELB | VNet / DNS / Load Balancer | VPC / Cloud DNS / Cloud Load Balancing |
| Observability | CloudWatch / X-Ray / CloudTrail | Azure Monitor / App Insights / Activity Log | Cloud Monitoring / Cloud Logging / Cloud Trace |
| AI/ML | SageMaker / Bedrock / AI services | Azure ML / Azure OpenAI / AI services | Vertex AI / GenAI services |

### Same Lab Across 3 Clouds
| Lab Theme | AWS | Azure | GCP |
|---|---|---|---|
| Amazon S3 | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Amazon RDS | Amazon RDS | Azure SQL Database | Cloud SQL |
| AWS MGN | AWS MGN | Azure Migrate | Migrate to Virtual Machines |
| AWS DMS | AWS DMS | Azure Database Migration Service | Database Migration Service |

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

## Cross-Domain Referrals

- No secondary referral sources were required for this topic.

## Step 1 - Line-by-Line Extraction

Every non-empty line from every primary source transcript is preserved below with extraction fields.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/218_[SAA_SOA] AWS Backup.txt

Line 1:
- Concepts: Backup and Restore Operations
- Services: AWS Backup
- Key Insights: Hello, and welcome to this lecture on AWS Backup.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 2:
- Concepts: Backup and Restore Operations, Service-Level Recovery Design
- Services: AWS Backup
- Key Insights: So AWS Backup is a fully managed service and it allows you to centrally manage and automate backups across all your AWS services.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 3:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And the list is getting bigger and bigger by the day.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 4:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that you want to have a central place.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 5:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: You don't want to create any custom scripts or have any manual processes.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 6:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: You want to have a central view of your backup strategy.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 7:
- Concepts: Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: So supported services are pretty wide.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 8:
- Concepts: Service-Level Recovery Design
- Services: Amazon Aurora, Amazon DocumentDB, Amazon DynamoDB, Amazon EBS, Amazon EC2, Amazon EFS, Amazon FSx, Amazon Neptune, Amazon RDS, Amazon S3
- Key Insights: For example, Amazon EC2, EBS, Amazon S3, RDS and all database engines supported, Aurora, DynamoDB, DocumentDB, Amazon Neptune, EFS, FSX, including Lustre, and Windows File Server and probably others.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 9:
- Concepts: Service-Level Recovery Design
- Services: AWS Storage Gateway
- Key Insights: AWS Storage Gateway, such as the Volume Gateway.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 10:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And it's more that can come over time, but I'm not necessarily going to update this lecture because, well it doesn't really matter.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 11:
- Concepts: Backup and Restore Operations, Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: The ideas that you get the concept behind database backup and the most important services are shown on the slide.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 12:
- Concepts: Backup and Restore Operations, Resilience Topologies
- Services: (none explicit)
- Key Insights: So it supports cross-region backups.
- Hidden/Implicit Meaning: Restore and recoverability signal; Resilience topology signal.

Line 13:
- Concepts: Backup and Restore Operations, Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: Doesn't mean that you cant have your backup pushed to another region for disaster recovery strategy, all in one place.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 14:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: And also supports cross-account backups, if you are using multiple accounts in your AWS strategy.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 15:
- Concepts: Cutover and Recovery Execution, Recovery Objectives, Service-Level Recovery Design
- Services: Amazon Aurora
- Key Insights: So, it supports point in time recovery for supported services, such as Aurora.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 16:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: It supports on-demand and scheduled backups.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 17:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: There's tag-based backup policies to make sure you only backup maybe resources that have been tagged with production.
- Hidden/Implicit Meaning: Constraint or limitation signal; Restore and recoverability signal.

Line 18:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: And you can create backup policies known as Backup Plans.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 19:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: You define the frequency, for example every 12 hours or weekly or monthly or whatever cron expression you have, the Backup Window.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 20:
- Concepts: Backup and Restore Operations, Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: If you want to transition the backup itself to Cold Storage.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 21:
- Concepts: Backup and Restore Operations
- Services: Amazon EKS
- Key Insights: So never, or maybe after some days, some weeks, some months or some years, and the Retention Period of your backup.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Restore and recoverability signal.

Line 22:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon EKS
- Key Insights: So every always or days, weeks, months, and years.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: So it's quite supportive and comprehensive and it supports really most services, so it's a really nice addition to the AWS services.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 24:
- Concepts: Backup and Restore Operations
- Services: AWS Backup
- Key Insights: So if we have a look at AWS Backup, we create a backup plan, as I said, and then you assign specific AWS resources that are important to you.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 25:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So here is a list, but it can get bigger.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 26:
- Concepts: Backup and Restore Operations
- Services: AWS Backup, Amazon S3
- Key Insights: And then once it's done well, automatically your back, your data is going to be backed up to Amazon S3 in an internal bucket that is specific to AWS Backup.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 27:
- Concepts: Backup and Restore Operations
- Services: AWS Backup
- Key Insights: And another feature you need to know about for AWS Backup is the Vault Lock.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 28:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So you enforce a WORM read, Write Once Read Many Policy.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 29:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: That means that all your backup that you store in your Backup Vault cannot be deleted.
- Hidden/Implicit Meaning: Constraint or limitation signal; Restore and recoverability signal.

Line 30:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So the idea is that, you know for sure, you can prove it that thanks to the Vault Lock Policy, you cannot delete your backups.
- Hidden/Implicit Meaning: Constraint or limitation signal; Restore and recoverability signal.

Line 31:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: And it provides an additional layer of defense for your backups against, for example inadvertent or malicious delete operations or updates that shorten or alter the retention period.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 32:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: And even the root user itself cannot delete backups when enabled.
- Hidden/Implicit Meaning: Constraint or limitation signal; Restore and recoverability signal.

Line 33:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So it gives you strong guarantees on the safety of your backups.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 34:
- Concepts: Backup and Restore Operations, Service-Level Recovery Design
- Services: AWS Backup
- Key Insights: Okay, that's all you need to know for the AWS Backup service.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 35:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

### File: outputs/AWS/AWS Speciality/Security/07_Domain 5 - Data Protection/219_[SAA_SOA] AWS Backup - Hands On.txt

Line 1:
- Concepts: Backup and Restore Operations
- Services: AWS Backup
- Key Insights: Okay, so let's practice using AWS Backup.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 2:
- Concepts: Backup and Restore Operations, Service-Level Recovery Design
- Services: AWS Backup
- Key Insights: So I'm going to type AWS Backup into the search bar and open the Backup service.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 3:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So we are going to create our first backup plan.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 4:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So I'm going to click on Create Backup plan.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 5:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And we have three options.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 6:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Either we start with a template or we build a new plan, or we define a plan using JSON.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 7:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So the simplest for us is to start with a template, and we can have different templates.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 8:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: For example, Daily-35day-Retention, Daily-Monthly-1yr-Retention, and so on.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 9:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So let's go with Daily-Monthly-1yr-Retention, and I'll call it TestPlan.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 10:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: Next, we click at Backup rules.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 11:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: And you see we can have many Backup rules in our Backup rules.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 12:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So we have two, we have daily Backups and monthly.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 13:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So if I click on Daily Backup, as we can see, there's a rule name.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 14:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: The Backup vault is wherever the backup is going.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 15:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So we can use a default one by AWS, or we can create our own new Backup vault if we wanted to.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 16:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: The Backup frequency, the Backup window, so when to start, which is 5:00 AM UTC, start within eight hours, or you can customize it if you want.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 17:
- Concepts: Service-Level Recovery Design
- Services: Amazon EKS
- Key Insights: Whether or not you want to transition to cold storage, never, after some days, weeks, months, or years.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Backup and Restore Operations
- Services: Amazon EKS
- Key Insights: And the retention period of your backup, for example, this one is retained for five weeks.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 19:
- Concepts: Backup and Restore Operations, Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: Then we can also copy these backups to a specific destination.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 20:
- Concepts: Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: For example, another region for disaster recovery purposes.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 21:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So I'm going to save this backup rule.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 22:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: And for monthly while we get the similar thing, so it's going into the default Backup vault.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 23:
- Concepts: Disaster Recovery Operational Context
- Services: AWS SAM
- Key Insights: It's monthly on day one of each month, and the rest looks the same.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 24:
- Concepts: Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: So we actually transition these ones to cold storage after one month, and then we retain them for one year.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 25:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we have these ready, and then I can just scroll down and click on create plan.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 26:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So now our test plan is created and we need to assign resources to it.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 27:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to click on assign resources, and I will just call it TestAssignments.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 28:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And so here for IAM role, we're going to use the default role, which is going to create a role for us with the correct permissions, or you can choose your own one, but let's go with default role, easy.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 29:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And then for resource selection, we have two things we can do.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 30:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Number one, we can include all resource types, or number two, we can include specific resource types.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 31:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon DynamoDB
- Key Insights: For example, if you wanted to just have a DynamoDB table, and then you could select the resource you want on there, you could do this.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 32:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Or if you wanted to, you can have all tables.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 33:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So it's one way of doing it.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 34:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Or if you go with all resource types, usually we'd use this as a combination with tags.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 35:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: And so for tags you would say, well, if the key environment is equal to the value production, then do a backup.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 36:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: This would be the kind of use cases for backups, but you're free to do anything you want, of course.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 37:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And then when you're done, you click on assign resources.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 38:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon EBS, Amazon EC2
- Key Insights: And so just to make it very, very clear, if I went into EC2 and I were to create an EBS volume, and that volume would have, so for example, one gigabytes and then the key would be environment production.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 39:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: Then this would be automatically backed up by my Backup plan because it has the correct tags.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 40:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So if we look at our volume right now, and we go into tags, as we can see has environment production, which corresponds to the tags that I've set up for my backup plan, okay?
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 41:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So this is the assignments right here.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 42:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And we can have multiple assignments as well in here.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 43:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 44:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And then that's it.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 45:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: The backup plan is going to run automatically, and then the backups are going to happen here in my Backup vaults, okay?
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 46:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: The jobs are the jobs that are going to be scheduled and happening.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 47:
- Concepts: Backup and Restore Operations, Cutover and Recovery Execution, Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: So we have backup jobs, restore jobs and copy jobs if we wanted to.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 48:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And then we can look at the settings.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 49:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So the settings is around, do you want to have backup policies, cross account monitoring, cross account backups, and so on.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 50:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: But we've seen the basics of how backups work.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 51:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And so that's it.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 52:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: I want to show you all this, okay?
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 53:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: That's all you need to know.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 54:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to delete everything.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 55:
- Concepts: Backup and Restore Operations
- Services: Amazon EBS
- Key Insights: So for that, please make sure to delete your EBS volume, or you could wait a day if you wanted to see if the backups work, obviously.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 56:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And then when you're done, you take the assignments and you delete it.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 57:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So type the name of the assignment in here, and then for the Daily Backup rules, you can delete them or delete directly the Backup plan.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 58:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: And for this, just enter the name of the backup plan and press delete.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 59:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 60:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: We've seen backups.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 61:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/28_Disaster Recovery & Migrations/359_AWS Backup.txt

Line 1:
- Concepts: Backup and Restore Operations
- Services: AWS Backup
- Key Insights: Hello, and welcome to this lecture on AWS Backup.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 2:
- Concepts: Backup and Restore Operations, Service-Level Recovery Design
- Services: AWS Backup
- Key Insights: So AWS Backup is a fully managed service and it allows you to centrally manage and automate backups across all your AWS services.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 3:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And the list is getting bigger and bigger by the day.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 4:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that you want to have a central place.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 5:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: You don't want to create any custom scripts or have any manual processes.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 6:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: You want to have a central view of your backup strategy.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 7:
- Concepts: Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: So supported services are pretty wide.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 8:
- Concepts: Service-Level Recovery Design
- Services: Amazon Aurora, Amazon DocumentDB, Amazon DynamoDB, Amazon EBS, Amazon EC2, Amazon EFS, Amazon FSx, Amazon Neptune, Amazon RDS, Amazon S3
- Key Insights: For example, Amazon EC2, EBS, Amazon S3, RDS and all database engines supported, Aurora, DynamoDB, DocumentDB, Amazon Neptune, EFS, FSX, including Lustre, and Windows File Server and probably others.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 9:
- Concepts: Service-Level Recovery Design
- Services: AWS Storage Gateway
- Key Insights: AWS Storage Gateway, such as the Volume Gateway.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 10:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And it's more that can come over time, but I'm not necessarily going to update this lecture because, well it doesn't really matter.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 11:
- Concepts: Backup and Restore Operations, Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: The ideas that you get the concept behind database backup and the most important services are shown on the slide.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 12:
- Concepts: Backup and Restore Operations, Resilience Topologies
- Services: (none explicit)
- Key Insights: So it supports cross-region backups.
- Hidden/Implicit Meaning: Restore and recoverability signal; Resilience topology signal.

Line 13:
- Concepts: Backup and Restore Operations, Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: Doesn't mean that you cant have your backup pushed to another region for disaster recovery strategy, all in one place.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 14:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: And also supports cross-account backups, if you are using multiple accounts in your AWS strategy.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 15:
- Concepts: Cutover and Recovery Execution, Recovery Objectives, Service-Level Recovery Design
- Services: Amazon Aurora
- Key Insights: So, it supports point in time recovery for supported services, such as Aurora.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 16:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: It supports on-demand and scheduled backups.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 17:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: There's tag-based backup policies to make sure you only backup maybe resources that have been tagged with production.
- Hidden/Implicit Meaning: Constraint or limitation signal; Restore and recoverability signal.

Line 18:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: And you can create backup policies known as Backup Plans.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 19:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: You define the frequency, for example every 12 hours or weekly or monthly or whatever cron expression you have, the Backup Window.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 20:
- Concepts: Backup and Restore Operations, Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: If you want to transition the backup itself to Cold Storage.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 21:
- Concepts: Backup and Restore Operations
- Services: Amazon EKS
- Key Insights: So never, or maybe after some days, some weeks, some months or some years, and the Retention Period of your backup.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Restore and recoverability signal.

Line 22:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon EKS
- Key Insights: So every always or days, weeks, months, and years.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: So it's quite supportive and comprehensive and it supports really most services, so it's a really nice addition to the AWS services.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 24:
- Concepts: Backup and Restore Operations
- Services: AWS Backup
- Key Insights: So if we have a look at AWS Backup, we create a backup plan, as I said, and then you assign specific AWS resources that are important to you.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 25:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So here is a list, but it can get bigger.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 26:
- Concepts: Backup and Restore Operations
- Services: AWS Backup, Amazon S3
- Key Insights: And then once it's done well, automatically your back, your data is going to be backed up to Amazon S3 in an internal bucket that is specific to AWS Backup.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 27:
- Concepts: Backup and Restore Operations
- Services: AWS Backup
- Key Insights: And another feature you need to know about for AWS Backup is the Vault Lock.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 28:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So you enforce a WORM read, Write Once Read Many Policy.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 29:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: That means that all your backup that you store in your Backup Vault cannot be deleted.
- Hidden/Implicit Meaning: Constraint or limitation signal; Restore and recoverability signal.

Line 30:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So the idea is that, you know for sure, you can prove it that thanks to the Vault Lock Policy, you cannot delete your backups.
- Hidden/Implicit Meaning: Constraint or limitation signal; Restore and recoverability signal.

Line 31:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: And it provides an additional layer of defense for your backups against, for example inadvertent or malicious delete operations or updates that shorten or alter the retention period.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 32:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: And even the root user itself cannot delete backups when enabled.
- Hidden/Implicit Meaning: Constraint or limitation signal; Restore and recoverability signal.

Line 33:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So it gives you strong guarantees on the safety of your backups.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 34:
- Concepts: Backup and Restore Operations, Service-Level Recovery Design
- Services: AWS Backup
- Key Insights: Okay, that's all you need to know for the AWS Backup service.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 35:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/28_Disaster Recovery & Migrations/360_AWS Backup - Hands On.txt

Line 1:
- Concepts: Backup and Restore Operations
- Services: AWS Backup
- Key Insights: Okay, so let's practice using AWS Backup.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 2:
- Concepts: Backup and Restore Operations, Service-Level Recovery Design
- Services: AWS Backup
- Key Insights: So I'm going to type AWS Backup into the search bar and open the Backup service.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 3:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So we are going to create our first backup plan.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 4:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So I'm going to click on Create Backup plan.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 5:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And we have three options.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 6:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Either we start with a template or we build a new plan, or we define a plan using JSON.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 7:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So the simplest for us is to start with a template, and we can have different templates.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 8:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: For example, Daily-35day-Retention, Daily-Monthly-1yr-Retention, and so on.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 9:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So let's go with Daily-Monthly-1yr-Retention, and I'll call it TestPlan.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 10:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: Next, we click at Backup rules.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 11:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: And you see we can have many Backup rules in our Backup rules.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 12:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So we have two, we have daily Backups and monthly.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 13:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So if I click on Daily Backup, as we can see, there's a rule name.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 14:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: The Backup vault is wherever the backup is going.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 15:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So we can use a default one by AWS, or we can create our own new Backup vault if we wanted to.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 16:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: The Backup frequency, the Backup window, so when to start, which is 5:00 AM UTC, start within eight hours, or you can customize it if you want.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 17:
- Concepts: Service-Level Recovery Design
- Services: Amazon EKS
- Key Insights: Whether or not you want to transition to cold storage, never, after some days, weeks, months, or years.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 18:
- Concepts: Backup and Restore Operations
- Services: Amazon EKS
- Key Insights: And the retention period of your backup, for example, this one is retained for five weeks.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 19:
- Concepts: Backup and Restore Operations, Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: Then we can also copy these backups to a specific destination.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 20:
- Concepts: Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: For example, another region for disaster recovery purposes.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 21:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So I'm going to save this backup rule.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 22:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: And for monthly while we get the similar thing, so it's going into the default Backup vault.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 23:
- Concepts: Disaster Recovery Operational Context
- Services: AWS SAM
- Key Insights: It's monthly on day one of each month, and the rest looks the same.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 24:
- Concepts: Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: So we actually transition these ones to cold storage after one month, and then we retain them for one year.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 25:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we have these ready, and then I can just scroll down and click on create plan.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 26:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So now our test plan is created and we need to assign resources to it.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 27:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to click on assign resources, and I will just call it TestAssignments.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 28:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And so here for IAM role, we're going to use the default role, which is going to create a role for us with the correct permissions, or you can choose your own one, but let's go with default role, easy.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 29:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And then for resource selection, we have two things we can do.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 30:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Number one, we can include all resource types, or number two, we can include specific resource types.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 31:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon DynamoDB
- Key Insights: For example, if you wanted to just have a DynamoDB table, and then you could select the resource you want on there, you could do this.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 32:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Or if you wanted to, you can have all tables.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 33:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So it's one way of doing it.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 34:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Or if you go with all resource types, usually we'd use this as a combination with tags.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 35:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: And so for tags you would say, well, if the key environment is equal to the value production, then do a backup.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 36:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: This would be the kind of use cases for backups, but you're free to do anything you want, of course.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 37:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And then when you're done, you click on assign resources.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 38:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon EBS, Amazon EC2
- Key Insights: And so just to make it very, very clear, if I went into EC2 and I were to create an EBS volume, and that volume would have, so for example, one gigabytes and then the key would be environment production.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 39:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: Then this would be automatically backed up by my Backup plan because it has the correct tags.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 40:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So if we look at our volume right now, and we go into tags, as we can see has environment production, which corresponds to the tags that I've set up for my backup plan, okay?
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 41:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So this is the assignments right here.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 42:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And we can have multiple assignments as well in here.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 43:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 44:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And then that's it.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 45:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: The backup plan is going to run automatically, and then the backups are going to happen here in my Backup vaults, okay?
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 46:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: The jobs are the jobs that are going to be scheduled and happening.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 47:
- Concepts: Backup and Restore Operations, Cutover and Recovery Execution, Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: So we have backup jobs, restore jobs and copy jobs if we wanted to.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 48:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And then we can look at the settings.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 49:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So the settings is around, do you want to have backup policies, cross account monitoring, cross account backups, and so on.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 50:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: But we've seen the basics of how backups work.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 51:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And so that's it.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 52:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: I want to show you all this, okay?
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 53:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: That's all you need to know.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 54:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to delete everything.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 55:
- Concepts: Backup and Restore Operations
- Services: Amazon EBS
- Key Insights: So for that, please make sure to delete your EBS volume, or you could wait a day if you wanted to see if the backups work, obviously.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 56:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And then when you're done, you take the assignments and you delete it.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 57:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So type the name of the assignment in here, and then for the Daily Backup rules, you can delete them or delete directly the Backup plan.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 58:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: And for this, just enter the name of the backup plan and press delete.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 59:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And that's it.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 60:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: We've seen backups.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 61:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/14_Migration/148_AWS Backup.txt

Line 1:
- Concepts: Backup and Restore Operations
- Services: AWS Backup
- Key Insights: Hello, and welcome to this lecture on AWS Backup.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 2:
- Concepts: Backup and Restore Operations, Service-Level Recovery Design
- Services: AWS Backup
- Key Insights: So AWS Backup is a fully managed service and it allows you to centrally manage and automate backups across all your AWS services.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 3:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And the list is getting bigger and bigger by the day.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 4:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that you want to have a central place.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 5:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: You don't want to create any custom scripts or have any manual processes.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 6:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: You want to have a central view of your backup strategy.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 7:
- Concepts: Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: So supported services are pretty wide.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 8:
- Concepts: Service-Level Recovery Design
- Services: Amazon Aurora, Amazon DocumentDB, Amazon DynamoDB, Amazon EBS, Amazon EC2, Amazon EFS, Amazon FSx, Amazon Neptune, Amazon RDS, Amazon S3
- Key Insights: For example, Amazon EC2, EBS, Amazon S3, RDS and all database engines supported, Aurora, DynamoDB, DocumentDB, Amazon Neptune, EFS, FSX, including Lustre, and Windows File Server and probably others.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 9:
- Concepts: Service-Level Recovery Design
- Services: AWS Storage Gateway
- Key Insights: AWS Storage Gateway, such as the Volume Gateway.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 10:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And it's more that can come over time, but I'm not necessarily going to update this lecture because, well it doesn't really matter.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 11:
- Concepts: Backup and Restore Operations, Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: The ideas that you get the concept behind database backup and the most important services are shown on the slide.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 12:
- Concepts: Backup and Restore Operations, Resilience Topologies
- Services: (none explicit)
- Key Insights: So it supports cross-region backups.
- Hidden/Implicit Meaning: Restore and recoverability signal; Resilience topology signal.

Line 13:
- Concepts: Backup and Restore Operations, Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: Doesn't mean that you cant have your backup pushed to another region for disaster recovery strategy, all in one place.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 14:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: And also supports cross-account backups, if you are using multiple accounts in your AWS strategy.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 15:
- Concepts: Cutover and Recovery Execution, Recovery Objectives, Service-Level Recovery Design
- Services: Amazon Aurora
- Key Insights: So, it supports point in time recovery for supported services, such as Aurora.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 16:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: It supports on-demand and scheduled backups.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 17:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: There's tag-based backup policies to make sure you only backup maybe resources that have been tagged with production.
- Hidden/Implicit Meaning: Constraint or limitation signal; Restore and recoverability signal.

Line 18:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: And you can create backup policies known as Backup Plans.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 19:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: You define the frequency, for example every 12 hours or weekly or monthly or whatever cron expression you have, the Backup Window.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 20:
- Concepts: Backup and Restore Operations, Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: If you want to transition the backup itself to Cold Storage.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 21:
- Concepts: Backup and Restore Operations
- Services: Amazon EKS
- Key Insights: So never, or maybe after some days, some weeks, some months or some years, and the Retention Period of your backup.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Restore and recoverability signal.

Line 22:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon EKS
- Key Insights: So every always or days, weeks, months, and years.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: So it's quite supportive and comprehensive and it supports really most services, so it's a really nice addition to the AWS services.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 24:
- Concepts: Backup and Restore Operations
- Services: AWS Backup
- Key Insights: So if we have a look at AWS Backup, we create a backup plan, as I said, and then you assign specific AWS resources that are important to you.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 25:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So here is a list, but it can get bigger.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 26:
- Concepts: Backup and Restore Operations
- Services: AWS Backup, Amazon S3
- Key Insights: And then once it's done well, automatically your back, your data is going to be backed up to Amazon S3 in an internal bucket that is specific to AWS Backup.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 27:
- Concepts: Backup and Restore Operations
- Services: AWS Backup
- Key Insights: And another feature you need to know about for AWS Backup is the Vault Lock.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 28:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So you enforce a WORM read, Write Once Read Many Policy.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 29:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: That means that all your backup that you store in your Backup Vault cannot be deleted.
- Hidden/Implicit Meaning: Constraint or limitation signal; Restore and recoverability signal.

Line 30:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So the idea is that, you know for sure, you can prove it that thanks to the Vault Lock Policy, you cannot delete your backups.
- Hidden/Implicit Meaning: Constraint or limitation signal; Restore and recoverability signal.

Line 31:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: And it provides an additional layer of defense for your backups against, for example inadvertent or malicious delete operations or updates that shorten or alter the retention period.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 32:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: And even the root user itself cannot delete backups when enabled.
- Hidden/Implicit Meaning: Constraint or limitation signal; Restore and recoverability signal.

Line 33:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: So it gives you strong guarantees on the safety of your backups.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 34:
- Concepts: Backup and Restore Operations, Service-Level Recovery Design
- Services: AWS Backup
- Key Insights: Okay, that's all you need to know for the AWS Backup service.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 35:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

## Step 2 - Consolidation

### 1. Concepts List
- Backup and Restore Operations
- Cutover and Recovery Execution
- Disaster Recovery Operational Context
- Recovery Objectives
- Resilience Topologies
- Service-Level Recovery Design

### 2. Services List
- AWS Backup
- AWS SAM
- AWS Storage Gateway
- Amazon Aurora
- Amazon DocumentDB
- Amazon DynamoDB
- Amazon EBS
- Amazon EC2
- Amazon EFS
- Amazon EKS
- Amazon FSx
- Amazon Neptune
- Amazon RDS
- Amazon S3

### 3. Features List
- backup
- cross-region
- restore
- rpo
- vault

### 4. Use Cases
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
- 359_AWS Backup.txt:8: For example, Amazon EC2, EBS, Amazon S3, RDS and all database engines supported, Aurora, DynamoDB, DocumentDB, Amazon Neptune, EFS, FSX, including Lustre, and Windows File Server and probably others.
- 359_AWS Backup.txt:19: You define the frequency, for example every 12 hours or weekly or monthly or whatever cron expression you have, the Backup Window.
- 359_AWS Backup.txt:31: And it provides an additional layer of defense for your backups against, for example inadvertent or malicious delete operations or updates that shorten or alter the retention period.
- 359_AWS Backup.txt:32: And even the root user itself cannot delete backups when enabled.
- 360_AWS Backup - Hands On.txt:8: For example, Daily-35day-Retention, Daily-Monthly-1yr-Retention, and so on.
- 360_AWS Backup - Hands On.txt:16: The Backup frequency, the Backup window, so when to start, which is 5:00 AM UTC, start within eight hours, or you can customize it if you want.
- 360_AWS Backup - Hands On.txt:18: And the retention period of your backup, for example, this one is retained for five weeks.
- 360_AWS Backup - Hands On.txt:20: For example, another region for disaster recovery purposes.
- 360_AWS Backup - Hands On.txt:31: For example, if you wanted to just have a DynamoDB table, and then you could select the resource you want on there, you could do this.
- 360_AWS Backup - Hands On.txt:36: This would be the kind of use cases for backups, but you're free to do anything you want, of course.
- 360_AWS Backup - Hands On.txt:37: And then when you're done, you click on assign resources.
- 360_AWS Backup - Hands On.txt:38: And so just to make it very, very clear, if I went into EC2 and I were to create an EBS volume, and that volume would have, so for example, one gigabytes and then the key would be environment production.
- 360_AWS Backup - Hands On.txt:56: And then when you're done, you take the assignments and you delete it.
- 148_AWS Backup.txt:8: For example, Amazon EC2, EBS, Amazon S3, RDS and all database engines supported, Aurora, DynamoDB, DocumentDB, Amazon Neptune, EFS, FSX, including Lustre, and Windows File Server and probably others.
- 148_AWS Backup.txt:19: You define the frequency, for example every 12 hours or weekly or monthly or whatever cron expression you have, the Backup Window.
- 148_AWS Backup.txt:31: And it provides an additional layer of defense for your backups against, for example inadvertent or malicious delete operations or updates that shorten or alter the retention period.
- 148_AWS Backup.txt:32: And even the root user itself cannot delete backups when enabled.

### 5. Constraints / Limitations
- 218_[SAA_SOA] AWS Backup.txt:17: There's tag-based backup policies to make sure you only backup maybe resources that have been tagged with production.
- 218_[SAA_SOA] AWS Backup.txt:29: That means that all your backup that you store in your Backup Vault cannot be deleted.
- 218_[SAA_SOA] AWS Backup.txt:30: So the idea is that, you know for sure, you can prove it that thanks to the Vault Lock Policy, you cannot delete your backups.
- 218_[SAA_SOA] AWS Backup.txt:32: And even the root user itself cannot delete backups when enabled.
- 359_AWS Backup.txt:17: There's tag-based backup policies to make sure you only backup maybe resources that have been tagged with production.
- 359_AWS Backup.txt:29: That means that all your backup that you store in your Backup Vault cannot be deleted.
- 359_AWS Backup.txt:30: So the idea is that, you know for sure, you can prove it that thanks to the Vault Lock Policy, you cannot delete your backups.
- 359_AWS Backup.txt:32: And even the root user itself cannot delete backups when enabled.
- 148_AWS Backup.txt:17: There's tag-based backup policies to make sure you only backup maybe resources that have been tagged with production.
- 148_AWS Backup.txt:29: That means that all your backup that you store in your Backup Vault cannot be deleted.
- 148_AWS Backup.txt:30: So the idea is that, you know for sure, you can prove it that thanks to the Vault Lock Policy, you cannot delete your backups.
- 148_AWS Backup.txt:32: And even the root user itself cannot delete backups when enabled.

### 6. Patterns / Architectures
- (No explicit pattern markers detected)

## Step 3 - Deep Expansion (Disaster Recovery Concepts)

### Core Services in This Topic
- AWS Backup: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Storage Gateway: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Aurora: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon DocumentDB: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon DynamoDB: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EBS: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EC2: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EFS: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EKS: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

### Architect-Level Concept Expansion
- Backup and Restore Operations: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Cutover and Recovery Execution: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Disaster Recovery Operational Context: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Recovery Objectives: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Resilience Topologies: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Service-Level Recovery Design: treat this as a design lever that changes topology, risk posture, or operational workflow.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Backup orchestration | AWS Backup | Azure Backup | Backup and DR services |
| Disaster recovery replication | Elastic Disaster Recovery | Azure Site Recovery | DR replication ecosystems / Backup and DR |
| Recovery topology patterns | Pilot light / warm standby / active-active | Cold / warm / active-active patterns | Cold / warm / multi-region active patterns |
| Cross-region resilience | Multi-region copies and failover patterns | Paired regions and cross-region replication | Multi-region failover and global load balancing patterns |

### Trade-offs and Decision Notes
- Disaster Recovery Knowledge Base is strongest when design decisions are expressed as control objectives rather than vendor-only terminology.
- Cross-cloud portability improves when service choice, failure behavior, and governance model are documented together.
- Cloud-native implementations should still preserve comparable intent across AWS, Azure, and GCP.

## Phase-wise Architect-Level Organization

### Phase 1 - Foundations
- Disaster recovery quality is measured by recovery objectives and realism of recovery execution.
- Backup without tested restore and cutover paths is not a recovery strategy.

### Phase 2 - Core Services
- Implement recovery topologies only after workload criticality, tolerance, and dependency chains are explicit.
- Centralize restore governance while preserving service-level recovery detail where needed.

### Phase 3 - Advanced Patterns
- Use replication and warm environments carefully because hidden dependency drift degrades recovery confidence.
- Separate resilience marketing terms from actual runbook execution steps.

### Phase 4 - System Design
- Reference architecture: protected assets, backup and replication controls, and rehearsed cutover workflows.
- Scaling considerations: dependency ordering, regional capacity, stale runbooks, and restore contention.
- Cost considerations: always-warm environments, unmanaged backup growth, and unused replica estates.
