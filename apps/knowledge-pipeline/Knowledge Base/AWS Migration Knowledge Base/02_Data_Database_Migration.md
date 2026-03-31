# 02_Data_Database_Migration.md

## Scope
- Topic: DMS, database migration, schema movement, and large-scale data transfer planning
- Files processed: 4
- Extracted non-empty transcript lines: 193
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Migration Knowledge Base
- Cross-domain referrals: 0

## Real Material - Architect Learning Build (Migration: Data Database Migration)

This section is the study-first architecture guide for dms, database migration, schema movement, and large-scale data transfer planning.

### Phase 1 - Foundations

#### Module: Data Database Migration Mental Model
- Use data database migration decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: Data Database Migration Mental Model
- Primary transcript files:
- outputs/aws-solutions-architect-professional/14_Migration/142_AWS DMS - Database Migration Services.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/28_Disaster Recovery & Migrations/355_Database Migration Service (DMS).txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/28_Disaster Recovery & Migrations/356_Database Migration Service (DMS) - Hands On.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/28_Disaster Recovery & Migrations/362_Transferring Large Datasets into AWS.txt
- Top concept clusters from transcript metadata:
- Database and Data Movement
- Migration Strategy and Discovery
- Application and Server Relocation
- Cutover and Landing Zone Readiness
- Hybrid Transfer Execution
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 4
- Module-selected transcript files: 4
- Key insight candidates scanned (topic): 193
- Key insights inside selected files: 24
- Unique concept tags in selected files: 5

##### Transcript-Enriched Learning Notes
- Okay, so now let's talk about DMS, which is a Database Migration Service.
- In this case, you should use DMS, or Database Migration Service.
- So if it's provisioned, we need to select the provisioned instance that we'll have created from before, or if it's serverless, then DMS will automatically adjust the level of compute needed for your migration error application task, and we don't need to select the type of instance we need.
- So you don't need to remember all of these, of course, but the general idea is that DMS can help you take a database, for example, an on-premise database and have it put and exported and migrated onto a target that is, pretty much, any database that AWS is offering.
- But from this overview, what I want to show you is that you have the idea behind all the steps needed to set up DMS and migrate a database from one source engine to a target engine, and with two options, serverless or provisioned instances.
- For ongoing replications, we could use techniques such as Site-to-Site VPN, again, because we'll have less data to transfer on an ongoing basis, or use direct connect, or use DMS, or use a service like we just saw, like DataSync.
- So very simply, your source database may be on-premise and then you're running an EC2 instance that has the DMS software and it will pull data from the source database, in continuously, and put it in the target database.
- It'll take about one week for the end-to-end transfer and on top of it, if there was a database that was being transferred through Snowball, it could be combined with DMS to transfer the rest of the data afterwards.
- So when you have this, then you have a DMS replication instance in one AZ and then you have synchronous replication of that instance into another AZ, which is going to be a standby replica.
- For OpenSearch, as I said, the source does not exist, and for the target, it's possible to migrate from a relational database to OpenSearch using DMS.
- Now for targets of DMS, we have any on-premises and EC2 instances database such as Oracle, Microsoft SQL Server, MySQL, MariaDB, PostgreSQL, and SAP.
- So you click on get started, and this gives you just an overview page of what you can do with DMS, but the real magic happens on the left-hand side.

##### Polished Architect Notes
- Transcript signals that okay, so now let's talk about DMS, which is a Database Migration Service.
- Transcript signals that in this case, you should use DMS, or Database Migration Service.
- Transcript signals that so if it's provisioned, we need to select the provisioned instance that we'll have created from before, or if it's serverless, then DMS will automatically adjust the level of compute needed for your migration error application task, and we don't need to select the type of instance we need.
- Transcript signals that so you don't need to remember all of these, of course, but the general idea is that DMS can help you take a database, for example, an on-premise database and have it put and exported and migrated onto a target that is, pretty much, any database that AWS is offering.
- Transcript signals that but from this overview, what I want to show you is that you have the idea behind all the steps needed to set up DMS and migrate a database from one source engine to a target engine, and with two options, serverless or provisioned instances.
- Transcript signals that for ongoing replications, we could use techniques such as Site-to-Site VPN, again, because we'll have less data to transfer on an ongoing basis, or use direct connect, or use DMS, or use a service like we just saw, like DataSync.
- Transcript signals that so very simply, your source database may be on-premise and then you're running an EC2 instance that has the DMS software and it will pull data from the source database, in continuously, and put it in the target database.
- Transcript signals that it'll take about one week for the end-to-end transfer and on top of it, if there was a database that was being transferred through Snowball, it could be combined with DMS to transfer the rest of the data afterwards.
- Transcript signals that so when you have this, then you have a DMS replication instance in one AZ and then you have synchronous replication of that instance into another AZ, which is going to be a standby replica.
- Transcript signals that for OpenSearch, as I said, the source does not exist, and for the target, it's possible to migrate from a relational database to OpenSearch using DMS.
- Transcript signals that now for targets of DMS, we have any on-premises and EC2 instances database such as Oracle, Microsoft SQL Server, MySQL, MariaDB, PostgreSQL, and SAP.
- Transcript signals that so you click on get started, and this gives you just an overview page of what you can do with DMS, but the real magic happens on the left-hand side.

##### Architect Synthesis (Transcript-Derived)
- Treat Database and Data Movement as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Migration Strategy and Discovery as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Application and Server Relocation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Cutover and Landing Zone Readiness as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Hybrid Transfer Execution as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: okay, so now let's talk about DMS, which is a Database Migration Service.
- Design implication: in this case, you should use DMS, or Database Migration Service.
- Design implication: so if it's provisioned, we need to select the provisioned instance that we'll have created from before, or if it's serverless, then DMS will automatically adjust the level of compute needed for your migration error application task, and we don't need to select the type of instance we need.
- Design implication: so you don't need to remember all of these, of course, but the general idea is that DMS can help you take a database, for example, an on-premise database and have it put and exported and migrated onto a target that is, pretty much, any database that AWS is offering.
- Design implication: but from this overview, what I want to show you is that you have the idea behind all the steps needed to set up DMS and migrate a database from one source engine to a target engine, and with two options, serverless or provisioned instances.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/aws-certified-solutions-architect-associate-saa-c03/28_Disaster Recovery & Migrations/355_Database Migration Service (DMS).txt
- outputs/aws-solutions-architect-professional/14_Migration/142_AWS DMS - Database Migration Services.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/28_Disaster Recovery & Migrations/356_Database Migration Service (DMS) - Hands On.txt
- Top concept clusters from transcript metadata:
- Application and Server Relocation
- Database and Data Movement
- Hybrid Transfer Execution
- Cutover and Landing Zone Readiness
- Migration Strategy and Discovery
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 4
- Module-selected transcript files: 3
- Key insight candidates scanned (topic): 193
- Key insights inside selected files: 10
- Unique concept tags in selected files: 5

##### Transcript-Enriched Learning Notes
- So we set up a server with AWS SCT installed and we can set it up on-premises, this is best practice, and then we will do the schema conversion into our Amazon RDS database running MySQL.
- First, you're going to use the AWS Schema Conversion Tool, SCT, to extract the data locally, so we're talking about on-premise, and then we'll copy it onto a Snowball Edge device.
- Then you need to use something called AWS SCT, for Schema Conversion Tool, and it will convert the database schema from one engine to another.
- You can convert or move to managed, so the idea is that you convert a schema using the DMS Schema Conversion tool.
- In this example, SCT will be running alongside DMS to convert the schema from the source database to the targets.
- So AWS SCT, for Schema Conversion Tool, which is to convert your database schema from one engine to another.
- In the middle, we have DMS, but it's now also running SCT, or Schema Conversion Tool.
- Or if we don't convert the schema, we have a homogeneous data migration.
- And here to convert a database, we have this schema conversion.
- So the Schema Conversion Tool.

##### Polished Architect Notes
- Transcript signals that so we set up a server with AWS SCT installed and we can set it up on-premises, this is best practice, and then we will do the schema conversion into our Amazon RDS database running MySQL.
- Transcript signals that first, you're going to use the AWS Schema Conversion Tool, SCT, to extract the data locally, so we're talking about on-premise, and then we'll copy it onto a Snowball Edge device.
- Transcript signals that then you need to use something called AWS SCT, for Schema Conversion Tool, and it will convert the database schema from one engine to another.
- Transcript signals that you can convert or move to managed, so the idea is that you convert a schema using the DMS Schema Conversion tool.
- Transcript signals that in this example, SCT will be running alongside DMS to convert the schema from the source database to the targets.
- Transcript signals that so AWS SCT, for Schema Conversion Tool, which is to convert your database schema from one engine to another.
- Transcript signals that in the middle, we have DMS, but it's now also running SCT, or Schema Conversion Tool.
- Transcript signals that or if we don't convert the schema, we have a homogeneous data migration.
- Transcript signals that and here to convert a database, we have this schema conversion.
- Transcript signals that so the Schema Conversion Tool.

##### Architect Synthesis (Transcript-Derived)
- Treat Application and Server Relocation as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Database and Data Movement as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Hybrid Transfer Execution as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Cutover and Landing Zone Readiness as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Migration Strategy and Discovery as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so we set up a server with AWS SCT installed and we can set it up on-premises, this is best practice, and then we will do the schema conversion into our Amazon RDS database running MySQL.
- Design implication: first, you're going to use the AWS Schema Conversion Tool, SCT, to extract the data locally, so we're talking about on-premise, and then we'll copy it onto a Snowball Edge device.
- Design implication: then you need to use something called AWS SCT, for Schema Conversion Tool, and it will convert the database schema from one engine to another.
- Design implication: you can convert or move to managed, so the idea is that you convert a schema using the DMS Schema Conversion tool.
- Design implication: in this example, SCT will be running alongside DMS to convert the schema from the source database to the targets.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/aws-certified-solutions-architect-associate-saa-c03/28_Disaster Recovery & Migrations/362_Transferring Large Datasets into AWS.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/28_Disaster Recovery & Migrations/356_Database Migration Service (DMS) - Hands On.txt
- outputs/aws-solutions-architect-professional/14_Migration/142_AWS DMS - Database Migration Services.txt
- outputs/aws-certified-solutions-architect-associate-saa-c03/28_Disaster Recovery & Migrations/355_Database Migration Service (DMS).txt
- Top concept clusters from transcript metadata:
- Database and Data Movement
- Hybrid Transfer Execution
- Cutover and Landing Zone Readiness
- Migration Strategy and Discovery
- Application and Server Relocation
- Migration Operational Context
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 4
- Module-selected transcript files: 4
- Key insight candidates scanned (topic): 193
- Key insights inside selected files: 24
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- For ongoing replications, we could use techniques such as Site-to-Site VPN, again, because we'll have less data to transfer on an ongoing basis, or use direct connect, or use DMS, or use a service like we just saw, like DataSync.
- It'll take about one week for the end-to-end transfer and on top of it, if there was a database that was being transferred through Snowball, it could be combined with DMS to transfer the rest of the data afterwards.
- You can convert or move to managed, so the idea is that you convert a schema using the DMS Schema Conversion tool.
- In this example, SCT will be running alongside DMS to convert the schema from the source database to the targets.
- In the middle, we have DMS, but it's now also running SCT, or Schema Conversion Tool.
- Okay, so now let's talk about DMS, which is a Database Migration Service.
- In this case, you should use DMS, or Database Migration Service.
- So if it's provisioned, we need to select the provisioned instance that we'll have created from before, or if it's serverless, then DMS will automatically adjust the level of compute needed for your migration error application task, and we don't need to select the type of instance we need.
- So you don't need to remember all of these, of course, but the general idea is that DMS can help you take a database, for example, an on-premise database and have it put and exported and migrated onto a target that is, pretty much, any database that AWS is offering.
- But from this overview, what I want to show you is that you have the idea behind all the steps needed to set up DMS and migrate a database from one source engine to a target engine, and with two options, serverless or provisioned instances.
- So very simply, your source database may be on-premise and then you're running an EC2 instance that has the DMS software and it will pull data from the source database, in continuously, and put it in the target database.
- Well, first of all, I need to order my Snowballs, and then it takes about one week all in all from the Snowball to being delivered, to being loaded, to being sent back to AWS and the data being transferred.

##### Polished Architect Notes
- Transcript signals that for ongoing replications, we could use techniques such as Site-to-Site VPN, again, because we'll have less data to transfer on an ongoing basis, or use direct connect, or use DMS, or use a service like we just saw, like DataSync.
- Transcript signals that it'll take about one week for the end-to-end transfer and on top of it, if there was a database that was being transferred through Snowball, it could be combined with DMS to transfer the rest of the data afterwards.
- Transcript signals that you can convert or move to managed, so the idea is that you convert a schema using the DMS Schema Conversion tool.
- Transcript signals that in this example, SCT will be running alongside DMS to convert the schema from the source database to the targets.
- Transcript signals that in the middle, we have DMS, but it's now also running SCT, or Schema Conversion Tool.
- Transcript signals that okay, so now let's talk about DMS, which is a Database Migration Service.
- Transcript signals that in this case, you should use DMS, or Database Migration Service.
- Transcript signals that so if it's provisioned, we need to select the provisioned instance that we'll have created from before, or if it's serverless, then DMS will automatically adjust the level of compute needed for your migration error application task, and we don't need to select the type of instance we need.
- Transcript signals that so you don't need to remember all of these, of course, but the general idea is that DMS can help you take a database, for example, an on-premise database and have it put and exported and migrated onto a target that is, pretty much, any database that AWS is offering.
- Transcript signals that but from this overview, what I want to show you is that you have the idea behind all the steps needed to set up DMS and migrate a database from one source engine to a target engine, and with two options, serverless or provisioned instances.
- Transcript signals that so very simply, your source database may be on-premise and then you're running an EC2 instance that has the DMS software and it will pull data from the source database, in continuously, and put it in the target database.
- Transcript signals that well, first of all, I need to order my Snowballs, and then it takes about one week all in all from the Snowball to being delivered, to being loaded, to being sent back to AWS and the data being transferred.

##### Architect Synthesis (Transcript-Derived)
- Treat Database and Data Movement as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Hybrid Transfer Execution as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Cutover and Landing Zone Readiness as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Migration Strategy and Discovery as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Application and Server Relocation as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: for ongoing replications, we could use techniques such as Site-to-Site VPN, again, because we'll have less data to transfer on an ongoing basis, or use direct connect, or use DMS, or use a service like we just saw, like DataSync.
- Design implication: it'll take about one week for the end-to-end transfer and on top of it, if there was a database that was being transferred through Snowball, it could be combined with DMS to transfer the rest of the data afterwards.
- Design implication: you can convert or move to managed, so the idea is that you convert a schema using the DMS Schema Conversion tool.
- Design implication: in this example, SCT will be running alongside DMS to convert the schema from the source database to the targets.
- Design implication: in the middle, we have DMS, but it's now also running SCT, or Schema Conversion Tool.

### Phase 2 - Core Services
- AWS Database Migration Service should be understood in terms of request path, control plane, and operational boundary.
- Amazon Aurora should be understood in terms of request path, control plane, and operational boundary.
- Amazon EC2 should be understood in terms of request path, control plane, and operational boundary.
- Amazon RDS should be understood in terms of request path, control plane, and operational boundary.
- Amazon DocumentDB should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: Application and Server Relocation becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Cutover and Landing Zone Readiness becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Database and Data Movement becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Hybrid Transfer Execution becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Migration Operational Context becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design data database migration with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when data database migration decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: So you click on get started, and this gives you just an overview page of what you can do with DMS, but the real magic happens on the left-hand side.
- Signal 2: Transcript signals that so you click on get started, and this gives you just an overview page of what you can do with DMS, but the real magic happens on the left-hand side.
- Signal 3: Key Insights: Finally, to use DMS, you need to create an EC2 instance, and that EC2 instance will perform the replication tasks for you.
- Signal 4: Key Insights: So you click on get started, and this gives you just an overview page of what you can do with DMS, but the real magic happens on the left-hand side.
- Signal 5: Key Insights: You can do a discovery and assessment in which you're going to create a data collector, find databases, analyze inventory, and then use the recommendations.
- Signal 6: Key Insights: We create a provision instance and we create a task for the replication.
- Signal 7: Key Insights: So it could be from source to target, and so you must create an endpoint for the source and the target.
- Signal 8: Key Insights: So the idea is that I will create an endpoint, and here you choose whatever you want.
- Signal 9: Key Insights: This is optional, but at least you're able to see whether or not your replication instance, that we'll create in a second, can connect to your source.
- Signal 10: Key Insights: So once you've created two endpoints, you can create a replication task.

### Service-Specific Lab Paths
### Activity 1: AWS DMS Lab for DMS, database migration, schema movement, and large-scale data transfer planning
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

### Activity 2: AWS MGN Lab for DMS, database migration, schema movement, and large-scale data transfer planning
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

### Activity 3: AWS Application Discovery Service Lab for DMS, database migration, schema movement, and large-scale data transfer planning
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

### Activity 4: AWS Migration Hub Lab for DMS, database migration, schema movement, and large-scale data transfer planning
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

Use this lens to study DMS, database migration, schema movement, and large-scale data transfer planning in a cloud-agnostic way: focus on capability first, provider name second.

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
| AWS DMS | AWS DMS | Azure Database Migration Service | Database Migration Service |
| AWS MGN | AWS MGN | Azure Migrate | Migrate to Virtual Machines |
| AWS Application Discovery Service | AWS Application Discovery Service | Azure Migrate Discovery and Assessment | Migration Center Discovery |
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

- No secondary referral sources were required for this topic.

## Step 1 - Line-by-Line Extraction

Every non-empty line from every primary source transcript is preserved below with extraction fields.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/28_Disaster Recovery & Migrations/355_Database Migration Service (DMS).txt

Line 1:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So let's say you wanted to migrate a database from your on-premise systems to the AWS Cloud.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 2:
- Concepts: Database and Data Movement, Migration Strategy and Discovery
- Services: AWS Database Migration Service
- Key Insights: In this case, you should use DMS, or Database Migration Service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cutover and execution signal.

Line 3:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: It's a quick and secure database service that allows you to migrate your database from on-premise to AWS, but the cool thing is that it's resilient and it's self-healing.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 4:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: And all alongside the migration, the source database remains available.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 5:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: And it supports many types of engines, such as homogeneous migration, so from Oracle to Oracle, or Postgres to Postgres, but also heterogeneous migrations.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 6:
- Concepts: Application and Server Relocation
- Services: Amazon Aurora
- Key Insights: For example, if you want to migrate from Microsoft SQL server all the way to Aurora and it supports continuous data replication using CDC, which is Change Data Capture.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 7:
- Concepts: Database and Data Movement
- Services: AWS Database Migration Service, Amazon EC2
- Key Insights: Finally, to use DMS, you need to create an EC2 instance, and that EC2 instance will perform the replication tasks for you.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 8:
- Concepts: Cutover and Landing Zone Readiness, Database and Data Movement
- Services: AWS Database Migration Service, Amazon EC2
- Key Insights: So very simply, your source database may be on-premise and then you're running an EC2 instance that has the DMS software and it will pull data from the source database, in continuously, and put it in the target database.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 9:
- Concepts: Cutover and Landing Zone Readiness
- Services: (none explicit)
- Key Insights: So the question is what are the sources and what are the targets?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 10:
- Concepts: Database and Data Movement
- Services: AWS Database Migration Service
- Key Insights: You don't need to remember them all, but the important to see ones, just to understand the concepts behind the DMS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 11:
- Concepts: Application and Server Relocation
- Services: Amazon EC2
- Key Insights: So the sources can be on-premises databases or EC2 instances based databases, such as Oracle, Microsoft SQL Server, MySQL, MariaDB, PostgreSQL, MongoDB, SAP, and DB2.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 12:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: It can also be Azure databases, such as Azure SQL Database.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 13:
- Concepts: Migration Operational Context
- Services: Amazon Aurora, Amazon RDS
- Key Insights: It could be Amazon RDS, any database including Aurora.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 14:
- Concepts: Migration Operational Context
- Services: Amazon DocumentDB, Amazon S3
- Key Insights: It could be Amazon S3 and DocumentDB.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 15:
- Concepts: Cutover and Landing Zone Readiness
- Services: (none explicit)
- Key Insights: In terms of targets, well we have different options, as well.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 16:
- Concepts: Migration Operational Context
- Services: Amazon EC2
- Key Insights: We have on-premises and EC2 instances databases.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 17:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: So we can have Oracle, Microsoft SQL Server, MySQL, MariaDB, PostgreSQL, SAP.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 18:
- Concepts: Migration Operational Context
- Services: Amazon RDS
- Key Insights: We can also have any database on Amazon RDS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 19:
- Concepts: Migration Operational Context
- Services: Amazon DocumentDB, Amazon DynamoDB, Amazon Kinesis, Amazon Neptune, Amazon Redshift, Amazon S3
- Key Insights: We can have Redshift, DynamoDB, Amazon S3, the OpenSource service, Kinesis Data Streams, Apache Kafka, DocumentDB, and Amazon Neptune, as well as Redis and Babelfish.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 20:
- Concepts: Cutover and Landing Zone Readiness, Database and Data Movement
- Services: AWS Database Migration Service
- Key Insights: So you don't need to remember all of these, of course, but the general idea is that DMS can help you take a database, for example, an on-premise database and have it put and exported and migrated onto a target that is, pretty much, any database that AWS is offering.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 21:
- Concepts: Database and Data Movement
- Services: AWS Database Migration Service
- Key Insights: If you understand this, then you have the general idea behind DMS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 22:
- Concepts: Cutover and Landing Zone Readiness
- Services: AWS SAM
- Key Insights: So what if the source database and the target database do not have the same engine?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 23:
- Concepts: Database and Data Movement
- Services: (none explicit)
- Key Insights: Then you need to use something called AWS SCT, for Schema Conversion Tool, and it will convert the database schema from one engine to another.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 24:
- Concepts: Application and Server Relocation
- Services: Amazon Aurora
- Key Insights: So for example, if you're using an OLTP, we can migrate from SQL server or Oracle to MySQL, PostgreSQL, or Aurora.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 25:
- Concepts: Migration Operational Context
- Services: Amazon Redshift
- Key Insights: As you can see on the left hand side, the database engine is different from the one on the right hand side, but also you can transform for analytics process, such as Teradata or Oracle, all the way to Amazon Redshift.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 26:
- Concepts: Cutover and Landing Zone Readiness
- Services: (none explicit)
- Key Insights: So the idea is that here, the source database has a different engine than the Target database.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 27:
- Concepts: Database and Data Movement
- Services: AWS Database Migration Service
- Key Insights: In the middle, we have DMS, but it's now also running SCT, or Schema Conversion Tool.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 28:
- Concepts: Migration Operational Context
- Services: AWS SAM
- Key Insights: And the thing to know going into the exam is that you do not need to use SCT if you are migrating the same database engine.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 29:
- Concepts: Migration Operational Context
- Services: AWS SAM, Amazon RDS
- Key Insights: So if you're doing on-premise PostgreSQL to RDS PostgreSQL, it is the same database agent, it is PostgreSQL.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 30:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And so this for, you will not use SCT.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 31:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: But if you're doing something such as Oracle to Postgres, then you will need to use SCT.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 32:
- Concepts: Migration Operational Context
- Services: Amazon RDS
- Key Insights: So just so you know, the database agent is PostgreSQL, but RDS is just a platform that we're using to run this database engine.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 33:
- Concepts: Database and Data Movement
- Services: AWS Database Migration Service
- Key Insights: So how would you go to set up a continuous replication for DMS?
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 34:
- Concepts: Cutover and Landing Zone Readiness
- Services: Amazon RDS
- Key Insights: Well, you would have your corporate data center, for example, with an Oracle database as a source and an Amazon RDS database for MySQL DB as a target.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 35:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And as we can see, we have two different kinds of types of database.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 36:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So in this case, we have to use SCT, otherwise it will not work.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 37:
- Concepts: Database and Data Movement
- Services: (none explicit)
- Key Insights: So the Schema Conversion Tool.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 38:
- Concepts: Application and Server Relocation, Database and Data Movement
- Services: Amazon RDS
- Key Insights: So we set up a server with AWS SCT installed and we can set it up on-premises, this is best practice, and then we will do the schema conversion into our Amazon RDS database running MySQL.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Hybrid movement signal.

Line 39:
- Concepts: Database and Data Movement
- Services: AWS Database Migration Service
- Key Insights: Then we can set up a DMS replication instance that will do the full load and the change data capture, CDC, to have continuous replication.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 40:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: And so it will perform the data migration by reading the database on-premises, the source Oracle database, and inserting the data into your private subnets.
- Hidden/Implicit Meaning: Cutover and execution signal; Hybrid movement signal.

Line 41:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: That's it.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 42:
- Concepts: Database and Data Movement
- Services: AWS Database Migration Service
- Key Insights: So that's all you need to know for DMS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 43:
- Concepts: Database and Data Movement, Migration Strategy and Discovery
- Services: AWS Database Migration Service
- Key Insights: This is for Database Migration Service.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 44:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Remember, you need to use SCT whenever you have two different kinds of databases that you're migrating from.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 45:
- Concepts: Database and Data Movement
- Services: AWS Database Migration Service
- Key Insights: And for DMS, there is a multi AZ deployment.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 46:
- Concepts: Database and Data Movement
- Services: AWS Database Migration Service
- Key Insights: So when you have this, then you have a DMS replication instance in one AZ and then you have synchronous replication of that instance into another AZ, which is going to be a standby replica.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 47:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So the benefits of using this is, of course, to be resilient to a failure in one specific AZ, but also gives you data redundancy, will eliminate IO freezes and will minimize latency spikes.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 48:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 49:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/28_Disaster Recovery & Migrations/356_Database Migration Service (DMS) - Hands On.txt

Line 1:
- Concepts: Database and Data Movement
- Services: AWS Database Migration Service
- Key Insights: So now let's have a look at AWS DMS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 2:
- Concepts: Database and Data Movement
- Services: AWS Database Migration Service
- Key Insights: So you click on get started, and this gives you just an overview page of what you can do with DMS, but the real magic happens on the left-hand side.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 3:
- Concepts: Migration Operational Context
- Services: AWS SAM
- Key Insights: So this can change, but the idea remains the same.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 4:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: You can do a discovery and assessment in which you're going to create a data collector, find databases, analyze inventory, and then use the recommendations.
- Hidden/Implicit Meaning: Migration-planning signal.

Line 5:
- Concepts: Database and Data Movement
- Services: AWS Database Migration Service
- Key Insights: You can convert or move to managed, so the idea is that you convert a schema using the DMS Schema Conversion tool.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 6:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Then you move your data into AWS and you move to a managed service, or you can migrate or replicate data.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 7:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And here, we choose the end points, we're gonna see this in a second.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 8:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: We create a provision instance and we create a task for the replication.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 9:
- Concepts: Application and Server Relocation, Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: You see that for some of these options, we have Provisioned or Serverless for the migration of the replication.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 10:
- Concepts: Database and Data Movement
- Services: (none explicit)
- Key Insights: And here to convert a database, we have this schema conversion.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 11:
- Concepts: Database and Data Movement, Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: Or if we don't convert the schema, we have a homogeneous data migration.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 12:
- Concepts: Database and Data Movement
- Services: AWS Database Migration Service
- Key Insights: So this is just to give you an overview of DMS, but the real magic happens on left-hand side.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 13:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So here you're going to go into Endpoints and we're going to look at it.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 14:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So first of all, this is how to move data.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 15:
- Concepts: Cutover and Landing Zone Readiness
- Services: (none explicit)
- Key Insights: So it could be from source to target, and so you must create an endpoint for the source and the target.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that I will create an endpoint, and here you choose whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 17:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So you enter an identifier, and then you have to choose the source engine.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 18:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So you have all these options for the source engines.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 19:
- Concepts: Migration Operational Context
- Services: Amazon Aurora
- Key Insights: For example, you choose Amazon Aurora MySQL.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 20:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And then you have to enter all the information about the endpoint.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 21:
- Concepts: Migration Operational Context
- Services: Amazon Aurora
- Key Insights: We cannot do this because we don't have an Aurora database ready, but you get the idea.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 22:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Finally, you have the option for some databases to test the endpoint connection.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 23:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: This is optional, but at least you're able to see whether or not your replication instance, that we'll create in a second, can connect to your source.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 24:
- Concepts: Cutover and Landing Zone Readiness, Database and Data Movement
- Services: AWS Database Migration Service, AWS SAM
- Key Insights: So you have the same type of idea with target in which you say what you want DMS to write to.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 25:
- Concepts: Cutover and Landing Zone Readiness
- Services: (none explicit)
- Key Insights: And again, you need to choose a target engine amongst the list.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 26:
- Concepts: Migration Operational Context
- Services: AWS Config
- Key Insights: And you enter some configuration.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 27:
- Concepts: Migration Operational Context
- Services: Amazon DynamoDB
- Key Insights: For example, if you choose DynamoDB right here, you enter a service role access, endpoint setting, wizard, editor, and so on, and then test again the connection to the endpoint.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 28:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So you get a lot of information as well when you choose an endpoint on the right-hand side around what to do and the best practices.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 29:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So once you've created two endpoints, you can create a replication task.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 30:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And so you have two options.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 31:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: For this task, you can either create a replication instance, and here you create a replication instance by actually creating a physical server.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 32:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: So here, we can choose the size of the server, as you can see.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 33:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: For the bigger replication task, you may want to choose a bigger server.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 34:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And you can click here to estimate the instance class and storage.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 35:
- Concepts: Migration Operational Context
- Services: AWS Config
- Key Insights: And then you can configure it.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 36:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: You say whether or not you want high availability, the networking type, you apply a subnet group, you will apply security groups and so on, and then you have an instance.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 37:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: Or optionally, you can use serverless.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 38:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: And so if it's serverless, then you don't need to provision an instance.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 39:
- Concepts: Application and Server Relocation
- Services: (none explicit)
- Key Insights: So here, when you go to Provisioned instances, it's not to do serverless, it's to do the opposites.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 40:
- Concepts: Cutover and Landing Zone Readiness
- Services: (none explicit)
- Key Insights: So when you go to tasks, here we go, you can create a task, and you're going to specify the source database endpoint that we've created from before, the target database endpoint that we've created after, and then the task mode.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 41:
- Concepts: Application and Server Relocation, Database and Data Movement, Migration Strategy and Discovery
- Services: AWS Database Migration Service
- Key Insights: So if it's provisioned, we need to select the provisioned instance that we'll have created from before, or if it's serverless, then DMS will automatically adjust the level of compute needed for your migration error application task, and we don't need to select the type of instance we need.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 42:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So this is an easier option, I would say.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 43:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Now you choose the test types.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 44:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So you want to migrate data once, do you want to migrate and replicate?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 45:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Which means a full load and then anytime the source data changes, you're going to replicate these changes, it's called CDC.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 46:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Or do you want to just do the replication?
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 47:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And then for how long?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 48:
- Concepts: Cutover and Landing Zone Readiness
- Services: (none explicit)
- Key Insights: And then once you've done that, based on what your source and your target is, you can specify some settings and so on for some logging, some connectivity, how to do it, so it's quite a complete service.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 49:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: To go deep into setting a replication, it takes time.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 50:
- Concepts: Application and Server Relocation, Cutover and Landing Zone Readiness, Database and Data Movement
- Services: AWS Database Migration Service
- Key Insights: But from this overview, what I want to show you is that you have the idea behind all the steps needed to set up DMS and migrate a database from one source engine to a target engine, and with two options, serverless or provisioned instances.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 51:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

### File: outputs/aws-certified-solutions-architect-associate-saa-c03/28_Disaster Recovery & Migrations/362_Transferring Large Datasets into AWS.txt

Line 1:
- Concepts: Database and Data Movement
- Services: (none explicit)
- Key Insights: So here is a quick summary lecture to describe to you all the ways you can transfer a large amount of data into AWS and which one is going to be the most appropriate based on the constraints you have.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 2:
- Concepts: Database and Data Movement
- Services: (none explicit)
- Key Insights: So for example, let's say we want to transfer 200 terabytes of data into the cloud, and what we have currently is a 100 megabits per second internet connection.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 3:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So, option number one would be to use the internet, the public internet, or establish a Site-to-Site VPN, which also uses the public internet.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 4:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And the advantage of this is that it's immediate to set up.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 5:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: We can leverage our connection right away.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 6:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: If we do a quick computation, what we get is that it will take 200 terabytes converted into gigabytes and then megabytes, then you have to convert this to megabits, so times eight, then you divide by the speed you have, so 100 megabits per second, and that gives you about 16 million seconds, which is the equivalent of 185 days.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 7:
- Concepts: Database and Data Movement
- Services: (none explicit)
- Key Insights: So, almost half a year to transfer 200 terabytes of data over 100 megabits internet connection, so this can take a long time.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 8:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Obviously, based on the size you have of the data, it could be appropriate or not.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 9:
- Concepts: Database and Data Movement
- Services: (none explicit)
- Key Insights: And in this case, I will never probably transfer 200 terabytes over this internet connection speed.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Cutover and execution signal.

Line 10:
- Concepts: Database and Data Movement
- Services: (none explicit)
- Key Insights: If I want to transfer now over direct connect and say we have provisioned a one gigabits per second line, then the first thing is that it's going to be a long, one-time setup.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 11:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So if I'd never had direct connect before, it will take about a month to get this connection established.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Migration Operational Context
- Services: AWS SAM
- Key Insights: And then, once I have this connection, it will take about, if we do the exact same computation, 10 times faster than my first connection, so it's gonna end up being 18.5 days.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 13:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So a lot quicker, but still quite long.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 14:
- Concepts: Hybrid Transfer Execution
- Services: AWS Snow Family
- Key Insights: Now, if I use Snowball, how long do I need?
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 15:
- Concepts: Database and Data Movement, Hybrid Transfer Execution
- Services: AWS Snow Family
- Key Insights: Well, first of all, I need to order my Snowballs, and then it takes about one week all in all from the Snowball to being delivered, to being loaded, to being sent back to AWS and the data being transferred.
- Hidden/Implicit Meaning: Cutover and execution signal; Hybrid movement signal.

Line 16:
- Concepts: Database and Data Movement, Hybrid Transfer Execution
- Services: AWS Database Migration Service, AWS Snow Family, Amazon RDS
- Key Insights: It'll take about one week for the end-to-end transfer and on top of it, if there was a database that was being transferred through Snowball, it could be combined with DMS to transfer the rest of the data afterwards.
- Hidden/Implicit Meaning: Cutover and execution signal; Hybrid movement signal.

Line 17:
- Concepts: Database and Data Movement
- Services: (none explicit)
- Key Insights: So finally, for ongoing replications, so this is like for one-off transfers.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 18:
- Concepts: Database and Data Movement, Hybrid Transfer Execution
- Services: AWS DataSync, AWS Database Migration Service
- Key Insights: For ongoing replications, we could use techniques such as Site-to-Site VPN, again, because we'll have less data to transfer on an ongoing basis, or use direct connect, or use DMS, or use a service like we just saw, like DataSync.
- Hidden/Implicit Meaning: Cutover and execution signal; Hybrid movement signal.

Line 19:
- Concepts: Database and Data Movement
- Services: (none explicit)
- Key Insights: So, all these things would allow us to transfer the data on an ongoing basis continuously or not through some more reasonable internet lines, such as a Site-to-Site VPN or direct connect, okay?
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 20:
- Concepts: Database and Data Movement, Hybrid Transfer Execution
- Services: AWS Snow Family
- Key Insights: Snowball is going to be used more for one-off large transfers.
- Hidden/Implicit Meaning: Cutover and execution signal; Hybrid movement signal.

Line 21:
- Concepts: Database and Data Movement, Hybrid Transfer Execution
- Services: AWS Snow Family
- Key Insights: And as you can see, Snowball in this case is really, really helpful into speeding up our first data transfer into AWS, okay?
- Hidden/Implicit Meaning: Cutover and execution signal; Hybrid movement signal.

Line 22:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So, this lecture is just about to make you realize which use case is more appropriate and what are the constraints of each use case.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 23:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And then in the exam, you will be asked to figure out what is the easiest, fastest, or most reliable way to send data into AWS if it's a small data or a large data set.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 24:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: All right, that's it.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 25:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

### File: outputs/aws-solutions-architect-professional/14_Migration/142_AWS DMS - Database Migration Services.txt

Line 1:
- Concepts: Database and Data Movement, Migration Strategy and Discovery
- Services: AWS Database Migration Service
- Key Insights: Okay, so now let's talk about DMS, which is a Database Migration Service.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 2:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: This allows you, as the name indicates, to quickly and securely migrate databases to AWS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 3:
- Concepts: Database and Data Movement, Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: The beautiful thing is that it's resilient and self-healing, so your database migration job can recover from failure.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 4:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: The source database will remain available during the migration, which is a good thing.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 5:
- Concepts: Application and Server Relocation, Cutover and Landing Zone Readiness
- Services: (none explicit)
- Key Insights: That means you can keep on using the source database while migrating to the target database and then safely migrate your application over.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 6:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: It supports many different things.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 7:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: It supports homogenous migrations.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 8:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: For example, if you migrate an Oracle database to another Oracle database.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 9:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: It supports heterogeneous migration, which is when you have a different database engine.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 10:
- Concepts: Application and Server Relocation
- Services: Amazon Aurora
- Key Insights: For example, for Microsoft SQL Server to Aurora.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 11:
- Concepts: Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: And also it supports Continuous Data Replication using CDC so that you can do one of migrations or continuous migrations using CDC.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 12:
- Concepts: Migration Operational Context
- Services: Amazon EC2
- Key Insights: And for this, you need to create an EC2 instance that will perform the replication tasks for you.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 13:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So the idea is very simple.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 14:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: The source database is on-premise.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 15:
- Concepts: Cutover and Landing Zone Readiness, Database and Data Movement
- Services: AWS Database Migration Service, Amazon EC2
- Key Insights: We're going to create an EC2 instance that will be running the DMS software, and then it will insert the data into the target database.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 16:
- Concepts: Cutover and Landing Zone Readiness, Database and Data Movement
- Services: AWS Database Migration Service
- Key Insights: Now what are the sources for DMS as well as the targets?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 17:
- Concepts: Application and Server Relocation
- Services: Amazon EC2
- Key Insights: Well, for sources, we have on-premises and EC2 instance databases such as Oracle, Microsoft SQL Server, MySQL, MariaDB, PostgreSQL, MongoDB, SAP, and DB2.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 18:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So a wide variety of databases.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 19:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Azure, so any Azure SQL Database.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 20:
- Concepts: Migration Operational Context
- Services: Amazon Aurora, Amazon RDS
- Key Insights: Also, you can migrate all Amazon RDS databases, including Aurora.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 21:
- Concepts: Migration Operational Context
- Services: Amazon DocumentDB, Amazon S3
- Key Insights: Amazon S3, and then MongoDB's running on DocumentDB.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 22:
- Concepts: Application and Server Relocation, Cutover and Landing Zone Readiness, Database and Data Movement
- Services: AWS Database Migration Service, Amazon EC2
- Key Insights: Now for targets of DMS, we have any on-premises and EC2 instances database such as Oracle, Microsoft SQL Server, MySQL, MariaDB, PostgreSQL, and SAP.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 23:
- Concepts: Migration Operational Context
- Services: Amazon Aurora, Amazon DocumentDB, Amazon DynamoDB, Amazon Kinesis, Amazon OpenSearch, Amazon RDS, Amazon Redshift, Amazon S3
- Key Insights: But also Amazon RDS, including Aurora, Amazon Redshift, Amazon DynamoDB, Amazon S3, the OpenSearch Service, the Kinesis Data Streams, and DocumentDB.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 24:
- Concepts: Cutover and Landing Zone Readiness, Database and Data Movement
- Services: AWS Database Migration Service, Amazon Kinesis, Amazon OpenSearch, Amazon Redshift
- Key Insights: So a few things to note is that Amazon Redshift, and Kinesis Date Streams, and OpenSearch Service are not sources, they are targets of DMS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 25:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So hopefully, that helps you for your exam.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 26:
- Concepts: Database and Data Movement
- Services: (none explicit)
- Key Insights: So AWS SCT, for Schema Conversion Tool, which is to convert your database schema from one engine to another.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 27:
- Concepts: Application and Server Relocation
- Services: Amazon Aurora
- Key Insights: For example, if you're doing an OLTP, for example, from SQL Server or Oracle into MySQL, PostgreSQL, or Aurora, then you have to change the database engine.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 28:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And, so, you're going to use SCT.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 29:
- Concepts: Migration Operational Context
- Services: Amazon Redshift
- Key Insights: For OLAP, for example, you want to migrate from Teradata or Oracle into Redshift.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 30:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So here's the example.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 31:
- Concepts: Cutover and Landing Zone Readiness, Database and Data Movement
- Services: AWS Database Migration Service
- Key Insights: In this example, SCT will be running alongside DMS to convert the schema from the source database to the targets.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 32:
- Concepts: Migration Operational Context
- Services: AWS SAM
- Key Insights: The one thing you have to remember is that you do not need to use SCT if you are migrating the same database engine.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 33:
- Concepts: Migration Operational Context
- Services: AWS SAM, Amazon RDS
- Key Insights: For example, if you're doing on-premise PostgreSQL to RDS PostgreSQL, this is the same DB engine.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 34:
- Concepts: Migration Operational Context
- Services: Amazon RDS
- Key Insights: This is still PostgreSQL, and RDS is the platform.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 35:
- Concepts: Migration Strategy and Discovery
- Services: Amazon RDS
- Key Insights: And if you remember, this migration from on-premise PostgreSQL to RDS PostgreSQL is called a re-platform type of migration.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 36:
- Concepts: Database and Data Movement
- Services: AWS Database Migration Service
- Key Insights: Okay, some good things to know about DMS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 37:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: First of all, it works over VPC Peering if you wanted to move from one VPC to another.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 38:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: It works over VPN, either site to site or software, or it works for Direct Connect.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 39:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: It supports three kinds of load.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 40:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Full Load, which is a one-time full load extract and load.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 41:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Full Load + CDC.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 42:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So you have some continuous data replication after the first initial load.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 43:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Or CDC only to just stream changes.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 44:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: For Oracle, it supports TDE for the source using something called a BinaryReader.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 45:
- Concepts: Cutover and Landing Zone Readiness
- Services: (none explicit)
- Key Insights: And for the target, it supports Binary Large Objects, so BLOBs, in tables that will have a primary key, and it also supports TDE.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 46:
- Concepts: Migration Operational Context
- Services: Amazon RDS
- Key Insights: So the idea here is that if you are migrating a BLOB data into an RDS Oracle, then you need to make sure that there is a primary key associated alongside that BLOB.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 47:
- Concepts: Cutover and Landing Zone Readiness, Database and Data Movement
- Services: AWS Database Migration Service, Amazon OpenSearch
- Key Insights: For OpenSearch, as I said, the source does not exist, and for the target, it's possible to migrate from a relational database to OpenSearch using DMS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 48:
- Concepts: Database and Data Movement
- Services: AWS Database Migration Service, Amazon OpenSearch
- Key Insights: So that means that DMS cannot be used to replicate OpenSearch data.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 49:
- Concepts: Migration Operational Context
- Services: Amazon OpenSearch, Amazon S3
- Key Insights: You cannot have OpenSearch as a source and so, therefore, if you wanted to replicate OpenSearch data somewhere else, you would need to get some tools specific to OpenSearch, maybe to export it into Amazon S3, and then being able to send it wherever you want.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 50:
- Concepts: Cutover and Landing Zone Readiness, Database and Data Movement
- Services: AWS Database Migration Service, Amazon OpenSearch
- Key Insights: But DMS is only used to have the target being OpenSearch.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 51:
- Concepts: Database and Data Movement
- Services: AWS Database Migration Service, Amazon OpenSearch
- Key Insights: So that means, for example, you can have MySQL migrated into OpenSearch through DMS.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 52:
- Concepts: Database and Data Movement, Hybrid Transfer Execution
- Services: AWS Database Migration Service, AWS Snow Family
- Key Insights: Finally, and very important going into the exam, you can combine Snowball and DMS.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 53:
- Concepts: Database and Data Movement, Migration Strategy and Discovery
- Services: (none explicit)
- Key Insights: So in case you're doing a very large database migration, you may have terabytes and terabytes of the information or data.
- Hidden/Implicit Meaning: Cutover and execution signal.

Line 54:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And, so, in case you wanted to go everything over the network, that may not be possible.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 55:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: Maybe because your network bandwidth is too little, or maybe because you have way too much data.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 56:
- Concepts: Hybrid Transfer Execution
- Services: AWS Snow Family
- Key Insights: And we've seen, from before, that Snowball is a great way to migrate data, large amount of it, into AWS.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 57:
- Concepts: Database and Data Movement, Hybrid Transfer Execution
- Services: AWS Database Migration Service, AWS Snow Family
- Key Insights: So you can combine Snowball and DMS together to do so.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 58:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 59:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: The following stages happen.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 60:
- Concepts: Database and Data Movement, Hybrid Transfer Execution
- Services: AWS Snow Family
- Key Insights: First, you're going to use the AWS Schema Conversion Tool, SCT, to extract the data locally, so we're talking about on-premise, and then we'll copy it onto a Snowball Edge device.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 61:
- Concepts: Hybrid Transfer Execution
- Services: AWS Snow Family
- Key Insights: Then you're shipping the Snowball Edge device back to AWS.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 62:
- Concepts: Database and Data Movement
- Services: AWS Database Migration Service, Amazon S3
- Key Insights: And then after AWS receives your shipment, the Edge device will automatically load its data onto the Amazon S3 bucket, and then DMS will kick in.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 63:
- Concepts: Cutover and Landing Zone Readiness, Hybrid Transfer Execution
- Services: AWS Snow Family, Amazon RDS, Amazon S3
- Key Insights: It will take the files from the S3 bucket, migrate the data into the target store, and then if you're using CDC on top of it, any updates that have happened while your Snowball device is being shipped, will be replicated afterwards to the target data store.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 64:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: And here, we get a really good advantage.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 65:
- Concepts: Database and Data Movement, Hybrid Transfer Execution
- Services: AWS Database Migration Service, AWS Snow Family
- Key Insights: We get the speed and the efficiency of Snowball and the continuous data replication out of DMS.
- Hidden/Implicit Meaning: Cutover and execution signal; Hybrid movement signal.

Line 66:
- Concepts: Database and Data Movement, Hybrid Transfer Execution
- Services: AWS Database Migration Service, AWS Snow Family
- Key Insights: So using Snowball and DMS is a great combo and, again, something you have to remember going into the exam.
- Hidden/Implicit Meaning: Hybrid movement signal.

Line 67:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: So that's it for it.
- Hidden/Implicit Meaning: Implicitly contributes migration behavior detail.

Line 68:
- Concepts: Migration Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
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
- AWS Config
- AWS DataSync
- AWS Database Migration Service
- AWS SAM
- AWS Snow Family
- Amazon Aurora
- Amazon DocumentDB
- Amazon DynamoDB
- Amazon EC2
- Amazon Kinesis
- Amazon Neptune
- Amazon OpenSearch
- Amazon RDS
- Amazon Redshift
- Amazon S3

### 3. Features List
- assessment
- datasync
- dms
- migration

### 4. Use Cases
- 355_Database Migration Service (DMS).txt:1: So let's say you wanted to migrate a database from your on-premise systems to the AWS Cloud.
- 355_Database Migration Service (DMS).txt:3: It's a quick and secure database service that allows you to migrate your database from on-premise to AWS, but the cool thing is that it's resilient and it's self-healing.
- 355_Database Migration Service (DMS).txt:6: For example, if you want to migrate from Microsoft SQL server all the way to Aurora and it supports continuous data replication using CDC, which is Change Data Capture.
- 355_Database Migration Service (DMS).txt:20: So you don't need to remember all of these, of course, but the general idea is that DMS can help you take a database, for example, an on-premise database and have it put and exported and migrated onto a target that is, pretty much, any database that AWS is offering.
- 355_Database Migration Service (DMS).txt:24: So for example, if you're using an OLTP, we can migrate from SQL server or Oracle to MySQL, PostgreSQL, or Aurora.
- 355_Database Migration Service (DMS).txt:34: Well, you would have your corporate data center, for example, with an Oracle database as a source and an Amazon RDS database for MySQL DB as a target.
- 355_Database Migration Service (DMS).txt:44: Remember, you need to use SCT whenever you have two different kinds of databases that you're migrating from.
- 355_Database Migration Service (DMS).txt:46: So when you have this, then you have a DMS replication instance in one AZ and then you have synchronous replication of that instance into another AZ, which is going to be a standby replica.
- 356_Database Migration Service (DMS) - Hands On.txt:19: For example, you choose Amazon Aurora MySQL.
- 356_Database Migration Service (DMS) - Hands On.txt:27: For example, if you choose DynamoDB right here, you enter a service role access, endpoint setting, wizard, editor, and so on, and then test again the connection to the endpoint.
- 356_Database Migration Service (DMS) - Hands On.txt:28: So you get a lot of information as well when you choose an endpoint on the right-hand side around what to do and the best practices.
- 356_Database Migration Service (DMS) - Hands On.txt:39: So here, when you go to Provisioned instances, it's not to do serverless, it's to do the opposites.
- 356_Database Migration Service (DMS) - Hands On.txt:40: So when you go to tasks, here we go, you can create a task, and you're going to specify the source database endpoint that we've created from before, the target database endpoint that we've created after, and then the task mode.
- 356_Database Migration Service (DMS) - Hands On.txt:44: So you want to migrate data once, do you want to migrate and replicate?
- 362_Transferring Large Datasets into AWS.txt:2: So for example, let's say we want to transfer 200 terabytes of data into the cloud, and what we have currently is a 100 megabits per second internet connection.
- 362_Transferring Large Datasets into AWS.txt:22: So, this lecture is just about to make you realize which use case is more appropriate and what are the constraints of each use case.
- 142_AWS DMS - Database Migration Services.txt:8: For example, if you migrate an Oracle database to another Oracle database.
- 142_AWS DMS - Database Migration Services.txt:9: It supports heterogeneous migration, which is when you have a different database engine.
- 142_AWS DMS - Database Migration Services.txt:10: For example, for Microsoft SQL Server to Aurora.
- 142_AWS DMS - Database Migration Services.txt:27: For example, if you're doing an OLTP, for example, from SQL Server or Oracle into MySQL, PostgreSQL, or Aurora, then you have to change the database engine.
- 142_AWS DMS - Database Migration Services.txt:29: For OLAP, for example, you want to migrate from Teradata or Oracle into Redshift.
- 142_AWS DMS - Database Migration Services.txt:33: For example, if you're doing on-premise PostgreSQL to RDS PostgreSQL, this is the same DB engine.
- 142_AWS DMS - Database Migration Services.txt:47: For OpenSearch, as I said, the source does not exist, and for the target, it's possible to migrate from a relational database to OpenSearch using DMS.
- 142_AWS DMS - Database Migration Services.txt:51: So that means, for example, you can have MySQL migrated into OpenSearch through DMS.
- 142_AWS DMS - Database Migration Services.txt:56: And we've seen, from before, that Snowball is a great way to migrate data, large amount of it, into AWS.

### 5. Constraints / Limitations
- 355_Database Migration Service (DMS).txt:2: In this case, you should use DMS, or Database Migration Service.
- 355_Database Migration Service (DMS).txt:38: So we set up a server with AWS SCT installed and we can set it up on-premises, this is best practice, and then we will do the schema conversion into our Amazon RDS database running MySQL.
- 356_Database Migration Service (DMS) - Hands On.txt:15: So it could be from source to target, and so you must create an endpoint for the source and the target.
- 356_Database Migration Service (DMS) - Hands On.txt:21: We cannot do this because we don't have an Aurora database ready, but you get the idea.
- 356_Database Migration Service (DMS) - Hands On.txt:28: So you get a lot of information as well when you choose an endpoint on the right-hand side around what to do and the best practices.
- 142_AWS DMS - Database Migration Services.txt:43: Or CDC only to just stream changes.
- 142_AWS DMS - Database Migration Services.txt:48: So that means that DMS cannot be used to replicate OpenSearch data.
- 142_AWS DMS - Database Migration Services.txt:49: You cannot have OpenSearch as a source and so, therefore, if you wanted to replicate OpenSearch data somewhere else, you would need to get some tools specific to OpenSearch, maybe to export it into Amazon S3, and then being able to send it wherever you want.
- 142_AWS DMS - Database Migration Services.txt:50: But DMS is only used to have the target being OpenSearch.

### 6. Patterns / Architectures
- (No explicit pattern markers detected)

## Step 3 - Deep Expansion (Migration Concepts)

### Core Services in This Topic
- AWS Config: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS DataSync: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Database Migration Service: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Snow Family: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Aurora: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon DocumentDB: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon DynamoDB: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EC2: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Kinesis: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

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
