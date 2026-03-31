# 01_Migration_Strategies_Assessment.md

## Scope
- Topic: 7Rs thinking, discovery, assessment, landing targets, and migration planning
- Files processed: 13
- Extracted non-empty transcript lines: 460
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Migration Knowledge Base
- Cross-domain referrals: 2

## Real Material - Architect Learning Build (Migration: Migration Strategies Assessment)

This section is the study-first architecture guide for 7rs thinking, discovery, assessment, landing targets, and migration planning.

### Phase 1 - Foundations

#### Module: Migration Strategies Assessment Mental Model
- Use migration strategies assessment decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: Migration Strategies Assessment Mental Model
- Primary transcript files:
- outputs/aws-solutions-architect-professional/14_Migration/146_VM Migrations Services.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/28_Disaster Recovery & Migrations/358_On-Premises Strategies with AWS.txt
- outputs/aws-solutions-architect-professional/14_Migration/147_AWS Migration Evaluator.txt
- outputs/aws-solutions-architect-professional/14_Migration/137_Cloud Migration Strategies - The 7Rs.txt
- outputs/aws-solutions-architect-professional/14_Migration/143_AWS CART - Cloud Adoption Readiness Tool.txt
- Top concept clusters from transcript metadata:
- Application and Server Relocation
- Migration Strategy and Discovery
- Database and Data Movement
- Cutover and Landing Zone Readiness
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 13
- Module-selected transcript files: 5
- Key insight candidates scanned (topic): 460
- Key insights inside selected files: 24
- Unique concept tags in selected files: 4

##### Transcript-Enriched Learning Notes
- Then when it comes to moving from on-premises to the cloud, you can use the AWS Application Discovery Service to gather together information about your on-premises servers and plan migration.
- We can have migration services, such as Application Discovery Service, AWS Migration Hub, Database Migration Service and Server Migration Service, DMS and SMS.
- Now, for AWS Application Discovery Service, well, this is a service that allows you to gather information about your on-premise servers and plan a migration.
- So the first one is Application Discovery Services and it will help you plan migration projects by gathering information about on-premise data centers.
- And what you can do is that you can shape the data you have into this template, and these sources of data will allow you to run the Migration Evaluator Service, which is going to give you quick insights to understand your customized cost insights, and to make sure that your migration can be cost efficient and also good for your business.
- And then finally, not mentioning in this lecture but you've known about it already, this is the AWS Database Migration Service or DMS, which is going to be used to replicate your on-premises servers onto AWS or from AWS to AWS or even from AWS to on-premises and this is for databases only, of course.
- This is very high level, but it does give you some server utilization information and dependency mappings, and that could be quite helpful when you want to do a massive migration from on-premise to the cloud.
- So this service, the Application Migration Service, MGN, supports a right range of platforms, supports different operating systems, as well as databases, and it gives you minimal downtime and reduced costs.
- What I would recommend you to do is to actually read the blog if you can, after this lecture, just to get a better understanding of cloud migration, if that's something you're interested into.
- Now, both of them combined together are equal to the Application Migration Service and if you see CloudEndure Migration or SMS in your exam, this is the exact same service.
- Then, we have AWS Database Migration Service, or DMS, which allows you to replicate from on-premise to AWS, AWS to AWS, or AWS to on-premise for your database.
- You're going to get information about server utilization and dependency mapping and then you can track the entire migration with the AWS Migration Hub.

##### Polished Architect Notes
- Transcript signals that then when it comes to moving from on-premises to the cloud, you can use the AWS Application Discovery Service to gather together information about your on-premises servers and plan migration.
- Transcript signals that we can have migration services, such as Application Discovery Service, AWS Migration Hub, Database Migration Service and Server Migration Service, DMS and SMS.
- Transcript signals that now, for AWS Application Discovery Service, well, this is a service that allows you to gather information about your on-premise servers and plan a migration.
- Transcript signals that so the first one is Application Discovery Services and it will help you plan migration projects by gathering information about on-premise data centers.
- Transcript signals that and what you can do is that you can shape the data you have into this template, and these sources of data will allow you to run the Migration Evaluator Service, which is going to give you quick insights to understand your customized cost insights, and to make sure that your migration can be cost efficient and also good for your business.
- Transcript signals that and then finally, not mentioning in this lecture but you've known about it already, this is the AWS Database Migration Service or DMS, which is going to be used to replicate your on-premises servers onto AWS or from AWS to AWS or even from AWS to on-premises and this is for databases only, of course.
- Transcript signals that this is very high level, but it does give you some server utilization information and dependency mappings, and that could be quite helpful when you want to do a massive migration from on-premise to the cloud.
- Transcript signals that so this service, the Application Migration Service, MGN, supports a right range of platforms, supports different operating systems, as well as databases, and it gives you minimal downtime and reduced costs.
- Transcript signals that what I would recommend you to do is to actually read the blog if you can, after this lecture, just to get a better understanding of cloud migration, if that's something you're interested into.
- Transcript signals that now, both of them combined together are equal to the Application Migration Service and if you see CloudEndure Migration or SMS in your exam, this is the exact same service.
- Transcript signals that then, we have AWS Database Migration Service, or DMS, which allows you to replicate from on-premise to AWS, AWS to AWS, or AWS to on-premise for your database.
- Transcript signals that you're going to get information about server utilization and dependency mapping and then you can track the entire migration with the AWS Migration Hub.

##### Architect Synthesis (Transcript-Derived)
- Treat Application and Server Relocation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Migration Strategy and Discovery as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Database and Data Movement as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Cutover and Landing Zone Readiness as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: then when it comes to moving from on-premises to the cloud, you can use the AWS Application Discovery Service to gather together information about your on-premises servers and plan migration.
- Design implication: we can have migration services, such as Application Discovery Service, AWS Migration Hub, Database Migration Service and Server Migration Service, DMS and SMS.
- Design implication: now, for AWS Application Discovery Service, well, this is a service that allows you to gather information about your on-premise servers and plan a migration.
- Design implication: so the first one is Application Discovery Services and it will help you plan migration projects by gathering information about on-premise data centers.
- Design implication: and what you can do is that you can shape the data you have into this template, and these sources of data will allow you to run the Migration Evaluator Service, which is going to give you quick insights to understand your customized cost insights, and to make sure that your migration can be cost efficient and also good for your business.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/aws-solutions-architect-professional/14_Migration/146_VM Migrations Services.txt
- outputs/aws-solutions-architect-professional/14_Migration/147_AWS Migration Evaluator.txt
- outputs/aws-solutions-architect-professional/14_Migration/137_Cloud Migration Strategies - The 7Rs.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/28_Disaster Recovery & Migrations/358_On-Premises Strategies with AWS.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/28_Disaster Recovery & Migrations/363_VMware Cloud on AWS.txt
- Top concept clusters from transcript metadata:
- Application and Server Relocation
- Migration Strategy and Discovery
- Database and Data Movement
- Migration Operational Context
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 13
- Module-selected transcript files: 5
- Key insight candidates scanned (topic): 460
- Key insights inside selected files: 21
- Unique concept tags in selected files: 4

##### Transcript-Enriched Learning Notes
- Then when it comes to moving from on-premises to the cloud, you can use the AWS Application Discovery Service to gather together information about your on-premises servers and plan migration.
- And what you can do is that you can shape the data you have into this template, and these sources of data will allow you to run the Migration Evaluator Service, which is going to give you quick insights to understand your customized cost insights, and to make sure that your migration can be cost efficient and also good for your business.
- And then finally, not mentioning in this lecture but you've known about it already, this is the AWS Database Migration Service or DMS, which is going to be used to replicate your on-premises servers onto AWS or from AWS to AWS or even from AWS to on-premises and this is for databases only, of course.
- So to summarize, there is a few services you can use with on-premises, so first of all, just so you know, you can download the Amazon Linux 2 AMI as a virtual machine in the ISO format, which allows you to load it onto VMware, KVM, VirtualBox and Microsoft Hyper-V.
- So for example, you have servers that you manage on-premises using VMware software-defined data centers, so SSDC, and you just want to keep the same but use now VMware cloud on AWS, you just relocate, but nothing has changed.
- So relocate is actually to move your app from on-premises to its cloud version, or move EC2 instances to a different VPC, a different account, or a different AWS region.
- We can have migration services, such as Application Discovery Service, AWS Migration Hub, Database Migration Service and Server Migration Service, DMS and SMS.
- Now, for AWS Application Discovery Service, well, this is a service that allows you to gather information about your on-premise servers and plan a migration.
- So the first one is Application Discovery Services and it will help you plan migration projects by gathering information about on-premise data centers.
- And finally, you have the AWS Application Migration Service, or MGN, which is used for incremental replication of on-premises live servers to AWS.
- So now let's talk about AWS Migration Evaluator, which is a service to help you build a data-driven business case for migrations to AWS.
- When you have an on-premises data center, sometimes you would use the VMware Cloud to manage your own on-premise data center.

##### Polished Architect Notes
- Transcript signals that then when it comes to moving from on-premises to the cloud, you can use the AWS Application Discovery Service to gather together information about your on-premises servers and plan migration.
- Transcript signals that and what you can do is that you can shape the data you have into this template, and these sources of data will allow you to run the Migration Evaluator Service, which is going to give you quick insights to understand your customized cost insights, and to make sure that your migration can be cost efficient and also good for your business.
- Transcript signals that and then finally, not mentioning in this lecture but you've known about it already, this is the AWS Database Migration Service or DMS, which is going to be used to replicate your on-premises servers onto AWS or from AWS to AWS or even from AWS to on-premises and this is for databases only, of course.
- Transcript signals that so to summarize, there is a few services you can use with on-premises, so first of all, just so you know, you can download the Amazon Linux 2 AMI as a virtual machine in the ISO format, which allows you to load it onto VMware, KVM, VirtualBox and Microsoft Hyper-V.
- Transcript signals that so for example, you have servers that you manage on-premises using VMware software-defined data centers, so SSDC, and you just want to keep the same but use now VMware cloud on AWS, you just relocate, but nothing has changed.
- Transcript signals that so relocate is actually to move your app from on-premises to its cloud version, or move EC2 instances to a different VPC, a different account, or a different AWS region.
- Transcript signals that we can have migration services, such as Application Discovery Service, AWS Migration Hub, Database Migration Service and Server Migration Service, DMS and SMS.
- Transcript signals that now, for AWS Application Discovery Service, well, this is a service that allows you to gather information about your on-premise servers and plan a migration.
- Transcript signals that so the first one is Application Discovery Services and it will help you plan migration projects by gathering information about on-premise data centers.
- Transcript signals that and finally, you have the AWS Application Migration Service, or MGN, which is used for incremental replication of on-premises live servers to AWS.
- Transcript signals that so now let's talk about AWS Migration Evaluator, which is a service to help you build a data-driven business case for migrations to AWS.
- Transcript signals that when you have an on-premises data center, sometimes you would use the VMware Cloud to manage your own on-premise data center.

##### Architect Synthesis (Transcript-Derived)
- Treat Application and Server Relocation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Migration Strategy and Discovery as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Database and Data Movement as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Migration Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: then when it comes to moving from on-premises to the cloud, you can use the AWS Application Discovery Service to gather together information about your on-premises servers and plan migration.
- Design implication: and what you can do is that you can shape the data you have into this template, and these sources of data will allow you to run the Migration Evaluator Service, which is going to give you quick insights to understand your customized cost insights, and to make sure that your migration can be cost efficient and also good for your business.
- Design implication: and then finally, not mentioning in this lecture but you've known about it already, this is the AWS Database Migration Service or DMS, which is going to be used to replicate your on-premises servers onto AWS or from AWS to AWS or even from AWS to on-premises and this is for databases only, of course.
- Design implication: so to summarize, there is a few services you can use with on-premises, so first of all, just so you know, you can download the Amazon Linux 2 AMI as a virtual machine in the ISO format, which allows you to load it onto VMware, KVM, VirtualBox and Microsoft Hyper-V.
- Design implication: so for example, you have servers that you manage on-premises using VMware software-defined data centers, so SSDC, and you just want to keep the same but use now VMware cloud on AWS, you just relocate, but nothing has changed.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/aws-solutions-architect-professional/14_Migration/147_AWS Migration Evaluator.txt
- outputs/aws-solutions-architect-professional/14_Migration/146_VM Migrations Services.txt
- outputs/aws-solutions-architect-professional/14_Migration/137_Cloud Migration Strategies - The 7Rs.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/28_Disaster Recovery & Migrations/353_Disaster Recovery in AWS.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/28_Disaster Recovery & Migrations/358_On-Premises Strategies with AWS.txt
- outputs/aws-solutions-architect-professional/14_Migration/140_Snow Family.txt
- outputs/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/069_VPC Endpoint architectures - Accessing on-premises services.txt
- Top concept clusters from transcript metadata:
- Migration Strategy and Discovery
- Application and Server Relocation
- Database and Data Movement
- Migration Operational Context
- Hybrid Transfer Execution
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 13
- Module-selected transcript files: 7
- Key insight candidates scanned (topic): 460
- Key insights inside selected files: 24
- Unique concept tags in selected files: 5

##### Transcript-Enriched Learning Notes
- And what you can do is that you can shape the data you have into this template, and these sources of data will allow you to run the Migration Evaluator Service, which is going to give you quick insights to understand your customized cost insights, and to make sure that your migration can be cost efficient and also good for your business.
- Then when it comes to moving from on-premises to the cloud, you can use the AWS Application Discovery Service to gather together information about your on-premises servers and plan migration.
- And then finally, not mentioning in this lecture but you've known about it already, this is the AWS Database Migration Service or DMS, which is going to be used to replicate your on-premises servers onto AWS or from AWS to AWS or even from AWS to on-premises and this is for databases only, of course.
- And you may want to just retain the resource on premises, for example, because of security, data compliance, performance, and unresolved dependencies, or because maybe there is no business value to migrate or it's too complicated.
- So this service, the Application Migration Service, MGN, supports a right range of platforms, supports different operating systems, as well as databases, and it gives you minimal downtime and reduced costs.
- So basically optimizing for the RPO and the RTO does drive some solution architecture decisions, and obviously, the smaller you want these things to be, usually the higher the cost.
- So the reason you may want to do this is because you actually want to use the cloud to improve the scalability, the performance, security, and agility of your application.
- We can have migration services, such as Application Discovery Service, AWS Migration Hub, Database Migration Service and Server Migration Service, DMS and SMS.
- Now, for AWS Application Discovery Service, well, this is a service that allows you to gather information about your on-premise servers and plan a migration.
- So the first one is Application Discovery Services and it will help you plan migration projects by gathering information about on-premise data centers.
- And finally, you have the AWS Application Migration Service, or MGN, which is used for incremental replication of on-premises live servers to AWS.
- So now let's talk about AWS Migration Evaluator, which is a service to help you build a data-driven business case for migrations to AWS.

##### Polished Architect Notes
- Transcript signals that and what you can do is that you can shape the data you have into this template, and these sources of data will allow you to run the Migration Evaluator Service, which is going to give you quick insights to understand your customized cost insights, and to make sure that your migration can be cost efficient and also good for your business.
- Transcript signals that then when it comes to moving from on-premises to the cloud, you can use the AWS Application Discovery Service to gather together information about your on-premises servers and plan migration.
- Transcript signals that and then finally, not mentioning in this lecture but you've known about it already, this is the AWS Database Migration Service or DMS, which is going to be used to replicate your on-premises servers onto AWS or from AWS to AWS or even from AWS to on-premises and this is for databases only, of course.
- Transcript signals that and you may want to just retain the resource on premises, for example, because of security, data compliance, performance, and unresolved dependencies, or because maybe there is no business value to migrate or it's too complicated.
- Transcript signals that so this service, the Application Migration Service, MGN, supports a right range of platforms, supports different operating systems, as well as databases, and it gives you minimal downtime and reduced costs.
- Transcript signals that so basically optimizing for the RPO and the RTO does drive some solution architecture decisions, and obviously, the smaller you want these things to be, usually the higher the cost.
- Transcript signals that so the reason you may want to do this is because you actually want to use the cloud to improve the scalability, the performance, security, and agility of your application.
- Transcript signals that we can have migration services, such as Application Discovery Service, AWS Migration Hub, Database Migration Service and Server Migration Service, DMS and SMS.
- Transcript signals that now, for AWS Application Discovery Service, well, this is a service that allows you to gather information about your on-premise servers and plan a migration.
- Transcript signals that so the first one is Application Discovery Services and it will help you plan migration projects by gathering information about on-premise data centers.
- Transcript signals that and finally, you have the AWS Application Migration Service, or MGN, which is used for incremental replication of on-premises live servers to AWS.
- Transcript signals that so now let's talk about AWS Migration Evaluator, which is a service to help you build a data-driven business case for migrations to AWS.

##### Architect Synthesis (Transcript-Derived)
- Treat Migration Strategy and Discovery as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Application and Server Relocation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Database and Data Movement as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Migration Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Hybrid Transfer Execution as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: and what you can do is that you can shape the data you have into this template, and these sources of data will allow you to run the Migration Evaluator Service, which is going to give you quick insights to understand your customized cost insights, and to make sure that your migration can be cost efficient and also good for your business.
- Design implication: then when it comes to moving from on-premises to the cloud, you can use the AWS Application Discovery Service to gather together information about your on-premises servers and plan migration.
- Design implication: and then finally, not mentioning in this lecture but you've known about it already, this is the AWS Database Migration Service or DMS, which is going to be used to replicate your on-premises servers onto AWS or from AWS to AWS or even from AWS to on-premises and this is for databases only, of course.
- Design implication: and you may want to just retain the resource on premises, for example, because of security, data compliance, performance, and unresolved dependencies, or because maybe there is no business value to migrate or it's too complicated.
- Design implication: so this service, the Application Migration Service, MGN, supports a right range of platforms, supports different operating systems, as well as databases, and it gives you minimal downtime and reduced costs.

### Phase 2 - Core Services
- AWS SAM should be understood in terms of request path, control plane, and operational boundary.
- Elastic Load Balancing should be understood in terms of request path, control plane, and operational boundary.
- AWS Config should be understood in terms of request path, control plane, and operational boundary.
- Amazon S3 should be understood in terms of request path, control plane, and operational boundary.
- AWS Storage Gateway should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: Application and Server Relocation becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Cutover and Landing Zone Readiness becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Database and Data Movement becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Hybrid Transfer Execution becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Migration Operational Context becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design migration strategies assessment with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when migration strategies assessment decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: Key Insights: And then you can create VPC endpoint service using this network load balancer.
- Signal 2: Key Insights: And then in the consumer VPC you can create the VPC interface endpoint for this VPC endpoint service.
- Signal 3: Key Insights: For that you have to create route 53 inbound resolver endpoint.
- Signal 4: Key Insights: So now as you have the route 53 inbound resolver, you should also configure the DNS forwarder on your side, which sends all the requests for S3 dot AP South one dot Amazon Aws.com to this route 53 resolver inbound endpoint IP address.
- Signal 5: Key Insights: If you schedule regular snapshots and you back them up, then your RPO is going to be maybe 24 hours or one hour based on how frequently you do create these snapshots.
- Signal 6: Key Insights: It's called an active-active type of setup.
- Signal 7: Key Insights: Then you create disasters.
- Signal 8: Key Insights: The option number two, which is more continuous, is to use and create an Amazon Aurora Read Replica on top of your RDS MySQL.
- Signal 9: Key Insights: This will create a backup file and you put it in Amazon S3 and then there is an option from Amazon Aurora to directly import this backup file into a new Aurora MySQL DB cluster.
- Signal 10: Key Insights: You have two option to use the database snapshots restored as an Amazon Aurora database or you create an Amazon Aurora Read Replica of PostgreSQL to have to have a Read Replica and then you wait until a replication lag is zero to promote it into its own database cluster.

### Service-Specific Lab Paths
### Activity 1: AWS Application Discovery Service Lab for 7Rs thinking, discovery, assessment, landing targets, and migration planning
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

### Activity 2: AWS MGN Lab for 7Rs thinking, discovery, assessment, landing targets, and migration planning
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

### Activity 3: AWS DMS Lab for 7Rs thinking, discovery, assessment, landing targets, and migration planning
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

### Activity 4: AWS Migration Hub Lab for 7Rs thinking, discovery, assessment, landing targets, and migration planning
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

Use this lens to study 7Rs thinking, discovery, assessment, landing targets, and migration planning in a cloud-agnostic way: focus on capability first, provider name second.

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
| AWS Application Discovery Service | AWS Application Discovery Service | Azure Migrate Discovery and Assessment | Migration Center Discovery |
| AWS MGN | AWS MGN | Azure Migrate | Migrate to Virtual Machines |
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

- outputs/aws-certified-developer-associate-dva-c01/17_AWS Elastic Beanstalk/194_Beanstalk Migrations.txt (owned by AWS Compute Knowledge Base)
- outputs/aws-solutions-architect-professional/14_Migration/144_Disaster Recovery.txt (owned by AWS Disaster Recovery Knowledge Base)

## Step 1 - Line-by-Line Extraction

Every non-empty line from every primary source transcript is preserved below with extraction fields.

### File: outputs/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/069_VPC Endpoint architectures - Accessing on-premises services.txt

Line 1:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Okay, now that you understood how VPC endpoints work and Privatelink works, let's look at some of the interesting architectures that emerge using the VPC endpoint and Privatelink.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 2:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So ultimately it simplifies your overall network.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 3:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And you may look at these architectures.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 4:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: If you are using, say, too much of VPC peering connections or too much of transit gateways.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 5:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So it would really help you simplify your network and also save your cost.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 6:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And just a word of caution.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 7:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Maybe some of the architectures are little advanced, so don't worry about that.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 8:
- Concepts: Migration Operational Context
- Services: AWS SAM
- Key Insights: You might not have the same architecture scenarios in your exam, but I'm sure this will help you in your day to day operations if you are working in AWS networking, right?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 9:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So let's look at some of the architectures.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 10:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And very first architecture is what if you have your services deployed in your on premises data center.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 11:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So you are operating in a hybrid mode.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 12:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: In that case as well, you can expose your on premise services using the VPC endpoint service.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 13:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So in AWS you can see that you have consumer VPC and the provider VPC.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 14:
- Concepts: Migration Operational Context
- Services: Elastic Load Balancing
- Key Insights: And for creating the VPC endpoint service, you need a network load balancer.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 15:
- Concepts: Cutover and Landing Zone Readiness
- Services: Elastic Load Balancing
- Key Insights: But the catch here is that the target of this network load balancer can be in your on premises network.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 16:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 17:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Something like this.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 18:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: And of course in order to connect to this on premises server or services you need to have some private connectivity.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 19:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So that will be through either VPN or Direct Connect.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 20:
- Concepts: Application and Server Relocation, Cutover and Landing Zone Readiness
- Services: Elastic Load Balancing
- Key Insights: So after having this private connection, you can add this application server using IP as a target to this network load balancer.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 21:
- Concepts: Migration Operational Context
- Services: Elastic Load Balancing
- Key Insights: And then you can create VPC endpoint service using this network load balancer.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 22:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And then in the consumer VPC you can create the VPC interface endpoint for this VPC endpoint service.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 23:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And then client in the consumer VPC can access the services which are deployed in your on premises network.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 24:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Something like this.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 25:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 26:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So that's one interesting pattern when it comes to hosting your actual services in your on premises network.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 27:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So I hope it is clear.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 28:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And with that, now let's look at some of the additional architectures in the following lectures.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 29:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

### File: outputs/AWS Speciality/advanced-networking-specialty/09_VPC Private Connectivity_ VPC Endpoint & PrivateLink/071_VPC Endpoint architectures - Accessing from on-premises network.txt

Line 1:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 2:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Now this is very similar architecture to what we have seen earlier, just that this remote network is not inside AWS, it is outside of AWS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 3:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So you want to access the VPC endpoint through the VPN or Direct Connect, which is connected to your on premises network.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 4:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Now again, with respect to layer three connectivity, there is this connectivity.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 5:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So as long as you can access this private IP address or the VPC endpoint DNS, you can access the VPC endpoint services.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 6:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 7:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So let's start again.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 8:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So if you have the VPC DNS it will be resolved from the on premises because it can be resolved publicly.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 9:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: But as you know it will resolve to the private IP address of the interface endpoint.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 10:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And the connectivity should work.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 11:
- Concepts: Migration Operational Context
- Services: AWS SAM
- Key Insights: But the same problem, right?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 12:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: You don't want to add that endpoint URL to your commands when you fire that from your on premises host, right?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 13:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: That's not desirable.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 14:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So what do you do now?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 15:
- Concepts: Migration Operational Context
- Services: AWS SAM
- Key Insights: Now in this case, we can't follow the same approach as previous because in that case, we had associated the private hosted zone with VPC because VPC is a AWS construct, right?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 16:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And as you know, this DNS cannot be directly resolved from the on premises network.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 17:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So what do you do for that?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 18:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: For that you have to create route 53 inbound resolver endpoint.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 19:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And we have covered that in detail in the route 53 section.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 20:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So basically it allows you to send the DNS traffic to your VPC.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 21:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And if your VPC has a private hosted zone, it will also resolve the DNS from that private hosted zone.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 22:
- Concepts: Migration Operational Context
- Services: AWS Config, Amazon S3
- Key Insights: So now as you have the route 53 inbound resolver, you should also configure the DNS forwarder on your side, which sends all the requests for S3 dot AP South one dot Amazon Aws.com to this route 53 resolver inbound endpoint IP address.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 24:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So you would have that.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 25:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: And then your on premise server will get the DNS resolution using this DNS forwarder.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 26:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And it will get the DNS of the interface endpoint, which will further be resolved to the private IP of this interface endpoint.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 27:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: And finally, your on premise server can access the VPC endpoint privately over a DX or a VPN and ultimately can access the VPC endpoint service.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 28:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So in order to enable this DNS, you need to have this route 53 inbound resolver endpoint.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 29:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 30:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So that's another architecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 31:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And those are the things that you need to take care if you are allowing access to your interface endpoints from the remote host, which is hosted outside of AWS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 32:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So I hope it is clear.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 33:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And with that, now let's go to the next architecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 34:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Thank you.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/28_Disaster Recovery & Migrations/353_Disaster Recovery in AWS.txt

Line 1:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So disaster recovery as a solutions architect is super important, and the exam expects you to know about disaster recovery.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 2:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And there's a white paper on it, you should read it, but I try to summarize everything clearly with graphs and diagrams in this lecture, so you don't have to read it if you don't want to.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 3:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: But overall, you can expect some question on disaster recovery, and as a solutions architect, you need to know about disaster recovery anyway.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 4:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Don't worry, I try to make this as simple as possible for you.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 5:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So what is a disaster?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 6:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Well, it's any event that has a negative impact on the company's business continuity or finances.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 7:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And so disaster recovery is about preparing and recovering from these disasters.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 8:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So what kind of disaster recovery can we do on AWS or in general?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 9:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Well, we can do on-premise to on-premise.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 10:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: That means we have a first data center, maybe in California, another data center maybe in Seattle.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 11:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And so this is traditional disaster recovery, and it's actually very, very expensive.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 12:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Or we can start using the cloud and do on-premise as a main data center.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 13:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And then if we have any disaster, use the cloud.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 14:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So this is called hybrid recovery, or if you're just all in the cloud, then you can do AWS cloud region A to cloud region B, and that would be a full cloud type of disaster recovery.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 15:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Now, before we do disaster recovery, we need to define two key terms, and you need to understand them from an exam perspective.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 16:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: The first one is called RPO, Recovery Point Objective, and the second one is called RTO, Recovery Time Objective.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 17:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So remember these two terms, and I'm going to explain them right now.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 18:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So what is RPO and RTO?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 19:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: The first one is the RPO, Recovery Point Objective.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 20:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And so this is basically how often basically you run backups.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 21:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: How back in time can you to recover?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 22:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And when a disaster strikes, basically, the time between their RPO and the disaster is going to be a data loss.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 23:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: For example, if you back up data every hour and a disaster strikes, then you can go back in time for an hour and so you'll have lost one hour of data.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 24:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So the RPO, sometimes it can be an hour, sometimes maybe one minute.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 25:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: It really depends on the requirements.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 26:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: But RPO is how much of a data loss are you willing to accept in case a disaster happens.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 27:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: RTO, on the other end, is when you recover from your disaster, okay?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 28:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: And so between the disaster and the RTO is the amount of downtime your application has.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 29:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So sometimes it's okay to have 24 hours of downtime, I don't think it is.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 30:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Sometimes it's not okay, and maybe you need just one minute of downtime, okay?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 31:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So basically optimizing for the RPO and the RTO does drive some solution architecture decisions, and obviously, the smaller you want these things to be, usually the higher the cost.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 32:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So let's talk about disaster recovery strategies.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 33:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: The first one is Backup and Restore.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 34:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Second one is Pilot Light.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 35:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Third one is Warm Standby.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 36:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And fourth one is Hot Site or Multi Site Approach.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 37:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So if we basically rank them, all will have different RTO.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 38:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Backup and Restore will have the smaller RTO.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 39:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Pilot Light then Warm Standby, and Multi Site, all these things cost more money, but they get a faster RTO.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 40:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: That means you have less downtime overall.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 41:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So let's look at all of these one by one in details to really understand from an architectural standpoint what they mean.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 42:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Backup and Restore has a high RPO.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 43:
- Concepts: Migration Operational Context
- Services: Amazon S3
- Key Insights: That means that you have a corporate data center, for example, and here is your a AWS's Cloud, and you have an S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 44:
- Concepts: Hybrid Transfer Execution
- Services: AWS Storage Gateway, Amazon Glacier
- Key Insights: And so if you want to back up your data over time, maybe we can use AWS's Storage Gateway or and have some lifecycle policy, put data into Glacier for cost optimization purposes.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 45:
- Concepts: Hybrid Transfer Execution
- Services: AWS Snow Family, Amazon Glacier
- Key Insights: Or maybe once a week, you're sending a ton of data into Glacier using AWS's Snowball.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 46:
- Concepts: Hybrid Transfer Execution
- Services: AWS Snow Family
- Key Insights: So here, you know, if you use Snowball, your RPO is gonna be about one week, because if your data center burns or whatever and you lose all your data, then you've lost one week of data because you send that Snowball device once a week.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 47:
- Concepts: Migration Operational Context
- Services: Amazon EBS, Amazon RDS, Amazon Redshift
- Key Insights: If you're using the AWS's cloud instead, maybe EBS volumes, Redshift, and RDS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 48:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: If you schedule regular snapshots and you back them up, then your RPO is going to be maybe 24 hours or one hour based on how frequently you do create these snapshots.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 49:
- Concepts: Application and Server Relocation
- Services: Amazon EC2, Amazon ECR
- Key Insights: And then when you have a disaster strike you and you need to basically restore all your data, then you can use AMIs to recreate EC2 instances and speed up your applications.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 50:
- Concepts: Migration Operational Context
- Services: Amazon EBS, Amazon ECR, Amazon RDS, Amazon Redshift
- Key Insights: Or you can restore straight from a snapshot and recreate your Amazon RDS database or your EBS volume, or your Redshift, whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 51:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And so that can take a lot of time as well to restore this data and so you get a high RTO as well.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 52:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: But the reason we do this is actually it's quite cheap to do Backup and Restore.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 53:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: We don't manage infrastructure in the middle.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 54:
- Concepts: Migration Operational Context
- Services: Amazon ECR
- Key Insights: We just recreate infrastructure when we need it, when we have a disaster.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 55:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And so the only cost we have is the cost of storing these backups.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 56:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So it gives you an idea.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 57:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Backup and Restore.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 58:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Very easy, not too expensive, and you get high RPO, high RTO.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 59:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: The second one is going to be Pilot Light.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 60:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So here with Pilot Light, a small version of the app is always running in the cloud.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 61:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And so usually that's going to be your critical core.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 62:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And this is what it's called Pilot Lights.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 63:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So it's very similar to Backup and Restore, but this time, it's faster because your critical systems, they're already up and running.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 64:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And so when you do recover, you just need to add on all the other systems that are not as critical.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 65:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So let's have an example.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 66:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: This is your data center has a server and a database and this is the AWS cloud.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 67:
- Concepts: Migration Operational Context
- Services: Amazon RDS
- Key Insights: Maybe you're going to do continuous data replication from your critical database into RDS, which is going to be running at any time.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 68:
- Concepts: Migration Operational Context
- Services: Amazon EC2, Amazon RDS
- Key Insights: So you get an RDS database ready to go running, but your EC2 instances, they're not critical just yet.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 69:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: What's really important is your data.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 70:
- Concepts: Application and Server Relocation
- Services: Amazon EC2, Amazon ECR
- Key Insights: And so they're not running, but in case you have a disaster happening, Route 53 will allow you to fail over from your server on your data center, recreate that EC2 instance in the cloud and make it up and running.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 71:
- Concepts: Migration Operational Context
- Services: Amazon RDS
- Key Insights: But your RDS database is already ready.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 72:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So here, what do we get?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 73:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Well, we get a lower RPO, we get a lower RTO, and we still manage costs.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 74:
- Concepts: Migration Operational Context
- Services: Amazon RDS
- Key Insights: We still have to have an RDS running, but just the RDS database is running, the rest is not.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 75:
- Concepts: Migration Operational Context
- Services: Amazon EC2
- Key Insights: And your EC2 instance only are created when you need to do a disaster recovery.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 76:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So Pilot Light is a very popular choice.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 77:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Remember, it's only for critical core systems.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 78:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Warm Standby is when you have a full system up and running, but at a minimum size.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 79:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So it's ready to go, but upon disaster, we can scale it to production load.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 80:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 81:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: We have our corporate data center.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 82:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Maybe it's a bit more complicated this time.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 83:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: We have a reverse proxy, an app server, and a primary database.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 84:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And currently, our Route 53 is pointing the DNS to our corporate data center.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 85:
- Concepts: Migration Operational Context
- Services: Amazon RDS
- Key Insights: And in the cloud, we'll still have our data replication to an RDS secondary database that is running.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 86:
- Concepts: Migration Operational Context
- Services: Amazon EC2, Auto Scaling
- Key Insights: And maybe we'll have an EC2 Auto Scaling group, but running at minimum capacity.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 87:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: That's currently talking to our corporate data center database.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 88:
- Concepts: Migration Operational Context
- Services: Elastic Load Balancing
- Key Insights: And maybe we have an ELB as well, ready to go.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 89:
- Concepts: Application and Server Relocation
- Services: Elastic Load Balancing
- Key Insights: And so if a disaster strikes you, because we have a Warm Standby, we can use Route 53 to failover to the ELB, and we can use the failover to also change where our application is getting our data from.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 90:
- Concepts: Application and Server Relocation
- Services: Amazon RDS, Auto Scaling
- Key Insights: Maybe it's getting the data now from the other RDS, and so we've effectively basically stood by and then maybe using auto scaling, our application will scale pretty quickly.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 91:
- Concepts: Migration Operational Context
- Services: Amazon EC2, Elastic Load Balancing
- Key Insights: So this is a more costly thing to do now because we already have an ELB and EC2 Scaling running at any time.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 92:
- Concepts: Migration Operational Context
- Services: Amazon ECR
- Key Insights: But again, you can decrease your RPO and your RTO doing that.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 93:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And then finally, we get the Multi Site/Hot Site approach.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 94:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: It's very low RTO.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 95:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: We're talking minutes or seconds, but it's also very expensive.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 96:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: But you get two full production scales running on AWS and on-premise.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 97:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So that means that we have your on-premise data center, full production scale.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 98:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: You have your AWS data center, full production scale with some data replication happening.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 99:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And so here, what happens is that because you have a hot site that's already running, your Route 53 can route request to both your corporate data center and the AWS cloud.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 100:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: It's called an active-active type of setup.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 101:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And so the idea here is that the failover can happen.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 102:
- Concepts: Migration Operational Context
- Services: Amazon EC2, Amazon RDS
- Key Insights: You know, your EC2 can failover to your RDS database if need be, but you get full production scale running on AWS and on premise.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 103:
- Concepts: Migration Operational Context
- Services: AWS SAM
- Key Insights: And so this costs a lot of money, but at the same time, you're ready to failover already and you're running into a multi-DC type of infrastructure, which is quite cool.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 104:
- Concepts: Migration Operational Context
- Services: AWS SAM
- Key Insights: Finally, if you wanted to go all cloud, you know, it would be the same kind of architecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 105:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: It would be a multi region.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 106:
- Concepts: Migration Operational Context
- Services: Amazon Aurora
- Key Insights: So maybe we could use Aurora here because we're really in the cloud.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 107:
- Concepts: Migration Operational Context
- Services: Amazon Aurora
- Key Insights: So we have a primary database in a region, and then we have a Aurora global database that's being replicated to another region.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 108:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: These both regions are working for me, and then when I want to failover, you know, I will be ready to go full production scale again in another region if I need to.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 109:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So this gives you an idea of all the strategies you can have for disaster recovery.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 110:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: It's really up to you to select the disaster recovery strategy you need.
- Hidden/Implicit Meaning: Migration-planning signal.

Line 111:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: But the exam will ask you basically based on some scenarios, you know, what do you recommend?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 112:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Do you recommend Backup and Restore, Pilot Lights?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 113:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Do you recommend Multi Site or do you recommend Hot Site?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 114:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: All that kind of stuff.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 115:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Warm Backups and all that stuff.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 116:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Okay, so finally, disaster recovery tips.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 117:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And it's more like, real life stuff.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 118:
- Concepts: Migration Operational Context
- Services: Amazon EBS, Amazon RDS
- Key Insights: So for backups, you can use EBS Snapshots, RDS automated Snapshots and backups, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 119:
- Concepts: Migration Operational Context
- Services: Amazon Glacier, Amazon S3
- Key Insights: And you can push all these Snapshots regularly to S3, S3 IA Glacier.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 120:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: You can implement a Lifecycle Policy, you can use Cross Region Replication if you wanted to make sure these backups would be in different regions.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 121:
- Concepts: Hybrid Transfer Execution
- Services: AWS Snow Family, AWS Storage Gateway
- Key Insights: And if you wanted to have your data from on-premise to the cloud, Snowball or Storage Gateway would be great technologies.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 122:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: For high availability, using Route 53 to migrate DNS from a region to another region is really, really helpful and easy to implement.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 123:
- Concepts: Migration Operational Context
- Services: Amazon EFS, Amazon ElastiCache, Amazon RDS, Amazon S3
- Key Insights: But you can also use technology to have multi easy implemented, such as RDS Multi-AZ, ElastiCache Multi AZ, EFS, S3, all these things are highly available by default if you enable them.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 124:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Obviously, if you are talking about the higher availability of your network, maybe you've implemented Direct Connect to connect from your corporate data center to AWS, but what if the connection goes down for whatever reason?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 125:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Maybe you can use site-to-site VPN as a recovery option for your network.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 126:
- Concepts: Migration Operational Context
- Services: Amazon Aurora, Amazon RDS
- Key Insights: In terms of replication, you can use RDS Replication (Cross Region), Aurora + Global Databases.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 127:
- Concepts: Migration Operational Context
- Services: Amazon RDS
- Key Insights: Maybe you can use a database replication software to do your on-premise database to RDS.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 128:
- Concepts: Hybrid Transfer Execution
- Services: AWS Storage Gateway
- Key Insights: Or maybe you can use Storage Gateway as well.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 129:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: In terms of automation, so how do we, you know, recover from disasters?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 130:
- Concepts: Migration Operational Context
- Services: AWS CloudFormation, AWS Elastic Beanstalk, Amazon ECR
- Key Insights: I think you would know already CloudFormation, Elastic Beanstalk can help recreate whole new environments in the cloud very quickly.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 131:
- Concepts: Migration Operational Context
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: Or maybe if we use CloudWatch, we can recover or reboot our EC2 instances when the CloudWatch alarms fail.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 132:
- Concepts: Migration Operational Context
- Services: AWS Lambda
- Key Insights: AWS Lambda can also be great to customize optimum automation.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 133:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So they're great to do, you know, rest API, but they can also be used to automate your entire AWS infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 134:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And so overall, if you manage to automate your whole disaster recovery, then you are really, really well set for success.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 135:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And then finally, chaos testing.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 136:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So how do we know how to recover from the disaster?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 137:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Then you create disasters.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 138:
- Concepts: Migration Operational Context
- Services: Amazon EC2
- Key Insights: And so an example that's I think widely quoted now in the AWS world is that Netflix, they run everything on the AWS and they have created something called a simian army, and they randomly terminate EC2 instances, for example.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 139:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: They do so much more, but basically, they just take an application server and terminate it randomly.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 140:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: In production, okay?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 141:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Not endeavor test, in production.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 142:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So they wanna make sure that their infrastructure is capable to survive failures, and so that's why they're running a bunch of chaos monkeys that just terminate stuff randomly just to make sure that their infrastructure is rock solid and can survive any types of failures.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 143:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this section on disaster recovery.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 144:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: I hope you enjoyed it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/28_Disaster Recovery & Migrations/357_RDS & Aurora Migrations.txt

Line 1:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So here is a short lecture that unfortunately you have to learn for the exam, maybe for one question.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 2:
- Concepts: Migration Strategy and Discovery
- Services: Amazon Aurora
- Key Insights: It is a way to do migrations to Aurora MySQL.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 3:
- Concepts: Migration Operational Context
- Services: Amazon Aurora, Amazon RDS
- Key Insights: So if you have an RDS database and you want to move it into Aurora MySQL, the option number one is to take a database snapshot from the RDS MySQL database and you restore this snapshot as a MySQL Aurora database.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 4:
- Concepts: Migration Operational Context
- Services: Amazon Aurora
- Key Insights: Potentially, you'll have some downtime because you have to stop operations on the first MySQL database before migrating to Aurora.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 5:
- Concepts: Migration Operational Context
- Services: Amazon Aurora, Amazon RDS
- Key Insights: The option number two, which is more continuous, is to use and create an Amazon Aurora Read Replica on top of your RDS MySQL.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 6:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So it's a possibility indeed.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 7:
- Concepts: Migration Operational Context
- Services: Amazon Aurora
- Key Insights: And once the Replica lag is zero, that means that once the Aurora Replica has fully caught up with MySQL, you can promote it into its own database cluster.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 8:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Now this can take a bit more time than the database snapshot option and cost some money because of the network cost that may be associated with this replication.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 9:
- Concepts: Migration Operational Context
- Services: Amazon RDS
- Key Insights: The other option is, if you have a MySQL database that is external to RDS, then you can back it up using the Percona XtraBackup utility.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 10:
- Concepts: Migration Operational Context
- Services: Amazon Aurora, Amazon S3
- Key Insights: This will create a backup file and you put it in Amazon S3 and then there is an option from Amazon Aurora to directly import this backup file into a new Aurora MySQL DB cluster.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 11:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Just so you know, this only supports the Percona XtraBackup utility.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 12:
- Concepts: Migration Operational Context
- Services: Amazon Aurora
- Key Insights: The other option is to use the MySQL Dump utility to run it against a MySQL database and you would pipe the output of this into your existing Amazon Aurora database.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 13:
- Concepts: Migration Operational Context
- Services: Amazon S3
- Key Insights: So this is taking a lot of time and this does not leverage Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 14:
- Concepts: Database and Data Movement
- Services: AWS Database Migration Service
- Key Insights: And a last option is to use Amazon DMS, if both databases are up and running to do continuous replication between the two databases.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 15:
- Concepts: Migration Operational Context
- Services: AWS SAM, Amazon RDS
- Key Insights: We do the same process for PostgreSQL, so for RDS, it's pretty much similar.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 16:
- Concepts: Migration Operational Context
- Services: Amazon Aurora
- Key Insights: You have two option to use the database snapshots restored as an Amazon Aurora database or you create an Amazon Aurora Read Replica of PostgreSQL to have to have a Read Replica and then you wait until a replication lag is zero to promote it into its own database cluster.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 17:
- Concepts: Migration Operational Context
- Services: Amazon Aurora, Amazon S3
- Key Insights: And if it's an external PostgreSQL database that you want to migrate to Aurora, you can create a backup of it and then you put the backup in Amazon S3, and then you import the data using the AWS S3 Aurora extension and this will create a new database out of it.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 18:
- Concepts: Database and Data Movement
- Services: AWS Database Migration Service, Amazon Aurora
- Key Insights: And finally, again, you can use DMS to migrate from PostgreSQL to Amazon Aurora continuously.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 19:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 20:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: That's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 21:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/28_Disaster Recovery & Migrations/358_On-Premises Strategies with AWS.txt

Line 1:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Okay, so yet another theoretical lecture, but I still want to mention it because I think it's extremely important going to the exam.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 2:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: You need to know about the services that AWS offers at a very, very high level, but just hear about them once to do on-premise strategy with the cloud.
- Hidden/Implicit Meaning: Migration-planning signal.

Line 3:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So, we have the ability to download the Amazon Linux 2 AMI as a virtual machine, and it will be in the ISO format.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 4:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And you can load this ISO image into the common software used to create VMs.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 5:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: That includes VMware, KVM, Virtual Box, which is Oracle VM, or Microsoft Hyper V.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 6:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And this would allow you to run Amazon Linux 2 on your on-premise infrastructure directly using that VM.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 7:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: That means that you can make it work with some user data and so on.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 8:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So, quite cool to think about.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 9:
- Concepts: Application and Server Relocation
- Services: Amazon EC2
- Key Insights: Then, we have a feature called VM Import/Export, and what this allows you to do is to migrate your existing VMs and applications into EC2 directly using this feature.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 10:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: And you can also create a, for example, a disaster recovery repository strategy if you had a lot of on-premise VMs, but you wanted to back them up into the cloud.
- Hidden/Implicit Meaning: Migration-planning signal.

Line 11:
- Concepts: Migration Operational Context
- Services: Amazon EC2
- Key Insights: And because it's called import and export, you can export back the VMs from EC2 to your on-premise environment if you wanted to.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 12:
- Concepts: Application and Server Relocation, Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: Now, for AWS Application Discovery Service, well, this is a service that allows you to gather information about your on-premise servers and plan a migration.
- Hidden/Implicit Meaning: Migration-planning signal; Cutover and execution signal.

Line 13:
- Concepts: Application and Server Relocation, Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: This is very high level, but it does give you some server utilization information and dependency mappings, and that could be quite helpful when you want to do a massive migration from on-premise to the cloud.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 14:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: Finally, you can track all that migration using the AWS Migration Hub.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 15:
- Concepts: Database and Data Movement, Migration Strategy and Discovery
- Services: AWS Database Migration Service
- Key Insights: Then, we have AWS Database Migration Service, or DMS, which allows you to replicate from on-premise to AWS, AWS to AWS, or AWS to on-premise for your database.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 16:
- Concepts: Database and Data Movement
- Services: AWS Database Migration Service
- Key Insights: This is quite nice, because if you had a MySQL or a PostgreSQL database running on premise and you wanted to start moving your workload into AWS, you could use DMS to replicate the database in the meantime.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 17:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And when you're ready, you can fully transition to using AWS only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And the nice thing about it is it works with various database technologies.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 19:
- Concepts: Migration Operational Context
- Services: Amazon DynamoDB
- Key Insights: That includes Oracle, MySQL, DynamoDB, et cetera, and allows you to do some really fancy use cases, for example, migrate data from MySQL into DynamoDB, okay?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 20:
- Concepts: Application and Server Relocation, Migration Strategy and Discovery
- Services: AWS Application Migration Service
- Key Insights: And finally, you have the AWS Application Migration Service, or MGN, which is used for incremental replication of on-premises live servers to AWS.
- Hidden/Implicit Meaning: Cutover and execution signal; Hybrid movement signal.

Line 21:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So, at a high level, you may be like, "Oh, this is a lot of services." Just remember the names at a high level.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 22:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So, Linux 2 on on-premise is possible.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 23:
- Concepts: Migration Operational Context
- Services: Amazon EC2
- Key Insights: We can do VM import and export for on-premise and EC2.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 24:
- Concepts: Application and Server Relocation, Database and Data Movement, Migration Strategy and Discovery
- Services: AWS Database Migration Service
- Key Insights: We can have migration services, such as Application Discovery Service, AWS Migration Hub, Database Migration Service and Server Migration Service, DMS and SMS.
- Hidden/Implicit Meaning: Migration-planning signal; Cutover and execution signal.

Line 25:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And just remember those at a high level, that's it, just so you can see, if you see the name in the question, then you're not taken by surprise, okay?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 26:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: You know that all these things have to relate to on-premise.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 27:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Okay, well, that's for this short theory lecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 28:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/28_Disaster Recovery & Migrations/363_VMware Cloud on AWS.txt

Line 1:
- Concepts: Application and Server Relocation
- Services: VMware Cloud on AWS
- Key Insights: So now let's talk about VMware Cloud on AWS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 2:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So here's some context.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 3:
- Concepts: Application and Server Relocation
- Services: VMware Cloud on AWS
- Key Insights: When you have an on-premises data center, sometimes you would use the VMware Cloud to manage your own on-premise data center.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 4:
- Concepts: Application and Server Relocation
- Services: VMware Cloud on AWS
- Key Insights: So you have your vSphere-based environment and your VMs all managed from VMware Cloud.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 5:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: And consumers who have their own data center with VMware, they want to extend their data center capacity to also leverage the cloud and in particular, they want to leverage AWS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 6:
- Concepts: Application and Server Relocation
- Services: VMware Cloud on AWS
- Key Insights: But they want to keep on managing everything, their own data center and the cloud, using the VMware Cloud software.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 7:
- Concepts: Application and Server Relocation
- Services: VMware Cloud on AWS
- Key Insights: So this is the idea behind VMware Cloud on AWS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 8:
- Concepts: Application and Server Relocation
- Services: VMware Cloud on AWS
- Key Insights: Thanks to it you can extend your entire VMware Cloud infrastructure to also be on AWS and run vSphere, vSAN, NSX, and so on, which you don't have to know but they are VMware sub-services.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 9:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So once you have this, what are the use cases?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 10:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: Well, the first thing is that now you can extend computing power from data center to the cloud or storage from the data center to the cloud, and therefore you can start migrating your VMware-based workloads to AWS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 11:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: You can also run your production workloads across multiple data centers, and you can choose between private, public, or hybrid cloud environments.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 12:
- Concepts: Migration Strategy and Discovery
- Services: AWS SAM
- Key Insights: And finally, it gives you a disaster recovery strategy because now you can quickly go to the cloud using the same suite of software that you know.
- Hidden/Implicit Meaning: Migration-planning signal.

Line 13:
- Concepts: Migration Operational Context
- Services: Amazon EC2, Amazon FSx, Amazon RDS, Amazon Redshift, Amazon S3
- Key Insights: And because that now you are on the AWS cloud you can actually access the different AWS services and start leveraging them such as Amazon EC2, Amazon FSx, S3, RDS, Direct Connect, Redshift, and so on.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 14:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 15:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: It's just a high level overview that you need to know.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 16:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

### File: outputs/aws-solutions-architect-professional/14_Migration/137_Cloud Migration Strategies - The 7Rs.txt

Line 1:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: Okay, so now let's discuss cloud migration strategies, and there is a blog on the AWS that describe the seven Rs of cloud migration.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 2:
- Concepts: Migration Operational Context
- Services: Amazon Lex
- Key Insights: Now there's a very complex diagram.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 3:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: We're going to go over it in time, not the diagram itself, but the concepts behind the diagram.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 4:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: What I would recommend you to do is to actually read the blog if you can, after this lecture, just to get a better understanding of cloud migration, if that's something you're interested into.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 5:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: But let's go over the seven Rs because the exam may ask you which strategy you use.
- Hidden/Implicit Meaning: Migration-planning signal.

Line 6:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: So you want to migrate to the cloud, and the first strategy is to actually retire.
- Hidden/Implicit Meaning: Migration-planning signal.

Line 7:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: What does that mean?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 8:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: That means you turn off things you don't need.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 9:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So for example, you have some services and you actually don't need to migrate them, so you turn them off.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 10:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: It helps to also reduce the service areas for attacks because you have more security, because you have less services active.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 11:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: You save costs because you retire services, maybe 10 to 20%, and you focus your attention on resources that must be maintained.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: The second option is to retain.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 13:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: So that means that you actually don't do a cloud migration, which is still a decision in your cloud migration strategy.
- Hidden/Implicit Meaning: Migration-planning signal; Cutover and execution signal.

Line 14:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And you may want to just retain the resource on premises, for example, because of security, data compliance, performance, and unresolved dependencies, or because maybe there is no business value to migrate or it's too complicated.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 15:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Next, we have relocate.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 16:
- Concepts: Migration Operational Context
- Services: Amazon EC2
- Key Insights: So relocate is actually to move your app from on-premises to its cloud version, or move EC2 instances to a different VPC, a different account, or a different AWS region.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 17:
- Concepts: Application and Server Relocation
- Services: AWS SAM, VMware Cloud on AWS
- Key Insights: So for example, you have servers that you manage on-premises using VMware software-defined data centers, so SSDC, and you just want to keep the same but use now VMware cloud on AWS, you just relocate, but nothing has changed.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 18:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Then there is rehost for lift and shift.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 19:
- Concepts: Application and Server Relocation, Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: So these are very simple migrations, and what you do is that you rehost your application on AWS.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 20:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: So that can be your applications, your databases, and your data.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 21:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: You're going to migrate your machines.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 22:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: That could be physical, virtual, or servers or another cloud into AWS cloud.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 23:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So here you don't do any kind of cloud optimization.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 24:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: The application stays as is, but you leverage the cloud resources.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 25:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And so possibly, by using the cloud resources, you could save as much as 30% on cost.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 26:
- Concepts: Application and Server Relocation, Migration Strategy and Discovery
- Services: AWS Application Migration Service
- Key Insights: And some services, for example, the AWS application migration service, allow you to just do that, the lift and shift.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 27:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: That means you take your application and you just put it on the cloud.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 28:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Next, we have replatform for lift and reshape.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 29:
- Concepts: Application and Server Relocation
- Services: AWS Elastic Beanstalk, Amazon RDS
- Key Insights: So as an example, you want to migrate your database into RDS, or you want to migrate your application to Elastic Beanstalk.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 30:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: So here you don't change the core architecture of your application, but you're going to leverage some cloud optimizations, and you're going to save time and money by moving to fully-managed service or a serverless service.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 31:
- Concepts: Application and Server Relocation
- Services: Amazon EC2, Amazon RDS
- Key Insights: For example, for a database, instead of just moving it from a server on premises to EC2, you move it to RDS, and RDS is going to give you a lot of benefits around backups, around resiliency, around high availability, and so on.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 32:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: So your application hasn't changed, but now you're using managed services.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 33:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Then we have repurchase for drop and shop.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 34:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So you move to a different product while moving to the cloud.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 35:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: For example, you want to move to a software as a service platform, SaaS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 36:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: It's expensive in the short term, but very quick to deploy.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 37:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: For example, you move your CRM to the managed version on salesforce.com or your HR to Workday or your CMS to Drupal.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 38:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So instead of having everything on-premises, now you leverage SaaS platforms.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 39:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And finally, we have refactor and re-architect.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 40:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: So here you want to move your application to the cloud, but you are re-imagining how the application is going to be architected using Cloud Native features.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 41:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: So the reason you may want to do this is because you actually want to use the cloud to improve the scalability, the performance, security, and agility of your application.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 42:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: You may also want to break up your monolithic application into microservices.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 43:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So this is where you're going to have the most amount of effort, but usually the most amount of payoff from a leveraging the cloud capabilities.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 44:
- Concepts: Application and Server Relocation
- Services: Amazon S3
- Key Insights: So for example, you move your application to a serverless architecture, or you're going to use Amazon S3 to store some data and so on.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 45:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 46:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: I hope now the seven Rs in the cloud migration strategy makes sense.
- Hidden/Implicit Meaning: Migration-planning signal; Cutover and execution signal.

Line 47:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

### File: outputs/aws-solutions-architect-professional/14_Migration/140_Snow Family.txt

Line 1:
- Concepts: Hybrid Transfer Execution
- Services: AWS Snow Family
- Key Insights: Okay, so now let's talk about AWS Snowball.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 2:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So it's a highly secure and portable device that allows you to collect and process data at the edge and migrate data in and out of AWS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 3:
- Concepts: Hybrid Transfer Execution, Migration Strategy and Discovery
- Services: AWS Snow Family
- Key Insights: So if you have a migration of say, petabytes of data, Snowball may be a good use case.
- Hidden/Implicit Meaning: Cutover and execution signal; Hybrid movement signal.

Line 4:
- Concepts: Hybrid Transfer Execution
- Services: AWS Snow Family
- Key Insights: So we have two kind of Snowball edge devices.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 5:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: One is called the Edge Storage Optimized, and the other one is called the Edge Compute Optimized.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 6:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And the difference lies in their storage.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 7:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: As you can see, one has 210 terabytes and the other one has 28 terabytes.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 8:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So obviously one is for storage and the other one is only used for computer.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 9:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: So let me tell you about data migrations.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 10:
- Concepts: Database and Data Movement
- Services: (none explicit)
- Key Insights: So it takes a lot of time to transfer some data over a specific bandwidth speed.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 11:
- Concepts: Database and Data Movement
- Services: (none explicit)
- Key Insights: For example, if you want to transfer a hundred terabytes over one gigabytes per second connection, it would take you 12 days.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 12:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: So when you have a slow connection, you may have limited connectivity, limited bandwidth, very high network cost, and you have to share the bandwidth, for example, with some other applications, the connection may not be stable.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 13:
- Concepts: Database and Data Movement, Hybrid Transfer Execution
- Services: AWS Snow Family
- Key Insights: So whenever you have these kind of challenges, or if it takes you, for example, over a week to transfer data over the network, the recommendation is to use a Snowball device.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cutover and execution signal; Hybrid movement signal.

Line 14:
- Concepts: Migration Operational Context
- Services: Amazon S3
- Key Insights: So the idea is that if you upload directly to Amazon S3, it's simple, but it may use all your bandwidth.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 15:
- Concepts: Hybrid Transfer Execution
- Services: AWS Snow Family
- Key Insights: And if you use Snowball, well, you're going to receive a physical Snowball device, you, yourself in your own infrastructure.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 16:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So it's a physical machine, and then you load it with the data you need, and then finally you ship it back to AWS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 17:
- Concepts: Hybrid Transfer Execution
- Services: AWS Snow Family, Amazon S3
- Key Insights: And then you will be having an export process within AWS to take your data from the Snowball onto, for example, an Amazon S3 bucket.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 18:
- Concepts: Hybrid Transfer Execution
- Services: AWS Snow Family
- Key Insights: So this is the main use case of a Snowball device.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 19:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: The other one is a edge computing use case.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 20:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that you wanna process data while it's being created on an edge location.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 21:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: For example, it's a truck on the road or a ship on the sea, or a mining station on the ground.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 22:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And these locations may have no internet access or limited access to internet or compute power.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: Hybrid Transfer Execution
- Services: AWS Snow Family
- Key Insights: So here again, we order one of these big Snowball edge devices and we do edge computing.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 24:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And so that means that we have the Compute Optimized, this is dedicated for that use case for the search optimized devices.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 25:
- Concepts: Migration Operational Context
- Services: AWS Lambda, Amazon EC2
- Key Insights: And then because they have computing capability, we can actually run EC2 instances or Lambda functions directly on these devices.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 26:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: The idea is that once the data is created and processed, we can send it back again to AWS, but by using an edge computing device, we can pre-process the data or we can do machine learning at the edge or directly transcode media at the edge.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 27:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And that's the use case for edge computing.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 28:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So hopefully that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 29:
- Concepts: Hybrid Transfer Execution, Migration Strategy and Discovery
- Services: AWS Snow Family
- Key Insights: The Snowball service is really just something that is used for data migrations and edge computing.
- Hidden/Implicit Meaning: Cutover and execution signal; Hybrid movement signal.

Line 30:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

### File: outputs/aws-solutions-architect-professional/14_Migration/141_Snow Family - Improving Performance.txt

Line 1:
- Concepts: Database and Data Movement, Hybrid Transfer Execution
- Services: AWS Snow Family
- Key Insights: So I've heard some student feedback, and you might have one question around improving the transfer performance for your Snow Family devices.
- Hidden/Implicit Meaning: Cutover and execution signal; Hybrid movement signal.

Line 2:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So there's a list of recommendation that AWS provides from the most impactful to the least impactful.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 3:
- Concepts: Database and Data Movement, Hybrid Transfer Execution
- Services: (none explicit)
- Key Insights: So the most impactful is to perform multiple write operations at a time, okay, from multiple terminals, when you transfer files to your Snow device.
- Hidden/Implicit Meaning: Cutover and execution signal; Hybrid movement signal.

Line 4:
- Concepts: Database and Data Movement
- Services: AWS Batch
- Key Insights: Then you need to transfer small files in batches.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 5:
- Concepts: Hybrid Transfer Execution
- Services: AWS Snow Family
- Key Insights: So if you have a lot of small files instead, put them together, create a zip, and then when the zip, is at least one megabyte of size, then upload it into the Snow Family device.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 6:
- Concepts: Database and Data Movement
- Services: (none explicit)
- Key Insights: Don't perform any other operations on the files during the transfer.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 7:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Reduce the local network use.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 8:
- Concepts: Hybrid Transfer Execution
- Services: (none explicit)
- Key Insights: Eliminate any unnecessary hops, so directly connect the Snow device to the computer.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 9:
- Concepts: Database and Data Movement
- Services: (none explicit)
- Key Insights: And then data transfer rates using the file interface is typically between 25 megabytes to 40 megabytes per second.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 10:
- Concepts: Database and Data Movement, Hybrid Transfer Execution
- Services: AWS Snow Family, Amazon S3
- Key Insights: But if you need faster data transfer than this, then there is something called the Amazon S3 Adapter for Snowball, which has a data transfer rate of typically 250 megabytes per second to 400 megabytes per second.
- Hidden/Implicit Meaning: Cutover and execution signal; Hybrid movement signal.

Line 11:
- Concepts: Hybrid Transfer Execution
- Services: AWS Snow Family, Amazon S3
- Key Insights: So these recommendations together, especially the first two, and then the data, the S3 adapter for Snowball is going to be the answer for that one question.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 12:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 13:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

### File: outputs/aws-solutions-architect-professional/14_Migration/143_AWS CART - Cloud Adoption Readiness Tool.txt

Line 1:
- Concepts: Cutover and Landing Zone Readiness
- Services: (none explicit)
- Key Insights: So here is a small lecture on the AWS Cloud Adoption Readiness Tool or CART.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 2:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: And this is a tool that helps organization develop efficient and effective plans for cloud adoption and migrations.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 3:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So you're going to get a score chart like this.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 4:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that you want to transform your idea of moving to the cloud into a detailed plan that will follow the best practices from AWS.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 5:
- Concepts: Database and Data Movement
- Services: (none explicit)
- Key Insights: So to do so, you're going to transfer a set of questions across six different perspectives.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 6:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: It could be business, people, process, platform, operations and security.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 7:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And then it's going to give you a chart as a result.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 8:
- Concepts: Cutover and Landing Zone Readiness, Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: And the custom report will give you your level of migration readiness and give you some recommendations to implement the best practices on AWS.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cutover and execution signal.

Line 9:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So it's just a tool you will see at a high level of the exam, nothing too much to worry about, but I hope you liked this lecture and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

### File: outputs/aws-solutions-architect-professional/14_Migration/145_AWS FIS - Fault Injection Simulator.txt

Line 1:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Now let's talk about AWS Fault Injection Simulator, FIS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 2:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So this is a way for you to run fault injection experiments on AWS workloads.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 3:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: And this is based on something called Chaos Engineering, which is that you want to stress an application by creating really, really disruptive events.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 4:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: For example, the CPU starts skyrocketing or the memories go out of memory, or the database is having a failure, or all these kinds of things.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 5:
- Concepts: Application and Server Relocation
- Services: AWS CloudFormation
- Key Insights: And you want to see how your entire application stack reacts to these disasters.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 6:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And this is why it's called Chaos Engineering, because you're actually creating chaos within your infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 7:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So why do we do this?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 8:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: Well to make sure our application is really solid, and this allows us to uncover hidden bugs and performance bottlenecks.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 9:
- Concepts: Migration Operational Context
- Services: Amazon EC2, Amazon ECS, Amazon EKS, Amazon RDS
- Key Insights: And currently, FIS supports some services, you don't need to know them all, so here's a list and maybe there'll be others over time, but EC2 for example, by terminating EC2 instances, ECS by stopping ECS tasks, EKS, and so on to stop a Kubernetes task and RDS to make failures go alongside our database.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 10:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 11:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Well, we have FIS and we're going to create experiments.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 12:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And so we can use pre-built templates to generate these disruptions, and then they're going to have disruptions on resources.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 13:
- Concepts: Migration Operational Context
- Services: Amazon EC2, Amazon ECS, Amazon RDS
- Key Insights: So really you have to choose what happens to your EC2 instances, what happens to your ECS clusters, your RDS database and so on.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 14:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And then these experiments will start.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 15:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: So the resources will get disrupted, and then you have to see how your application behaves.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 16:
- Concepts: Migration Operational Context
- Services: AWS X-Ray, Amazon CloudWatch, Amazon EventBridge
- Key Insights: So we can monitor it using CloudWatch or EventBridge or X-Ray or whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 17:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And then once you're done, then you stop the experiment and you have a look at your results.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 18:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Was there any performance issue?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 19:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Was there observability issues or resiliency issues?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 20:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: And you can improve your application to see where the bottlenecks are okay?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 21:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So FIS is definitely an advanced kind of monitoring and advanced kind of debugging, but it's definitely helpful.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 22:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And I'm so glad that AWS is now having this as a native feature from within AWS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 23:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So that's it for FIS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 24:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 25:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

### File: outputs/aws-solutions-architect-professional/14_Migration/146_VM Migrations Services.txt

Line 1:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: So finally, here is a quick overview of the different services you can use on AWS to help you with your on-premise migration.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 2:
- Concepts: Application and Server Relocation, Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: So the first one is Application Discovery Services and it will help you plan migration projects by gathering information about on-premise data centers.
- Hidden/Implicit Meaning: Migration-planning signal; Cutover and execution signal.

Line 3:
- Concepts: Application and Server Relocation, Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: It will track some stuff, such as the server utilization data and also map the dependencies before you do your migration.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 4:
- Concepts: Application and Server Relocation, Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: So there's two kind of discoveries for Application Discovery Services.
- Hidden/Implicit Meaning: Migration-planning signal.

Line 5:
- Concepts: Application and Server Relocation, Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: There is the agentless discovery with something called the Application Discovery Agentless Connector.
- Hidden/Implicit Meaning: Migration-planning signal.

Line 6:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: And this is an OVA package that you have to deploy onto a VMware host on-premise.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 7:
- Concepts: Migration Operational Context
- Services: AWS Config
- Key Insights: And this package will do some inventory on all the virtual missions you have, their configuration and their performance history such as CPU, memory and disc usage.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 8:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: It is going to work for any kind of operating system.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 9:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: But there's a second way of doing things, which is to use the agent-based discovery, which is really, really interesting.
- Hidden/Implicit Meaning: Migration-planning signal.

Line 10:
- Concepts: Application and Server Relocation
- Services: AWS Config
- Key Insights: This will gather system and configuration, system performance, running processes and details of all the network connection between the systems by deploying an agent onto a Microsoft server, an Amazon Linux, Ubuntu, RedHat, CentOS, SUSE.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 11:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: So the idea is that this agent will literally look into all the processes and also look into the network data and we'll map it with all the other agents we've deployed on all the other servers and this will allow us to get a full map of how the servers are communicating with one another and this will allow us to discover that, yes indeed, some servers seem to talk to one another but we didn't know about it.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 12:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: So this is to discover your entire mapping of services, applications, and servers overall.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 13:
- Concepts: Migration Strategy and Discovery
- Services: Amazon Athena
- Key Insights: All the resulting data can be exported as a CSV or viewed within something called the AWS Migration Hub and you can also query it using Amazon Athena.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 14:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: So I just wanna do a quick Zoom on the Migration Hub data exploration.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 15:
- Concepts: Application and Server Relocation
- Services: Amazon Athena
- Key Insights: So once you collect your data from your on-premises servers, you can use Athena to analyze the data collected.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 16:
- Concepts: Migration Operational Context
- Services: Amazon S3
- Key Insights: So because the data is automatically collected with the agent and it's stored in Amazon S3 buckets at regular intervals.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 17:
- Concepts: Migration Operational Context
- Services: Amazon Athena
- Key Insights: So then from Athena, you can use predefined or custom queries to analyze your data.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 18:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: For example, you can figure out the types of processes running on each server.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 19:
- Concepts: Migration Operational Context
- Services: AWS Config
- Key Insights: On top of it, you have the ability to upload additional data sources such as, for example, a CMDB export, so CMDB means Configuration Management Database.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 20:
- Concepts: Migration Strategy and Discovery
- Services: Amazon Athena
- Key Insights: So you can put all of this and use Athena to do your data exploration on the Migration Hub.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 21:
- Concepts: Migration Operational Context
- Services: Amazon Athena, Amazon QuickSight
- Key Insights: On top of it, if you wanted to visualize this data, you can of course integrate Athena with QuickSight.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 22:
- Concepts: Application and Server Relocation, Migration Strategy and Discovery
- Services: AWS Application Migration Service
- Key Insights: So now let's talk about the AWS Application Migration Service or MGN.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 23:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: So it's an evolution of another service that AWS had bought in the past, which was called CloudEndure Migration.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 24:
- Concepts: Application and Server Relocation, Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: And AWS used to have this service called Server Migration Service, SMS.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 25:
- Concepts: Application and Server Relocation, Migration Strategy and Discovery
- Services: AWS Application Migration Service, AWS SAM
- Key Insights: Now, both of them combined together are equal to the Application Migration Service and if you see CloudEndure Migration or SMS in your exam, this is the exact same service.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 26:
- Concepts: Application and Server Relocation
- Services: AWS Application Migration Service
- Key Insights: All right, so the purpose of the MGN service is to do lift and shift, so re-host solution to simplify migrating applications to AWS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 27:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: What it'll do is that it will convert your physical, virtual or cloud-based servers to run natively on AWS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 28:
- Concepts: Application and Server Relocation
- Services: AWS Application Migration Service
- Key Insights: So as an example, you have your corporate data center, you have your OS, your apps, your database, your discs and you wanna move them into the cloud using the MGN service.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 29:
- Concepts: Application and Server Relocation
- Services: Amazon EBS, Amazon EC2
- Key Insights: For this, you're going to create a staging environment and then you will run the replication agent from AWS and the replication user will continuously replicate the data, your applications and so on, onto your staging environment, which will correspond to an EC2 instance and EBS volumes.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 30:
- Concepts: Migration Operational Context
- Services: Amazon EBS, Amazon EC2
- Key Insights: And then when you're ready to fully migrate, you can do a cut-over into a production environment to have a largely side EC2 instance and EBS volumes.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 31:
- Concepts: Application and Server Relocation, Migration Strategy and Discovery
- Services: AWS Application Migration Service
- Key Insights: So this service, the Application Migration Service, MGN, supports a right range of platforms, supports different operating systems, as well as databases, and it gives you minimal downtime and reduced costs.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 32:
- Concepts: Application and Server Relocation
- Services: AWS Application Migration Service, Elastic Disaster Recovery
- Key Insights: And so the second service that looks a lot like MGN is called Elastic Disaster Recovery or DRS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 33:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And why, well, it used to be called CloudEndure Disaster Recovery, but it's been renamed and rebranded as a pure AWS service.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 34:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: So the way it works, with this service, you can quickly and easily recover your physical, virtual or cloud-based servers into AWS, which is very similar from the previous one, but this one is about recovery.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 35:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: So for example, you want to protect your most critical databases, for example, Oracle, MySQL and SQL Server, you wanna protect your enterprise apps, for example, SAP, or you wanna protect yourself from ransomware attacks and so on.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 36:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: And so for this, you're going to get continuous, block-level replication for your servers into the cloud.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 37:
- Concepts: Migration Operational Context
- Services: AWS SAM
- Key Insights: So the architecture is very similar because they actually rely on the same backend technology.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 38:
- Concepts: Migration Operational Context
- Services: Elastic Disaster Recovery
- Key Insights: So you have your OS, your apps, your database and your discs that are going to be pushed into the cloud using the Elastic Disaster Recovery.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 39:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So you need to have a replication agent that will replicate within seconds all your data into the cloud.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 40:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And then if you are to do a disaster recovery, then you can perform a failover within minutes to get a full-blown production environment ready in AWS in case, for example, your corporate data center goes down and in case you want to failover back, then you can have a failback mechanism when your corporate data center is available again.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 41:
- Concepts: Application and Server Relocation
- Services: Elastic Load Balancing
- Key Insights: So to summarize, there is a few services you can use with on-premises, so first of all, just so you know, you can download the Amazon Linux 2 AMI as a virtual machine in the ISO format, which allows you to load it onto VMware, KVM, VirtualBox and Microsoft Hyper-V.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 42:
- Concepts: Application and Server Relocation, Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: Then when it comes to moving from on-premises to the cloud, you can use the AWS Application Discovery Service to gather together information about your on-premises servers and plan migration.
- Hidden/Implicit Meaning: Migration-planning signal; Cutover and execution signal; Hybrid movement signal.

Line 43:
- Concepts: Application and Server Relocation, Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: You're going to get information about server utilization and dependency mapping and then you can track the entire migration with the AWS Migration Hub.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 44:
- Concepts: Application and Server Relocation, Migration Strategy and Discovery
- Services: AWS Application Migration Service
- Key Insights: Then you have the AWS Application Migration Service or MGN, which is replacing the SMS service or the CloudEndure Migration Service.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 45:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: And what you're going to get is incremental replication of on-premises live servers into AWS.
- Hidden/Implicit Meaning: Cutover and execution signal; Hybrid movement signal.

Line 46:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: You can migrate the entire VM into AWS with this service.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 47:
- Concepts: Application and Server Relocation
- Services: AWS Application Migration Service, Elastic Disaster Recovery
- Key Insights: Then you have the DRS service, so Elastic Disaster Recovery, which is very similar to MGN, but this one is replacing what's called CloudEndure Disaster Recovery.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 48:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: And it's going to help you recover on-premises workload onto AWS through a disaster recovery strategy.
- Hidden/Implicit Meaning: Migration-planning signal; Hybrid movement signal.

Line 49:
- Concepts: Application and Server Relocation, Database and Data Movement, Migration Strategy and Discovery
- Services: AWS Database Migration Service
- Key Insights: And then finally, not mentioning in this lecture but you've known about it already, this is the AWS Database Migration Service or DMS, which is going to be used to replicate your on-premises servers onto AWS or from AWS to AWS or even from AWS to on-premises and this is for databases only, of course.
- Hidden/Implicit Meaning: Constraint or limitation signal; Cutover and execution signal; Hybrid movement signal.

Line 50:
- Concepts: Migration Operational Context
- Services: Amazon DynamoDB
- Key Insights: It works for Oracle, MySQL DB, DynamoDB, et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 51:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: All right, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 52:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

### File: outputs/aws-solutions-architect-professional/14_Migration/147_AWS Migration Evaluator.txt

Line 1:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: So now let's talk about AWS Migration Evaluator, which is a service to help you build a data-driven business case for migrations to AWS.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 2:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that you wanna migrate, and first you need to get the clear baseline of what your organization is running today, so you know your workloads.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 3:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: And so therefore, you install the Agentless Collector to conduct a broad-based discovery of all your infrastructure.
- Hidden/Implicit Meaning: Migration-planning signal.

Line 4:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: And then you're going to take a snapshot of your on-premises footprint, your server dependencies, and so on.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 5:
- Concepts: Cutover and Landing Zone Readiness, Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: And you will analyze your current state, you will define the target state in AWS, and then develop a migration plan.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 6:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So to summarize, you can install a Collector, and that will gather data for you.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 7:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Or you can use the data import feature, and there is a tool, and there is a template.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 8:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: And what you can do is that you can shape the data you have into this template, and these sources of data will allow you to run the Migration Evaluator Service, which is going to give you quick insights to understand your customized cost insights, and to make sure that your migration can be cost efficient and also good for your business.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 9:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And therefore, you will have a good business case.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 10:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And if you need to, you can even get expert guidance on your business case from AWS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 11:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 12:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

## Step 2 - Consolidation

### 1. Concepts List
- Application and Server Relocation
- Cutover and Landing Zone Readiness
- Database and Data Movement
- Hybrid Transfer Execution
- Migration Operational Context
- Migration Strategy and Discovery

### 2. Services List
- AWS Application Migration Service
- AWS Batch
- AWS CloudFormation
- AWS Config
- AWS Database Migration Service
- AWS Elastic Beanstalk
- AWS Lambda
- AWS SAM
- AWS Snow Family
- AWS Storage Gateway
- AWS X-Ray
- Amazon Athena
- Amazon Aurora
- Amazon CloudWatch
- Amazon DynamoDB
- Amazon EBS
- Amazon EC2
- Amazon ECR
- Amazon ECS
- Amazon EFS
- Amazon EKS
- Amazon ElastiCache
- Amazon EventBridge
- Amazon FSx
- Amazon Glacier
- Amazon Lex
- Amazon QuickSight
- Amazon RDS
- Amazon Redshift
- Amazon S3
- Auto Scaling
- Elastic Disaster Recovery
- Elastic Load Balancing
- VMware Cloud on AWS

### 3. Features List
- dms
- mgn
- migration
- snow family
- storage gateway
- vmware cloud

### 4. Use Cases
- 069_VPC Endpoint architectures - Accessing on-premises services.txt:26: So that's one interesting pattern when it comes to hosting your actual services in your on premises network.
- 071_VPC Endpoint architectures - Accessing from on-premises network.txt:12: You don't want to add that endpoint URL to your commands when you fire that from your on premises host, right?
- 353_Disaster Recovery in AWS.txt:21: How back in time can you to recover?
- 353_Disaster Recovery in AWS.txt:22: And when a disaster strikes, basically, the time between their RPO and the disaster is going to be a data loss.
- 353_Disaster Recovery in AWS.txt:23: For example, if you back up data every hour and a disaster strikes, then you can go back in time for an hour and so you'll have lost one hour of data.
- 353_Disaster Recovery in AWS.txt:27: RTO, on the other end, is when you recover from your disaster, okay?
- 353_Disaster Recovery in AWS.txt:43: That means that you have a corporate data center, for example, and here is your a AWS's Cloud, and you have an S3 bucket.
- 353_Disaster Recovery in AWS.txt:49: And then when you have a disaster strike you and you need to basically restore all your data, then you can use AMIs to recreate EC2 instances and speed up your applications.
- 353_Disaster Recovery in AWS.txt:54: We just recreate infrastructure when we need it, when we have a disaster.
- 353_Disaster Recovery in AWS.txt:64: And so when you do recover, you just need to add on all the other systems that are not as critical.
- 353_Disaster Recovery in AWS.txt:75: And your EC2 instance only are created when you need to do a disaster recovery.
- 353_Disaster Recovery in AWS.txt:78: Warm Standby is when you have a full system up and running, but at a minimum size.
- 353_Disaster Recovery in AWS.txt:108: These both regions are working for me, and then when I want to failover, you know, I will be ready to go full production scale again in another region if I need to.
- 353_Disaster Recovery in AWS.txt:122: For high availability, using Route 53 to migrate DNS from a region to another region is really, really helpful and easy to implement.
- 353_Disaster Recovery in AWS.txt:131: Or maybe if we use CloudWatch, we can recover or reboot our EC2 instances when the CloudWatch alarms fail.
- 353_Disaster Recovery in AWS.txt:136: So how do we know how to recover from the disaster?
- 353_Disaster Recovery in AWS.txt:138: And so an example that's I think widely quoted now in the AWS world is that Netflix, they run everything on the AWS and they have created something called a simian army, and they randomly terminate EC2 instances, for example.
- 357_RDS & Aurora Migrations.txt:17: And if it's an external PostgreSQL database that you want to migrate to Aurora, you can create a backup of it and then you put the backup in Amazon S3, and then you import the data using the AWS S3 Aurora extension and this will create a new database out of it.
- 357_RDS & Aurora Migrations.txt:18: And finally, again, you can use DMS to migrate from PostgreSQL to Amazon Aurora continuously.
- 358_On-Premises Strategies with AWS.txt:9: Then, we have a feature called VM Import/Export, and what this allows you to do is to migrate your existing VMs and applications into EC2 directly using this feature.
- 358_On-Premises Strategies with AWS.txt:10: And you can also create a, for example, a disaster recovery repository strategy if you had a lot of on-premise VMs, but you wanted to back them up into the cloud.
- 358_On-Premises Strategies with AWS.txt:13: This is very high level, but it does give you some server utilization information and dependency mappings, and that could be quite helpful when you want to do a massive migration from on-premise to the cloud.
- 358_On-Premises Strategies with AWS.txt:17: And when you're ready, you can fully transition to using AWS only.
- 358_On-Premises Strategies with AWS.txt:19: That includes Oracle, MySQL, DynamoDB, et cetera, and allows you to do some really fancy use cases, for example, migrate data from MySQL into DynamoDB, okay?
- 363_VMware Cloud on AWS.txt:3: When you have an on-premises data center, sometimes you would use the VMware Cloud to manage your own on-premise data center.
- 363_VMware Cloud on AWS.txt:9: So once you have this, what are the use cases?
- 137_Cloud Migration Strategies - The 7Rs.txt:6: So you want to migrate to the cloud, and the first strategy is to actually retire.
- 137_Cloud Migration Strategies - The 7Rs.txt:9: So for example, you have some services and you actually don't need to migrate them, so you turn them off.
- 137_Cloud Migration Strategies - The 7Rs.txt:14: And you may want to just retain the resource on premises, for example, because of security, data compliance, performance, and unresolved dependencies, or because maybe there is no business value to migrate or it's too complicated.
- 137_Cloud Migration Strategies - The 7Rs.txt:17: So for example, you have servers that you manage on-premises using VMware software-defined data centers, so SSDC, and you just want to keep the same but use now VMware cloud on AWS, you just relocate, but nothing has changed.
- 137_Cloud Migration Strategies - The 7Rs.txt:21: You're going to migrate your machines.
- 137_Cloud Migration Strategies - The 7Rs.txt:26: And some services, for example, the AWS application migration service, allow you to just do that, the lift and shift.
- 137_Cloud Migration Strategies - The 7Rs.txt:29: So as an example, you want to migrate your database into RDS, or you want to migrate your application to Elastic Beanstalk.
- 137_Cloud Migration Strategies - The 7Rs.txt:31: For example, for a database, instead of just moving it from a server on premises to EC2, you move it to RDS, and RDS is going to give you a lot of benefits around backups, around resiliency, around high availability, and so on.
- 137_Cloud Migration Strategies - The 7Rs.txt:35: For example, you want to move to a software as a service platform, SaaS.
- 137_Cloud Migration Strategies - The 7Rs.txt:37: For example, you move your CRM to the managed version on salesforce.com or your HR to Workday or your CMS to Drupal.
- 137_Cloud Migration Strategies - The 7Rs.txt:44: So for example, you move your application to a serverless architecture, or you're going to use Amazon S3 to store some data and so on.
- 140_Snow Family.txt:3: So if you have a migration of say, petabytes of data, Snowball may be a good use case.
- 140_Snow Family.txt:11: For example, if you want to transfer a hundred terabytes over one gigabytes per second connection, it would take you 12 days.
- 140_Snow Family.txt:12: So when you have a slow connection, you may have limited connectivity, limited bandwidth, very high network cost, and you have to share the bandwidth, for example, with some other applications, the connection may not be stable.

### 5. Constraints / Limitations
- 071_VPC Endpoint architectures - Accessing from on-premises network.txt:10: And the connectivity should work.
- 071_VPC Endpoint architectures - Accessing from on-premises network.txt:15: Now in this case, we can't follow the same approach as previous because in that case, we had associated the private hosted zone with VPC because VPC is a AWS construct, right?
- 071_VPC Endpoint architectures - Accessing from on-premises network.txt:16: And as you know, this DNS cannot be directly resolved from the on premises network.
- 071_VPC Endpoint architectures - Accessing from on-premises network.txt:22: So now as you have the route 53 inbound resolver, you should also configure the DNS forwarder on your side, which sends all the requests for S3 dot AP South one dot Amazon Aws.com to this route 53 resolver inbound endpoint IP address.
- 353_Disaster Recovery in AWS.txt:2: And there's a white paper on it, you should read it, but I try to summarize everything clearly with graphs and diagrams in this lecture, so you don't have to read it if you don't want to.
- 353_Disaster Recovery in AWS.txt:55: And so the only cost we have is the cost of storing these backups.
- 353_Disaster Recovery in AWS.txt:75: And your EC2 instance only are created when you need to do a disaster recovery.
- 353_Disaster Recovery in AWS.txt:77: Remember, it's only for critical core systems.
- 357_RDS & Aurora Migrations.txt:11: Just so you know, this only supports the Percona XtraBackup utility.
- 358_On-Premises Strategies with AWS.txt:17: And when you're ready, you can fully transition to using AWS only.
- 137_Cloud Migration Strategies - The 7Rs.txt:11: You save costs because you retire services, maybe 10 to 20%, and you focus your attention on resources that must be maintained.
- 140_Snow Family.txt:8: So obviously one is for storage and the other one is only used for computer.
- 140_Snow Family.txt:12: So when you have a slow connection, you may have limited connectivity, limited bandwidth, very high network cost, and you have to share the bandwidth, for example, with some other applications, the connection may not be stable.
- 140_Snow Family.txt:22: And these locations may have no internet access or limited access to internet or compute power.
- 143_AWS CART - Cloud Adoption Readiness Tool.txt:4: And the idea is that you want to transform your idea of moving to the cloud into a detailed plan that will follow the best practices from AWS.
- 143_AWS CART - Cloud Adoption Readiness Tool.txt:8: And the custom report will give you your level of migration readiness and give you some recommendations to implement the best practices on AWS.
- 146_VM Migrations Services.txt:49: And then finally, not mentioning in this lecture but you've known about it already, this is the AWS Database Migration Service or DMS, which is going to be used to replicate your on-premises servers onto AWS or from AWS to AWS or even from AWS to on-premises and this is for databases only, of course.

### 6. Patterns / Architectures
- 069_VPC Endpoint architectures - Accessing on-premises services.txt:1: Okay, now that you understood how VPC endpoints work and Privatelink works, let's look at some of the interesting architectures that emerge using the VPC endpoint and Privatelink.
- 069_VPC Endpoint architectures - Accessing on-premises services.txt:3: And you may look at these architectures.
- 069_VPC Endpoint architectures - Accessing on-premises services.txt:7: Maybe some of the architectures are little advanced, so don't worry about that.
- 069_VPC Endpoint architectures - Accessing on-premises services.txt:8: You might not have the same architecture scenarios in your exam, but I'm sure this will help you in your day to day operations if you are working in AWS networking, right?
- 069_VPC Endpoint architectures - Accessing on-premises services.txt:9: So let's look at some of the architectures.
- 069_VPC Endpoint architectures - Accessing on-premises services.txt:10: And very first architecture is what if you have your services deployed in your on premises data center.
- 069_VPC Endpoint architectures - Accessing on-premises services.txt:26: So that's one interesting pattern when it comes to hosting your actual services in your on premises network.
- 069_VPC Endpoint architectures - Accessing on-premises services.txt:28: And with that, now let's look at some of the additional architectures in the following lectures.
- 071_VPC Endpoint architectures - Accessing from on-premises network.txt:2: Now this is very similar architecture to what we have seen earlier, just that this remote network is not inside AWS, it is outside of AWS.
- 071_VPC Endpoint architectures - Accessing from on-premises network.txt:30: So that's another architecture.
- 071_VPC Endpoint architectures - Accessing from on-premises network.txt:33: And with that, now let's go to the next architecture.
- 353_Disaster Recovery in AWS.txt:31: So basically optimizing for the RPO and the RTO does drive some solution architecture decisions, and obviously, the smaller you want these things to be, usually the higher the cost.
- 353_Disaster Recovery in AWS.txt:104: Finally, if you wanted to go all cloud, you know, it would be the same kind of architecture.
- 137_Cloud Migration Strategies - The 7Rs.txt:30: So here you don't change the core architecture of your application, but you're going to leverage some cloud optimizations, and you're going to save time and money by moving to fully-managed service or a serverless service.
- 137_Cloud Migration Strategies - The 7Rs.txt:44: So for example, you move your application to a serverless architecture, or you're going to use Amazon S3 to store some data and so on.
- 146_VM Migrations Services.txt:37: So the architecture is very similar because they actually rely on the same backend technology.

## Step 3 - Deep Expansion (Migration Concepts)

### Core Services in This Topic
- AWS Application Migration Service: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Batch: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS CloudFormation: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Config: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Database Migration Service: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Elastic Beanstalk: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Lambda: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Snow Family: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Storage Gateway: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

### Architect-Level Concept Expansion
- Application and Server Relocation: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Cutover and Landing Zone Readiness: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Database and Data Movement: treat this as a design lever that changes topology, risk posture, or operational workflow.
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
