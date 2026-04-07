# 04_Hybrid_Transfer_Execution.md

## Scope
- Topic: Snow family, DataSync, Storage Gateway, Transfer Family, and hybrid movement execution
- Files processed: 2
- Extracted non-empty transcript lines: 84
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Migration Knowledge Base
- Cross-domain referrals: 2

## Real Material - Architect Learning Build (Migration: Hybrid Transfer Execution)

This section is the study-first architecture guide for snow family, datasync, storage gateway, transfer family, and hybrid movement execution.

### Phase 1 - Foundations

#### Module: Hybrid Transfer Execution Mental Model
- Use hybrid transfer execution decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: Hybrid Transfer Execution Mental Model
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/14_Migration/138_Storage Gateway.txt
- Top concept clusters from transcript metadata:
- Hybrid Transfer Execution
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 2
- Module-selected transcript files: 1
- Key insight candidates scanned (topic): 84
- Key insights inside selected files: 8
- Unique concept tags in selected files: 1

##### Transcript-Enriched Learning Notes
- So what we do is that this Volume Gateway is going to be linked through Storage Gateway to Amazon S3, so this is where the data of your volume is going to be, and then Amazon S3 data can be transformed into AWS EBS volumes for really being restored on AWS.
- So there are different kind of use cases, and therefore, there are different kinds of Storage Gateway, and there are a few of them, so the first one is the S3 File Gateway, the Volume Gateway, and the Tape Gateway.
- So very simply, it is a bridge between your on-premises data and your cloud data, so you have data on-premises, and you're going to bridge it using the Storage Gateway to the cloud.
- Also, you can, for example, instead prefer to have the majority of your data stored on AWS and use the Storage Gateway as an on-premises cache for low-latency file access.
- So we have on-premises, where we deploy a Storage Gateway VM, and then we have the Storage Gateway service, and then we have the cloud of AWS.
- And the bridge between this S3 and your on-premises infrastructure is going to be AWS Storage Gateway.
- So let's try to summarize the Storage Gateway service.
- So now, let's talk about the AWS Storage Gateway.

##### Polished Architect Notes
- Transcript signals that so what we do is that this Volume Gateway is going to be linked through Storage Gateway to Amazon S3, so this is where the data of your volume is going to be, and then Amazon S3 data can be transformed into AWS EBS volumes for really being restored on AWS.
- Transcript signals that so there are different kind of use cases, and therefore, there are different kinds of Storage Gateway, and there are a few of them, so the first one is the S3 File Gateway, the Volume Gateway, and the Tape Gateway.
- Transcript signals that so very simply, it is a bridge between your on-premises data and your cloud data, so you have data on-premises, and you're going to bridge it using the Storage Gateway to the cloud.
- Transcript signals that also, you can, for example, instead prefer to have the majority of your data stored on AWS and use the Storage Gateway as an on-premises cache for low-latency file access.
- Transcript signals that so we have on-premises, where we deploy a Storage Gateway VM, and then we have the Storage Gateway service, and then we have the cloud of AWS.
- Transcript signals that and the bridge between this S3 and your on-premises infrastructure is going to be AWS Storage Gateway.
- Transcript signals that so let's try to summarize the Storage Gateway service.
- Transcript signals that so now, let's talk about the AWS Storage Gateway.

##### Architect Synthesis (Transcript-Derived)
- Treat Hybrid Transfer Execution as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so what we do is that this Volume Gateway is going to be linked through Storage Gateway to Amazon S3, so this is where the data of your volume is going to be, and then Amazon S3 data can be transformed into AWS EBS volumes for really being restored on AWS.
- Design implication: so there are different kind of use cases, and therefore, there are different kinds of Storage Gateway, and there are a few of them, so the first one is the S3 File Gateway, the Volume Gateway, and the Tape Gateway.
- Design implication: so very simply, it is a bridge between your on-premises data and your cloud data, so you have data on-premises, and you're going to bridge it using the Storage Gateway to the cloud.
- Design implication: also, you can, for example, instead prefer to have the majority of your data stored on AWS and use the Storage Gateway as an on-premises cache for low-latency file access.
- Design implication: so we have on-premises, where we deploy a Storage Gateway VM, and then we have the Storage Gateway service, and then we have the cloud of AWS.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/14_Migration/138_Storage Gateway.txt
- Top concept clusters from transcript metadata:
- Hybrid Transfer Execution
- Migration Operational Context
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 2
- Module-selected transcript files: 1
- Key insight candidates scanned (topic): 84
- Key insights inside selected files: 9
- Unique concept tags in selected files: 2

##### Transcript-Enriched Learning Notes
- So what we do is that this Volume Gateway is going to be linked through Storage Gateway to Amazon S3, so this is where the data of your volume is going to be, and then Amazon S3 data can be transformed into AWS EBS volumes for really being restored on AWS.
- So there are different kind of use cases, and therefore, there are different kinds of Storage Gateway, and there are a few of them, so the first one is the S3 File Gateway, the Volume Gateway, and the Tape Gateway.
- So very simply, it is a bridge between your on-premises data and your cloud data, so you have data on-premises, and you're going to bridge it using the Storage Gateway to the cloud.
- Also, you can, for example, instead prefer to have the majority of your data stored on AWS and use the Storage Gateway as an on-premises cache for low-latency file access.
- So we have on-premises, where we deploy a Storage Gateway VM, and then we have the Storage Gateway service, and then we have the cloud of AWS.
- And the bridge between this S3 and your on-premises infrastructure is going to be AWS Storage Gateway.
- So AWS is starting to push for hybrid cloud, and what is hybrid cloud?
- So let's try to summarize the Storage Gateway service.
- So now, let's talk about the AWS Storage Gateway.

##### Polished Architect Notes
- Transcript signals that so what we do is that this Volume Gateway is going to be linked through Storage Gateway to Amazon S3, so this is where the data of your volume is going to be, and then Amazon S3 data can be transformed into AWS EBS volumes for really being restored on AWS.
- Transcript signals that so there are different kind of use cases, and therefore, there are different kinds of Storage Gateway, and there are a few of them, so the first one is the S3 File Gateway, the Volume Gateway, and the Tape Gateway.
- Transcript signals that so very simply, it is a bridge between your on-premises data and your cloud data, so you have data on-premises, and you're going to bridge it using the Storage Gateway to the cloud.
- Transcript signals that also, you can, for example, instead prefer to have the majority of your data stored on AWS and use the Storage Gateway as an on-premises cache for low-latency file access.
- Transcript signals that so we have on-premises, where we deploy a Storage Gateway VM, and then we have the Storage Gateway service, and then we have the cloud of AWS.
- Transcript signals that and the bridge between this S3 and your on-premises infrastructure is going to be AWS Storage Gateway.
- Transcript signals that so AWS is starting to push for hybrid cloud, and what is hybrid cloud?
- Transcript signals that so let's try to summarize the Storage Gateway service.
- Transcript signals that so now, let's talk about the AWS Storage Gateway.

##### Architect Synthesis (Transcript-Derived)
- Treat Hybrid Transfer Execution as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Migration Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so what we do is that this Volume Gateway is going to be linked through Storage Gateway to Amazon S3, so this is where the data of your volume is going to be, and then Amazon S3 data can be transformed into AWS EBS volumes for really being restored on AWS.
- Design implication: so there are different kind of use cases, and therefore, there are different kinds of Storage Gateway, and there are a few of them, so the first one is the S3 File Gateway, the Volume Gateway, and the Tape Gateway.
- Design implication: so very simply, it is a bridge between your on-premises data and your cloud data, so you have data on-premises, and you're going to bridge it using the Storage Gateway to the cloud.
- Design implication: also, you can, for example, instead prefer to have the majority of your data stored on AWS and use the Storage Gateway as an on-premises cache for low-latency file access.
- Design implication: so we have on-premises, where we deploy a Storage Gateway VM, and then we have the Storage Gateway service, and then we have the cloud of AWS.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/14_Migration/138_Storage Gateway.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/14_Migration/139_Storage Gateway - Advanced Concepts.txt
- Top concept clusters from transcript metadata:
- Hybrid Transfer Execution
- Migration Operational Context
- Application and Server Relocation
- Migration Strategy and Discovery
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 2
- Module-selected transcript files: 2
- Key insight candidates scanned (topic): 84
- Key insights inside selected files: 24
- Unique concept tags in selected files: 4

##### Transcript-Enriched Learning Notes
- So what we do is that this Volume Gateway is going to be linked through Storage Gateway to Amazon S3, so this is where the data of your volume is going to be, and then Amazon S3 data can be transformed into AWS EBS volumes for really being restored on AWS.
- So there are different kind of use cases, and therefore, there are different kinds of Storage Gateway, and there are a few of them, so the first one is the S3 File Gateway, the Volume Gateway, and the Tape Gateway.
- So very simply, it is a bridge between your on-premises data and your cloud data, so you have data on-premises, and you're going to bridge it using the Storage Gateway to the cloud.
- Also, you can, for example, instead prefer to have the majority of your data stored on AWS and use the Storage Gateway as an on-premises cache for low-latency file access.
- So we have on-premises, where we deploy a Storage Gateway VM, and then we have the Storage Gateway service, and then we have the cloud of AWS.
- The beautiful thing is that Athena only uses the resources of Amazon S3, and so it doesn't impact the performance of our File Gateway.
- So this is yet another architecture you have to think about when you're using your File Gateway appliance.
- And the bridge between this S3 and your on-premises infrastructure is going to be AWS Storage Gateway.
- So let's try to summarize the Storage Gateway service.
- So now, let's talk about the AWS Storage Gateway.
- Now, to access your bucket, you need to create IAM roles for each File Gateway, and then if you were to use the SMB protocol, because it is more native for Windows file systems, you have integration with Active Directory for user authentication, so that means that your users can be authentified with your S3 File Gateway before accessing it, and then therefore accessing your S3 buckets.
- So whatever buckets you configure with your S3 File Gateway are going to be accessible using the NFS and SMB protocol, and on top of it, the most recently used data is cached in the File Gateway for rapid access, so not your entire S3 bucket is on the File Gateway, but your most recently files that are most recently used files.

##### Polished Architect Notes
- Transcript signals that so what we do is that this Volume Gateway is going to be linked through Storage Gateway to Amazon S3, so this is where the data of your volume is going to be, and then Amazon S3 data can be transformed into AWS EBS volumes for really being restored on AWS.
- Transcript signals that so there are different kind of use cases, and therefore, there are different kinds of Storage Gateway, and there are a few of them, so the first one is the S3 File Gateway, the Volume Gateway, and the Tape Gateway.
- Transcript signals that so very simply, it is a bridge between your on-premises data and your cloud data, so you have data on-premises, and you're going to bridge it using the Storage Gateway to the cloud.
- Transcript signals that also, you can, for example, instead prefer to have the majority of your data stored on AWS and use the Storage Gateway as an on-premises cache for low-latency file access.
- Transcript signals that so we have on-premises, where we deploy a Storage Gateway VM, and then we have the Storage Gateway service, and then we have the cloud of AWS.
- Transcript signals that the beautiful thing is that Athena only uses the resources of Amazon S3, and so it doesn't impact the performance of our File Gateway.
- Transcript signals that so this is yet another architecture you have to think about when you're using your File Gateway appliance.
- Transcript signals that and the bridge between this S3 and your on-premises infrastructure is going to be AWS Storage Gateway.
- Transcript signals that so let's try to summarize the Storage Gateway service.
- Transcript signals that so now, let's talk about the AWS Storage Gateway.
- Transcript signals that now, to access your bucket, you need to create IAM roles for each File Gateway, and then if you were to use the SMB protocol, because it is more native for Windows file systems, you have integration with Active Directory for user authentication, so that means that your users can be authentified with your S3 File Gateway before accessing it, and then therefore accessing your S3 buckets.
- Transcript signals that so whatever buckets you configure with your S3 File Gateway are going to be accessible using the NFS and SMB protocol, and on top of it, the most recently used data is cached in the File Gateway for rapid access, so not your entire S3 bucket is on the File Gateway, but your most recently files that are most recently used files.

##### Architect Synthesis (Transcript-Derived)
- Treat Hybrid Transfer Execution as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Migration Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Application and Server Relocation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Migration Strategy and Discovery as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so what we do is that this Volume Gateway is going to be linked through Storage Gateway to Amazon S3, so this is where the data of your volume is going to be, and then Amazon S3 data can be transformed into AWS EBS volumes for really being restored on AWS.
- Design implication: so there are different kind of use cases, and therefore, there are different kinds of Storage Gateway, and there are a few of them, so the first one is the S3 File Gateway, the Volume Gateway, and the Tape Gateway.
- Design implication: so very simply, it is a bridge between your on-premises data and your cloud data, so you have data on-premises, and you're going to bridge it using the Storage Gateway to the cloud.
- Design implication: also, you can, for example, instead prefer to have the majority of your data stored on AWS and use the Storage Gateway as an on-premises cache for low-latency file access.
- Design implication: so we have on-premises, where we deploy a Storage Gateway VM, and then we have the Storage Gateway service, and then we have the cloud of AWS.

### Phase 2 - Core Services
- Amazon EFS should be understood in terms of request path, control plane, and operational boundary.
- Amazon S3 should be understood in terms of request path, control plane, and operational boundary.
- AWS Storage Gateway should be understood in terms of request path, control plane, and operational boundary.
- Amazon EBS should be understood in terms of request path, control plane, and operational boundary.
- Amazon EC2 should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: Application and Server Relocation becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Hybrid Transfer Execution becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Migration Operational Context becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Migration Strategy and Discovery becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design hybrid transfer execution with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when hybrid transfer execution decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: So we have on-premises, where we deploy a Storage Gateway VM, and then we have the Storage Gateway service, and then we have the cloud of AWS.
- Signal 2: Transcript signals that so we have on-premises, where we deploy a Storage Gateway VM, and then we have the Storage Gateway service, and then we have the cloud of AWS.
- Signal 3: Design implication: so we have on-premises, where we deploy a Storage Gateway VM, and then we have the Storage Gateway service, and then we have the cloud of AWS.
- Signal 4: Now, to access your bucket, you need to create IAM roles for each File Gateway, and then if you were to use the SMB protocol, because it is more native for Windows file systems, you have integration with Active Directory for user authentication, so that means that your users can be authentified with your S3 File Gateway before accessing it, and then therefore accessing your S3 buckets.
- Signal 5: So whatever buckets you configure with your S3 File Gateway are going to be accessible using the NFS and SMB protocol, and on top of it, the most recently used data is cached in the File Gateway for rapid access, so not your entire S3 bucket is on the File Gateway, but your most recently files that are most recently used files.
- Signal 6: Transcript signals that now, to access your bucket, you need to create IAM roles for each File Gateway, and then if you were to use the SMB protocol, because it is more native for Windows file systems, you have integration with Active Directory for user authentication, so that means that your users can be authentified with your S3 File Gateway before accessing it, and then therefore accessing your S3 buckets.
- Signal 7: Transcript signals that so whatever buckets you configure with your S3 File Gateway are going to be accessible using the NFS and SMB protocol, and on top of it, the most recently used data is cached in the File Gateway for rapid access, so not your entire S3 bucket is on the File Gateway, but your most recently files that are most recently used files.
- Signal 8: Key Insights: So for this, we're going to create an S3 File Gateway, which is going to allow our application server to use the NFS or the SMB protocol, and by using these protocols, behind the scene, the S3 File Gateway is going to translate those requests into HTTPS requests for your Amazon S3 buckets.
- Signal 9: Key Insights: Then if you wanted to archive some of these objects, you could create a lifecycle policy for your S3 bucket to transition objects after a while to S3 Glacier in order to have them archived.
- Signal 10: Key Insights: So whatever buckets you configure with your S3 File Gateway are going to be accessible using the NFS and SMB protocol, and on top of it, the most recently used data is cached in the File Gateway for rapid access, so not your entire S3 bucket is on the File Gateway, but your most recently files that are most recently used files.

### Service-Specific Lab Paths
### Activity 1: AWS MGN Lab for Snow family, DataSync, Storage Gateway, Transfer Family, and hybrid movement execution
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

### Activity 2: AWS Application Discovery Service Lab for Snow family, DataSync, Storage Gateway, Transfer Family, and hybrid movement execution
- AWS console path: AWS Console -> Application Discovery Service
- Azure equivalent: Azure Migrate Discovery and Assessment
- GCP equivalent: Migration Center Discovery
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> Application Discovery Service.
3. Build: Configure discovery agentless or agent-based collection.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Review discovered server inventory and dependency data.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Stop discovery collectors and remove test imports.

### Activity 3: AWS DMS Lab for Snow family, DataSync, Storage Gateway, Transfer Family, and hybrid movement execution
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

### Activity 4: AWS Migration Hub Lab for Snow family, DataSync, Storage Gateway, Transfer Family, and hybrid movement execution
- AWS console path: AWS Console -> Migration Hub
- Azure equivalent: Azure Migrate (project dashboard)
- GCP equivalent: Migration Center
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> Migration Hub.
3. Build: Create an application and map migration tasks.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Check migration progress and discovered resources.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Remove test migration groups and trackers.

### Quick Troubleshooting
- Access denied: verify role permissions or ask admin for least-privilege lab policy.
- Resource limit reached: pick another region or request quota increase.
- Unexpected charges: stop/delete resources and review cost explorer immediately.

## Cross-Cloud Thinking Mode

Use this lens to study Snow family, DataSync, Storage Gateway, Transfer Family, and hybrid movement execution in a cloud-agnostic way: focus on capability first, provider name second.

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
| AWS MGN | AWS MGN | Azure Migrate | Migrate to Virtual Machines |
| AWS Application Discovery Service | AWS Application Discovery Service | Azure Migrate Discovery and Assessment | Migration Center Discovery |
| AWS DMS | AWS DMS | Azure Database Migration Service | Database Migration Service |
| AWS Migration Hub | AWS Migration Hub | Azure Migrate (project dashboard) | Migration Center |

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

These transcripts are relevant to this topic but are owned by another knowledge base and are referenced here to avoid duplication.

- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/172_AWS Snow Family Overview.txt (owned by AWS Storage Knowledge Base)
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/16_AWS Storage Extras/173_AWS Snow Family Hands On.txt (owned by AWS Storage Knowledge Base)

## Step 1 - Line-by-Line Extraction

Every non-empty line from every primary source transcript is preserved below with extraction fields.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/14_Migration/138_Storage Gateway.txt

Line 1:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So AWS is starting to push for hybrid cloud, and what is hybrid cloud?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 2:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: That means that part of your infrastructure is going to be on the cloud of AWS, and part of your infrastructure is going to stay on-premises, and this can be due to multiple reasons.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 3:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: Maybe you have a long cloud migration, maybe you have security requirements or compliance requirements, maybe it's part of your strategy to only leverage a cloud for elastic workloads, but to keep a lot of stuff on-premises.
- Hidden/Implicit Meaning: Constraint or limitation signal; Migration-planning signal; Cutover and execution signal; Hybrid movement signal.

Line 4:
- Concepts: Migration Operational Context
- Services: Amazon EFS, Amazon S3
- Key Insights: So we have some services that we really like in AWS, such as Amazon S3, which is a proprietary storage technology, which is unlike EFS, which is an NFS compliance file system, so how would you expose, for example, the S3 data on-premises?
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 5:
- Concepts: Hybrid Transfer Execution
- Services: AWS Storage Gateway, Amazon S3
- Key Insights: And the bridge between this S3 and your on-premises infrastructure is going to be AWS Storage Gateway.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 6:
- Concepts: Migration Operational Context
- Services: Amazon EBS, Amazon EC2
- Key Insights: So if we look at the storage cloud-native options on AWS, we have block storage, which is Amazon EBS, or the EC2 instance store.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 7:
- Concepts: Migration Operational Context
- Services: Amazon EFS, Amazon FSx, Amazon Glacier, Amazon S3
- Key Insights: We have file systems, such as Amazon EFS or Amazon FSX, and we have object-level storage, such as Amazon S3 or Amazon Glacier.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 8:
- Concepts: Hybrid Transfer Execution
- Services: AWS Storage Gateway
- Key Insights: So now, let's talk about the AWS Storage Gateway.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 9:
- Concepts: Hybrid Transfer Execution
- Services: AWS Storage Gateway
- Key Insights: So very simply, it is a bridge between your on-premises data and your cloud data, so you have data on-premises, and you're going to bridge it using the Storage Gateway to the cloud.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 10:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Now, that looks simple, but we have different use cases for this.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 11:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: The first one is to do disaster recovery, so to back up your on-premise data into the cloud, or you can also do backup and restore, so to do a cloud migration or to extend your storage from on-premises to the cloud, and for example, your cloud has colder data, and your on-premises data has more warmer, more frequently used data.
- Hidden/Implicit Meaning: Cutover and execution signal; Hybrid movement signal.

Line 12:
- Concepts: Hybrid Transfer Execution
- Services: AWS Storage Gateway
- Key Insights: Also, you can, for example, instead prefer to have the majority of your data stored on AWS and use the Storage Gateway as an on-premises cache for low-latency file access.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 13:
- Concepts: Hybrid Transfer Execution
- Services: AWS Storage Gateway, Amazon S3
- Key Insights: So there are different kind of use cases, and therefore, there are different kinds of Storage Gateway, and there are a few of them, so the first one is the S3 File Gateway, the Volume Gateway, and the Tape Gateway.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 14:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: I will be explaining all of those in this lecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 15:
- Concepts: Migration Operational Context
- Services: Amazon S3
- Key Insights: So first, we have the Amazon S3 File Gateway.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 16:
- Concepts: Application and Server Relocation
- Services: Amazon Glacier, Amazon S3
- Key Insights: So we have an S3 bucket, and we can use whatever storage class we want, for example, S3 Standard, S3 Standard-IA, S3 One Zone-IA, or S3 Intelligent-Tiering, but not Glacier, and we want to connect this S3 bucket to an on-premises application server, but we want to use a standard network file system.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 17:
- Concepts: Application and Server Relocation
- Services: Amazon S3, Amazon Translate
- Key Insights: So for this, we're going to create an S3 File Gateway, which is going to allow our application server to use the NFS or the SMB protocol, and by using these protocols, behind the scene, the S3 File Gateway is going to translate those requests into HTTPS requests for your Amazon S3 buckets.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 18:
- Concepts: Application and Server Relocation
- Services: Amazon S3
- Key Insights: So from an application server perspective, it looks like it's accessing a normal file share, but in fact, behind the scenes, it is using an Amazon S3 buckets, and this is how you expose S3 objects onto on-premises application servers.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 19:
- Concepts: Migration Operational Context
- Services: Amazon Glacier, Amazon S3
- Key Insights: Then if you wanted to archive some of these objects, you could create a lifecycle policy for your S3 bucket to transition objects after a while to S3 Glacier in order to have them archived.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 20:
- Concepts: Migration Operational Context
- Services: AWS Config, Amazon S3
- Key Insights: So whatever buckets you configure with your S3 File Gateway are going to be accessible using the NFS and SMB protocol, and on top of it, the most recently used data is cached in the File Gateway for rapid access, so not your entire S3 bucket is on the File Gateway, but your most recently files that are most recently used files.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 21:
- Concepts: Migration Operational Context
- Services: Amazon Glacier, Amazon S3
- Key Insights: So as I said, it supports different storage classes for your S3 buckets, and you can transition to S3 Glacier using a lifecycle policy.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 22:
- Concepts: Migration Operational Context
- Services: Amazon S3
- Key Insights: Now, to access your bucket, you need to create IAM roles for each File Gateway, and then if you were to use the SMB protocol, because it is more native for Windows file systems, you have integration with Active Directory for user authentication, so that means that your users can be authentified with your S3 File Gateway before accessing it, and then therefore accessing your S3 buckets.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 23:
- Concepts: Migration Operational Context
- Services: Amazon S3
- Key Insights: So that's the Amazon S3 File Gateway.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 24:
- Concepts: Migration Operational Context
- Services: Amazon EBS, Amazon S3
- Key Insights: Next. we have the Volume Gateway, and this is block storage using the iSCSI protocol backed by Amazon S3, and the idea is that you will have your volumes being backed up by EBS snapshots, which can, in turn, help you restore on-premises volumes in case you need to.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 25:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So you have two types of Volume Gateway.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 26:
- Concepts: Migration Operational Context
- Services: Amazon S3
- Key Insights: You have the cached volumes to get low-latency access to the most recent volume data, or stored volume, where the entire dataset is on-premises, and there is a scheduled backup to Amazon S3.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 27:
- Concepts: Application and Server Relocation
- Services: Amazon EBS, Amazon S3
- Key Insights: So here, our application server needs to be backed up, and so using this protocol, we're going to get a Volume Gateway, and the Volume Gateway will create Amazon EBS snapshots backed by Amazon S3.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 28:
- Concepts: Application and Server Relocation
- Services: AWS SAM
- Key Insights: So the same logic here, but here, the goal of the Volume Gateway really is to back up your volumes of your on on-premises servers.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 29:
- Concepts: Migration Operational Context
- Services: AWS SAM, Amazon Glacier, Amazon S3
- Key Insights: Tape Gateway is that if you have some companies that have, for example, a tape backup system using physical tapes, then with the Tape Gateway, you do the same process, but the tapes are going to be backed up in the cloud, and so this virtual tape library, or VTL, is going to be backed by Amazon S3 and Glacier.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 30:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: You're going to back up existing data using tape-based process and using the iSCSI interface, and then this is going to work with leading backup software vendors.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 31:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: So diagram you can expect, the corporate data center has a backup server, which is tape-based.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 32:
- Concepts: Migration Operational Context
- Services: Amazon Glacier, Amazon S3
- Key Insights: The Tape Gateway will do the interface into the cloud by storing the tapes into Amazon S3 or in Amazon Glacier.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 33:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Finally, as you can see in all these diagrams from before, the gateway has to be installed on your corporate data center.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 34:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: It has to run within your corporate data center, but sometimes, you do not have virtual servers to run this additional gateway.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 35:
- Concepts: Hybrid Transfer Execution
- Services: AWS Storage Gateway
- Key Insights: So let's try to summarize the Storage Gateway service.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 36:
- Concepts: Hybrid Transfer Execution
- Services: AWS Storage Gateway
- Key Insights: So we have on-premises, where we deploy a Storage Gateway VM, and then we have the Storage Gateway service, and then we have the cloud of AWS.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 37:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So if we want to have a File Gateway with a local cache, this is the use case, where we have a user group file share, and we want to access it over the NFS or the SMB protocol.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 38:
- Concepts: Migration Operational Context
- Services: Amazon Glacier, Amazon S3
- Key Insights: Option number one, we connect this into directly an S3 File Gateway, so therefore, your data is going to be backed by Amazon S3, and that includes many storage tiers except Glacier and Glacier Deep Archive. but we can create a lifecycle policy to send this into any storage class on Amazon S3, including S3 Glacier.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 39:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: Now, the other use case for a Volume Gateway is to have application servers mount volumes over the iSCSI protocol.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 40:
- Concepts: Hybrid Transfer Execution
- Services: AWS Storage Gateway, Amazon EBS, Amazon S3
- Key Insights: So what we do is that this Volume Gateway is going to be linked through Storage Gateway to Amazon S3, so this is where the data of your volume is going to be, and then Amazon S3 data can be transformed into AWS EBS volumes for really being restored on AWS.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 41:
- Concepts: Application and Server Relocation
- Services: Amazon Glacier, Amazon S3
- Key Insights: Next, we have your backup applications, connecting over the iSCSI VTL protocol to a Tape Gateway, and the Tape Gateway is connected to Amazon S3 as a tape library, and then we can transition these tapes into the Glacier and Glacier Deep Archive tier to create an archive of your tapes.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 42:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So hopefully, that summarizes everything we've seen in this lecture and you understand it.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 43:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/14_Migration/139_Storage Gateway - Advanced Concepts.txt

Line 1:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Next, what can we do, thanks to the File Gateway?
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 2:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So here is some interesting thing to think about when you're a solution architect.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 3:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: So our traditional server can access our File Gateway appliance on-premise using the NFS or the SMB protocol.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 4:
- Concepts: Migration Operational Context
- Services: Amazon S3
- Key Insights: And as we said, the files are going to be stored in the backend into Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 5:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Now it is 100% for you possible to use a VPC, and create another File Gateway appliance and connect your E2 instances over with NFS and SMB.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 6:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Why would you do this?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 7:
- Concepts: Migration Operational Context
- Services: Amazon S3
- Key Insights: Well, maybe you want your EC 2 instances to access Amazon S3 as a file system and therefore you're going to use a File Gateway appliance for that.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 8:
- Concepts: Application and Server Relocation, Migration Strategy and Discovery
- Services: AWS SAM
- Key Insights: So this could also be a way for you to migrate your applications from on-premise to the cloud using the same protocol the same NFS or SMB protocol, and it would be a first step to move your migration, your workloads into the cloud.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 9:
- Concepts: Migration Operational Context
- Services: Amazon S3
- Key Insights: But once the data is in Amazon S3, remember every single file is going to be in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 10:
- Concepts: Migration Operational Context
- Services: AWS Lambda, Amazon S3
- Key Insights: Then you can use S3 events to send that information to Lambda. and then Lambda functions, maybe process some of these objects for you.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 11:
- Concepts: Migration Operational Context
- Services: Amazon Athena, Amazon S3
- Key Insights: Or we can use Athena to query all of our data in Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 12:
- Concepts: Migration Operational Context
- Services: Amazon Athena, Amazon S3
- Key Insights: The beautiful thing is that Athena only uses the resources of Amazon S3, and so it doesn't impact the performance of our File Gateway.
- Hidden/Implicit Meaning: Constraint or limitation signal; Hybrid movement signal.

Line 13:
- Concepts: Migration Operational Context
- Services: Amazon EMR, Amazon Redshift
- Key Insights: We can use Redshift Spectrum or even EMR to analyze the data.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 14:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Finally, we are able to use cross region replication to, for example, back up the data into another region for disaster recovery.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 15:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So by using the File Gateway, it seems very simple.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 16:
- Concepts: Migration Operational Context
- Services: Amazon S3
- Key Insights: We are exposing a network file system to our corporate data center, but because the data appears to be in S3 at the end, it opens up so many different possibilities, and I hope you see them.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 17:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Next we could have read only replicas.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So for example, you wanted to replicate a file system from one on-premise data center to another.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 19:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: In the first on-premise data center, you would create your File Gateway plans number one and your applications would write some files into it.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 20:
- Concepts: Migration Operational Context
- Services: Amazon S3
- Key Insights: And then you would appear in an Amazon S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 21:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: And in another on-premise data center, you can create a read only replica, so that your file system, your application servers can read a read only copy of your File Gateway appliance to get the data fast with low latency.
- Hidden/Implicit Meaning: Constraint or limitation signal; Hybrid movement signal.

Line 22:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So this is yet another architecture you have to think about when you're using your File Gateway appliance.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 23:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Next, there's way to do backup and lifecycle policies.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 24:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So let's take an example.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 25:
- Concepts: Application and Server Relocation
- Services: Amazon S3
- Key Insights: Our file system, our application servers, are talking to our file system on the File Gateway and the files are going to be backed up into Amazon S3.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 26:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: But it is possible for these files to be used less and less.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 27:
- Concepts: Migration Operational Context
- Services: Amazon Glacier, Amazon S3
- Key Insights: And so we can define S3 lifecycle policies, maybe to migrate stuff to Amazon S3 Standard-IA first for infrequent access, and then after a while migrate it to Amazon S3 Glacier.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 28:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: So what we've done is that effectively, we've made sure that we are getting some cost savings for our file system on top of getting an NFS interface for our application server on-premise.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 29:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So yet another thing to think about.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 30:
- Concepts: Migration Operational Context
- Services: Amazon S3
- Key Insights: But this is Amazon S3, so we have so many other possibilities.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 31:
- Concepts: Migration Operational Context
- Services: Amazon S3
- Key Insights: The first one is that if you do enable Amazon S3 ObjectVersioning, then you can store multiple object versions as they are modified, which is extremely helpful if one of your engineers, or one of your employees, is asking you to restore a specific file to a previous version.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 32:
- Concepts: Migration Operational Context
- Services: Amazon S3
- Key Insights: Because you're storing every single change in Amazon S3, it is definitely possible for you to restore any file to any previous version, or you can even restore an entire file system to a previous version.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 33:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: But if you do so, to restore a file or a file system to a previous version, you need to let your File Gateway appliance know that there has been a change.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 34:
- Concepts: Migration Operational Context
- Services: Amazon S3
- Key Insights: And so there is a cache, a RefreshCache API on the gateway so that you notify the gateway that there has been some restore happening, some changes happening on the Amazon S3 buckets, and there will be a synchronization happening in the backend.
- Hidden/Implicit Meaning: Cutover and execution signal; Hybrid movement signal.

Line 35:
- Concepts: Migration Operational Context
- Services: Amazon S3
- Key Insights: Another one is to use Amazon S3 Object Lock.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 36:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And this enables the File Gateway to be a Write Once Read Many, so WORM data network file system.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 37:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that if there are any modifications or renames in the file share clients, the file gateway will create a new version of the object without affecting prior versions and the original locked version will remain unchanged.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 38:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Effectively, the giving, making sure that you're not losing any data and that the original data will never be deleted.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 39:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And so for compliance reasons, or audits, or restore again versions, then reasons this could be really, really helpful.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 40:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 41:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

## Step 2 - Consolidation

### 1. Concepts List
- Application and Server Relocation
- Hybrid Transfer Execution
- Migration Operational Context
- Migration Strategy and Discovery

### 2. Services List
- AWS Config
- AWS Lambda
- AWS SAM
- AWS Storage Gateway
- Amazon Athena
- Amazon EBS
- Amazon EC2
- Amazon EFS
- Amazon EMR
- Amazon FSx
- Amazon Glacier
- Amazon Redshift
- Amazon S3
- Amazon Translate

### 3. Features List
- migration
- storage gateway

### 4. Use Cases
- 138_Storage Gateway.txt:4: So we have some services that we really like in AWS, such as Amazon S3, which is a proprietary storage technology, which is unlike EFS, which is an NFS compliance file system, so how would you expose, for example, the S3 data on-premises?
- 138_Storage Gateway.txt:10: Now, that looks simple, but we have different use cases for this.
- 138_Storage Gateway.txt:11: The first one is to do disaster recovery, so to back up your on-premise data into the cloud, or you can also do backup and restore, so to do a cloud migration or to extend your storage from on-premises to the cloud, and for example, your cloud has colder data, and your on-premises data has more warmer, more frequently used data.
- 138_Storage Gateway.txt:12: Also, you can, for example, instead prefer to have the majority of your data stored on AWS and use the Storage Gateway as an on-premises cache for low-latency file access.
- 138_Storage Gateway.txt:13: So there are different kind of use cases, and therefore, there are different kinds of Storage Gateway, and there are a few of them, so the first one is the S3 File Gateway, the Volume Gateway, and the Tape Gateway.
- 138_Storage Gateway.txt:16: So we have an S3 bucket, and we can use whatever storage class we want, for example, S3 Standard, S3 Standard-IA, S3 One Zone-IA, or S3 Intelligent-Tiering, but not Glacier, and we want to connect this S3 bucket to an on-premises application server, but we want to use a standard network file system.
- 138_Storage Gateway.txt:17: So for this, we're going to create an S3 File Gateway, which is going to allow our application server to use the NFS or the SMB protocol, and by using these protocols, behind the scene, the S3 File Gateway is going to translate those requests into HTTPS requests for your Amazon S3 buckets.
- 138_Storage Gateway.txt:29: Tape Gateway is that if you have some companies that have, for example, a tape backup system using physical tapes, then with the Tape Gateway, you do the same process, but the tapes are going to be backed up in the cloud, and so this virtual tape library, or VTL, is going to be backed by Amazon S3 and Glacier.
- 138_Storage Gateway.txt:37: So if we want to have a File Gateway with a local cache, this is the use case, where we have a user group file share, and we want to access it over the NFS or the SMB protocol.
- 138_Storage Gateway.txt:39: Now, the other use case for a Volume Gateway is to have application servers mount volumes over the iSCSI protocol.
- 139_Storage Gateway - Advanced Concepts.txt:2: So here is some interesting thing to think about when you're a solution architect.
- 139_Storage Gateway - Advanced Concepts.txt:8: So this could also be a way for you to migrate your applications from on-premise to the cloud using the same protocol the same NFS or SMB protocol, and it would be a first step to move your migration, your workloads into the cloud.
- 139_Storage Gateway - Advanced Concepts.txt:14: Finally, we are able to use cross region replication to, for example, back up the data into another region for disaster recovery.
- 139_Storage Gateway - Advanced Concepts.txt:18: So for example, you wanted to replicate a file system from one on-premise data center to another.
- 139_Storage Gateway - Advanced Concepts.txt:22: So this is yet another architecture you have to think about when you're using your File Gateway appliance.
- 139_Storage Gateway - Advanced Concepts.txt:27: And so we can define S3 lifecycle policies, maybe to migrate stuff to Amazon S3 Standard-IA first for infrequent access, and then after a while migrate it to Amazon S3 Glacier.

### 5. Constraints / Limitations
- 138_Storage Gateway.txt:3: Maybe you have a long cloud migration, maybe you have security requirements or compliance requirements, maybe it's part of your strategy to only leverage a cloud for elastic workloads, but to keep a lot of stuff on-premises.
- 139_Storage Gateway - Advanced Concepts.txt:12: The beautiful thing is that Athena only uses the resources of Amazon S3, and so it doesn't impact the performance of our File Gateway.
- 139_Storage Gateway - Advanced Concepts.txt:17: Next we could have read only replicas.
- 139_Storage Gateway - Advanced Concepts.txt:21: And in another on-premise data center, you can create a read only replica, so that your file system, your application servers can read a read only copy of your File Gateway appliance to get the data fast with low latency.

### 6. Patterns / Architectures
- 139_Storage Gateway - Advanced Concepts.txt:22: So this is yet another architecture you have to think about when you're using your File Gateway appliance.

## Step 3 - Deep Expansion (Migration Concepts)

### Core Services in This Topic
- AWS Config: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Lambda: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Storage Gateway: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Athena: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EBS: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EC2: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EFS: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EMR: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon FSx: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

### Architect-Level Concept Expansion
- Application and Server Relocation: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Hybrid Transfer Execution: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Migration Operational Context: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Migration Strategy and Discovery: treat this as a design lever that changes topology, risk posture, or operational workflow.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Migration assessment | Migration Evaluator / strategy tooling | Azure Migrate | Migration Center / assessment tooling |
| Server and app migration | MGN / App2Container / VMware Cloud on AWS | Azure Migrate / App Service migration / VMware Solution | Migrate to Virtual Machines / Anthos / VMware Engine |
| Database migration | DMS | Database Migration Service | Database Migration Service |
| Bulk and hybrid transfer | Snow Family / DataSync / Storage Gateway / Transfer Family | Data Box / File Sync / SFTP patterns | Transfer Appliance / Storage Transfer Service / Migrate for file data |

### Trade-offs and Decision Notes
- Migration Knowledge Base is strongest when design decisions are expressed as control objectives rather than vendor-only terminology.
- Cross-cloud portability improves when service choice, failure behavior, and governance model are documented together.
- Cloud-native implementations should still preserve comparable intent across AWS, Azure, and GCP.

## Phase-wise Architect-Level Organization

### Phase 1 - Foundations
- Migration quality depends on assessment accuracy, target-state clarity, and cutover realism.
- Tooling should follow strategy, not substitute for it.

### Phase 2 - Core Services
- Implement database, application, and bulk-transfer paths as separate workstreams with explicit dependencies.
- Treat landing zone and cutover readiness as first-class architecture gates.

### Phase 3 - Advanced Patterns
- Use replication and hybrid movement tooling carefully so migration convenience does not hide state drift or rollback weakness.
- Wave design should reflect dependency boundaries, not just team ownership.

### Phase 4 - System Design
- Reference architecture: assessment, replication and transfer plane, landing targets, and cutover governance.
- Scaling considerations: dependency discovery, migration wave coordination, bulk transfer windows, and rollback confidence.
- Cost considerations: duplicated environments, prolonged coexistence, and overuse of heavyweight migration tooling.
