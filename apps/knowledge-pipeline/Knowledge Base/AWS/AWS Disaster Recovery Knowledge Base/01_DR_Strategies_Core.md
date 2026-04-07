# 01_DR_Strategies_Core.md

## Scope
- Topic: RTO, RPO, failover models, pilot light, warm standby, and DR strategy framing
- Files processed: 5
- Extracted non-empty transcript lines: 290
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Disaster Recovery Knowledge Base
- Cross-domain referrals: 0

## Real Material - Architect Learning Build (Disaster Recovery: DR Strategies Core)

This section is the study-first architecture guide for rto, rpo, failover models, pilot light, warm standby, and dr strategy framing.

### Phase 1 - Foundations

#### Module: DR Strategies Core Mental Model
- Use dr strategies core decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: DR Strategies Core Mental Model
- Primary transcript files:
- outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/250_AWS Resilience Hub.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/14_Migration/144_Disaster Recovery.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/19_Route 53/199_Routing Policy - Failover.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/09_Route 53/100_Routing Policy - Failover.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/10_Route 53/113_Routing Policy - Failover.txt
- Top concept clusters from transcript metadata:
- Recovery Objectives
- Backup and Restore Operations
- Cutover and Recovery Execution
- Resilience Topologies
- Service-Level Recovery Design
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 5
- Module-selected transcript files: 5
- Key insight candidates scanned (topic): 290
- Key insights inside selected files: 24
- Unique concept tags in selected files: 5

##### Transcript-Enriched Learning Notes
- And it gives you the seven changes that you should do to make sure that you are meeting the correct RTO and RPO you defined, or option two again gives you nine changes and this time is optimizing the availability zone eight RTO and RPO.
- So basically optimizing for the RPO and the RTO does drive some solution architecture decisions, and obviously, the smaller you want these things to be, usually the higher the cost.
- And you're going to set your targets, so you say, what is my RTO, my recovery time objective or my RPO my recovery point objective for my application.
- The first one is called RPO, Recovery Point Objective, and the second one is called RTO, Recovery Time Objective.
- Pilot Light then Warm Standby, and Multi Site, all these things cost more money, but they get a faster RTO.
- Well, we get a lower RPO, we get a lower RTO, and we still manage costs.
- Very easy, not too expensive, and you get high RPO, high RTO.
- But again, you can decrease your RPO and your RTO doing that.
- So what is RPO and RTO?
- So here, you know, if you use Snowball, your RPO is gonna be about one week, because if your data center burns or whatever and you lose all your data, then you've lost one week of data because you send that Snowball device once a week.
- Obviously, if you are talking about the higher availability of your network, maybe you've implemented Direct Connect to connect from your corporate data center to AWS, but what if the connection goes down for whatever reason?
- So the idea is that we have route 53 in the middle and we have EC2 instances, one is going to be our primary EC2 instance, and the second one is going to be a secondary, or disaster recovery, EC2 instance.

##### Polished Architect Notes
- Transcript signals that and it gives you the seven changes that you should do to make sure that you are meeting the correct RTO and RPO you defined, or option two again gives you nine changes and this time is optimizing the availability zone eight RTO and RPO.
- Transcript signals that so basically optimizing for the RPO and the RTO does drive some solution architecture decisions, and obviously, the smaller you want these things to be, usually the higher the cost.
- Transcript signals that and you're going to set your targets, so you say, what is my RTO, my recovery time objective or my RPO my recovery point objective for my application.
- Transcript signals that the first one is called RPO, Recovery Point Objective, and the second one is called RTO, Recovery Time Objective.
- Transcript signals that pilot Light then Warm Standby, and Multi Site, all these things cost more money, but they get a faster RTO.
- Transcript signals that well, we get a lower RPO, we get a lower RTO, and we still manage costs.
- Transcript signals that very easy, not too expensive, and you get high RPO, high RTO.
- Transcript signals that but again, you can decrease your RPO and your RTO doing that.
- Transcript signals that so what is RPO and RTO?
- Transcript signals that so here, you know, if you use Snowball, your RPO is gonna be about one week, because if your data center burns or whatever and you lose all your data, then you've lost one week of data because you send that Snowball device once a week.
- Transcript signals that obviously, if you are talking about the higher availability of your network, maybe you've implemented Direct Connect to connect from your corporate data center to AWS, but what if the connection goes down for whatever reason?
- Transcript signals that so the idea is that we have route 53 in the middle and we have EC2 instances, one is going to be our primary EC2 instance, and the second one is going to be a secondary, or disaster recovery, EC2 instance.

##### Architect Synthesis (Transcript-Derived)
- Treat Recovery Objectives as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Backup and Restore Operations as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Cutover and Recovery Execution as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Resilience Topologies as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Service-Level Recovery Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: and it gives you the seven changes that you should do to make sure that you are meeting the correct RTO and RPO you defined, or option two again gives you nine changes and this time is optimizing the availability zone eight RTO and RPO.
- Design implication: so basically optimizing for the RPO and the RTO does drive some solution architecture decisions, and obviously, the smaller you want these things to be, usually the higher the cost.
- Design implication: and you're going to set your targets, so you say, what is my RTO, my recovery time objective or my RPO my recovery point objective for my application.
- Design implication: the first one is called RPO, Recovery Point Objective, and the second one is called RTO, Recovery Time Objective.
- Design implication: pilot Light then Warm Standby, and Multi Site, all these things cost more money, but they get a faster RTO.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/14_Migration/144_Disaster Recovery.txt
- outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/250_AWS Resilience Hub.txt
- Top concept clusters from transcript metadata:
- Recovery Objectives
- Resilience Topologies
- Service-Level Recovery Design
- Backup and Restore Operations
- Cutover and Recovery Execution
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 5
- Module-selected transcript files: 2
- Key insight candidates scanned (topic): 290
- Key insights inside selected files: 24
- Unique concept tags in selected files: 5

##### Transcript-Enriched Learning Notes
- Pilot Light then Warm Standby, and Multi Site, all these things cost more money, but they get a faster RTO.
- And it gives you the seven changes that you should do to make sure that you are meeting the correct RTO and RPO you defined, or option two again gives you nine changes and this time is optimizing the availability zone eight RTO and RPO.
- So here, you know, if you use Snowball, your RPO is gonna be about one week, because if your data center burns or whatever and you lose all your data, then you've lost one week of data because you send that Snowball device once a week.
- Obviously, if you are talking about the higher availability of your network, maybe you've implemented Direct Connect to connect from your corporate data center to AWS, but what if the connection goes down for whatever reason?
- And so if a disaster strikes you, because we have a Warm Standby, we can use Route 53 to failover to the ELB, and we can use the failover to also change where our application is getting our data from.
- So basically optimizing for the RPO and the RTO does drive some solution architecture decisions, and obviously, the smaller you want these things to be, usually the higher the cost.
- And so if you want to back up your data over time, maybe we can use AWS's Storage Gateway or and have some lifecycle policy, put data into Glacier for cost optimization purposes.
- And so here, what happens is that because you have a hot site that's already running, your Route 53 can route request to both your corporate data center and the AWS cloud.
- If you schedule regular snapshots and you back them up, then your RPO is going to be maybe 24 hours or one hour based on how frequently you do create these snapshots.
- And you're going to set your targets, so you say, what is my RTO, my recovery time objective or my RPO my recovery point objective for my application.
- That means that you have a corporate data center, for example, and here is your a AWS's Cloud, and you have an S3 bucket.
- The first one is called RPO, Recovery Point Objective, and the second one is called RTO, Recovery Time Objective.

##### Polished Architect Notes
- Transcript signals that pilot Light then Warm Standby, and Multi Site, all these things cost more money, but they get a faster RTO.
- Transcript signals that and it gives you the seven changes that you should do to make sure that you are meeting the correct RTO and RPO you defined, or option two again gives you nine changes and this time is optimizing the availability zone eight RTO and RPO.
- Transcript signals that so here, you know, if you use Snowball, your RPO is gonna be about one week, because if your data center burns or whatever and you lose all your data, then you've lost one week of data because you send that Snowball device once a week.
- Transcript signals that obviously, if you are talking about the higher availability of your network, maybe you've implemented Direct Connect to connect from your corporate data center to AWS, but what if the connection goes down for whatever reason?
- Transcript signals that and so if a disaster strikes you, because we have a Warm Standby, we can use Route 53 to failover to the ELB, and we can use the failover to also change where our application is getting our data from.
- Transcript signals that so basically optimizing for the RPO and the RTO does drive some solution architecture decisions, and obviously, the smaller you want these things to be, usually the higher the cost.
- Transcript signals that and so if you want to back up your data over time, maybe we can use AWS's Storage Gateway or and have some lifecycle policy, put data into Glacier for cost optimization purposes.
- Transcript signals that and so here, what happens is that because you have a hot site that's already running, your Route 53 can route request to both your corporate data center and the AWS cloud.
- Transcript signals that if you schedule regular snapshots and you back them up, then your RPO is going to be maybe 24 hours or one hour based on how frequently you do create these snapshots.
- Transcript signals that and you're going to set your targets, so you say, what is my RTO, my recovery time objective or my RPO my recovery point objective for my application.
- Transcript signals that that means that you have a corporate data center, for example, and here is your a AWS's Cloud, and you have an S3 bucket.
- Transcript signals that the first one is called RPO, Recovery Point Objective, and the second one is called RTO, Recovery Time Objective.

##### Architect Synthesis (Transcript-Derived)
- Treat Recovery Objectives as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Resilience Topologies as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Service-Level Recovery Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Backup and Restore Operations as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Cutover and Recovery Execution as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: pilot Light then Warm Standby, and Multi Site, all these things cost more money, but they get a faster RTO.
- Design implication: and it gives you the seven changes that you should do to make sure that you are meeting the correct RTO and RPO you defined, or option two again gives you nine changes and this time is optimizing the availability zone eight RTO and RPO.
- Design implication: so here, you know, if you use Snowball, your RPO is gonna be about one week, because if your data center burns or whatever and you lose all your data, then you've lost one week of data because you send that Snowball device once a week.
- Design implication: obviously, if you are talking about the higher availability of your network, maybe you've implemented Direct Connect to connect from your corporate data center to AWS, but what if the connection goes down for whatever reason?
- Design implication: and so if a disaster strikes you, because we have a Warm Standby, we can use Route 53 to failover to the ELB, and we can use the failover to also change where our application is getting our data from.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/14_Migration/144_Disaster Recovery.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/19_Route 53/199_Routing Policy - Failover.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/09_Route 53/100_Routing Policy - Failover.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/10_Route 53/113_Routing Policy - Failover.txt
- outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/250_AWS Resilience Hub.txt
- Top concept clusters from transcript metadata:
- Recovery Objectives
- Resilience Topologies
- Service-Level Recovery Design
- Backup and Restore Operations
- Cutover and Recovery Execution
- Disaster Recovery Operational Context
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 5
- Module-selected transcript files: 5
- Key insight candidates scanned (topic): 290
- Key insights inside selected files: 24
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- So basically optimizing for the RPO and the RTO does drive some solution architecture decisions, and obviously, the smaller you want these things to be, usually the higher the cost.
- Pilot Light then Warm Standby, and Multi Site, all these things cost more money, but they get a faster RTO.
- Well, we get a lower RPO, we get a lower RTO, and we still manage costs.
- And while to fix it, you just go back into your security group, you would edit the inbound rule, and then you would add back the HTTP rule, and then automatically the health check is going to pass again, and therefore we are going to failover back to our primary location, okay.
- And it gives you the seven changes that you should do to make sure that you are meeting the correct RTO and RPO you defined, or option two again gives you nine changes and this time is optimizing the availability zone eight RTO and RPO.
- And so if a disaster strikes you, because we have a Warm Standby, we can use Route 53 to failover to the ELB, and we can use the failover to also change where our application is getting our data from.
- And so if you want to back up your data over time, maybe we can use AWS's Storage Gateway or and have some lifecycle policy, put data into Glacier for cost optimization purposes.
- And so this costs a lot of money, but at the same time, you're ready to failover already and you're running into a multi-DC type of infrastructure, which is quite cool.
- And you're going to set your targets, so you say, what is my RTO, my recovery time objective or my RPO my recovery point objective for my application.
- The first one is called RPO, Recovery Point Objective, and the second one is called RTO, Recovery Time Objective.
- Very easy, not too expensive, and you get high RPO, high RTO.
- But again, you can decrease your RPO and your RTO doing that.

##### Polished Architect Notes
- Transcript signals that so basically optimizing for the RPO and the RTO does drive some solution architecture decisions, and obviously, the smaller you want these things to be, usually the higher the cost.
- Transcript signals that pilot Light then Warm Standby, and Multi Site, all these things cost more money, but they get a faster RTO.
- Transcript signals that well, we get a lower RPO, we get a lower RTO, and we still manage costs.
- Transcript signals that and while to fix it, you just go back into your security group, you would edit the inbound rule, and then you would add back the HTTP rule, and then automatically the health check is going to pass again, and therefore we are going to failover back to our primary location, okay.
- Transcript signals that and it gives you the seven changes that you should do to make sure that you are meeting the correct RTO and RPO you defined, or option two again gives you nine changes and this time is optimizing the availability zone eight RTO and RPO.
- Transcript signals that and so if a disaster strikes you, because we have a Warm Standby, we can use Route 53 to failover to the ELB, and we can use the failover to also change where our application is getting our data from.
- Transcript signals that and so if you want to back up your data over time, maybe we can use AWS's Storage Gateway or and have some lifecycle policy, put data into Glacier for cost optimization purposes.
- Transcript signals that and so this costs a lot of money, but at the same time, you're ready to failover already and you're running into a multi-DC type of infrastructure, which is quite cool.
- Transcript signals that and you're going to set your targets, so you say, what is my RTO, my recovery time objective or my RPO my recovery point objective for my application.
- Transcript signals that the first one is called RPO, Recovery Point Objective, and the second one is called RTO, Recovery Time Objective.
- Transcript signals that very easy, not too expensive, and you get high RPO, high RTO.
- Transcript signals that but again, you can decrease your RPO and your RTO doing that.

##### Architect Synthesis (Transcript-Derived)
- Treat Recovery Objectives as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Resilience Topologies as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Service-Level Recovery Design as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Backup and Restore Operations as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Cutover and Recovery Execution as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so basically optimizing for the RPO and the RTO does drive some solution architecture decisions, and obviously, the smaller you want these things to be, usually the higher the cost.
- Design implication: pilot Light then Warm Standby, and Multi Site, all these things cost more money, but they get a faster RTO.
- Design implication: well, we get a lower RPO, we get a lower RTO, and we still manage costs.
- Design implication: and while to fix it, you just go back into your security group, you would edit the inbound rule, and then you would add back the HTTP rule, and then automatically the health check is going to pass again, and therefore we are going to failover back to our primary location, okay.
- Design implication: and it gives you the seven changes that you should do to make sure that you are meeting the correct RTO and RPO you defined, or option two again gives you nine changes and this time is optimizing the availability zone eight RTO and RPO.

### Phase 2 - Core Services
- Amazon EC2 should be understood in terms of request path, control plane, and operational boundary.
- Amazon RDS should be understood in terms of request path, control plane, and operational boundary.
- AWS CloudFormation should be understood in terms of request path, control plane, and operational boundary.
- Amazon EKS should be understood in terms of request path, control plane, and operational boundary.
- AWS SAM should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: Backup and Restore Operations becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Cutover and Recovery Execution becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Disaster Recovery Operational Context becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Recovery Objectives becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Resilience Topologies becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design dr strategies core with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when dr strategies core decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: If you schedule regular snapshots and you back them up, then your RPO is going to be maybe 24 hours or one hour based on how frequently you do create these snapshots.
- Signal 2: Transcript signals that if you schedule regular snapshots and you back them up, then your RPO is going to be maybe 24 hours or one hour based on how frequently you do create these snapshots.
- Signal 3: Key Insights: So that's it, let's go in the hands-on to see how we can practice this.
- Signal 4: Key Insights: Okay, so now let's leverage these health checks and create a failover record.
- Signal 5: Key Insights: So in my hosted zone, I'm going to create a record, and this one's going to be called failover.stephanetheteacher.com, and it's the A record, and the first value is going to be for my EU-central-1 instance, so the one close to me, and the routing policy is going to be a failover.
- Signal 6: Key Insights: Now let's create this record, and notice it was successfully created.
- Signal 7: Key Insights: If you schedule regular snapshots and you back them up, then your RPO is going to be maybe 24 hours or one hour based on how frequently you do create these snapshots.
- Signal 8: Key Insights: It's called an active-active type of setup.
- Signal 9: Key Insights: Then you create disasters.

### Service-Specific Lab Paths
### Activity 1: Amazon RDS Lab for RTO, RPO, failover models, pilot light, warm standby, and DR strategy framing
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

### Activity 2: AWS MGN Lab for RTO, RPO, failover models, pilot light, warm standby, and DR strategy framing
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

### Activity 3: Amazon S3 Lab for RTO, RPO, failover models, pilot light, warm standby, and DR strategy framing
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

### Activity 4: AWS DMS Lab for RTO, RPO, failover models, pilot light, warm standby, and DR strategy framing
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

Use this lens to study RTO, RPO, failover models, pilot light, warm standby, and DR strategy framing in a cloud-agnostic way: focus on capability first, provider name second.

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
| Amazon RDS | Amazon RDS | Azure SQL Database | Cloud SQL |
| AWS MGN | AWS MGN | Azure Migrate | Migrate to Virtual Machines |
| Amazon S3 | Amazon S3 | Azure Blob Storage | Cloud Storage |
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

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/19_Route 53/199_Routing Policy - Failover.txt

Line 1:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: Okay, so now let's talk about routing policies and this one is going to be for the failover.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 2:
- Concepts: Cutover and Recovery Execution, Recovery Objectives
- Services: Amazon EC2
- Key Insights: So the idea is that we have route 53 in the middle and we have EC2 instances, one is going to be our primary EC2 instance, and the second one is going to be a secondary, or disaster recovery, EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 3:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: In this case, what's going to happen is that we're going to associate our primary record with a health check, and this is mandatory.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 4:
- Concepts: Recovery Objectives
- Services: Amazon EC2
- Key Insights: And if the health check it becomes unhealthy, then route 53 is going to automatically failover to the second EC2 instance, and start sending that result back instead.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 5:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon EC2
- Key Insights: And of course the secondary EC2 can also be associated with the health check as well, if we want it to.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 6:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: But there can only be one primary and one secondary.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Now the client, when it makes DNS requests, will automatically get the resource that is deemed healthy.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 8:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So if our primary is healthy, then route 53 will answer with a primary record.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 9:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: But if the health check is unhealthy, automatically, we will get the response of the second record, which really helps us do (indistinct) a failover.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 10:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So that's it, let's go in the hands-on to see how we can practice this.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 11:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: Okay, so now let's leverage these health checks and create a failover record.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 12:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: So in my hosted zone, I'm going to create a record, and this one's going to be called failover.stephanetheteacher.com, and it's the A record, and the first value is going to be for my EU-central-1 instance, so the one close to me, and the routing policy is going to be a failover.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 13:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So the TTL will set it something really low, like 60 seconds.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 14:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: And the failover record type has two options.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 15:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: It could be either primary or secondary, just these two.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 16:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So this is my primary record, and I will associate it with a health check, I have to.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 17:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So it will associate with my health check named EU-central-1, and the record ID is going to be E.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 18:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: So what this is saying is that this record should be my primary one, but this is going to be associated with a health check, which means that you can failover to a second record.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Recovery-planning signal.

Line 19:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: So let's add a new record, and I will keep the record name as failover.stephanetheteacher.com, and the value of which is going to be my instance in US-east-1.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 20:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: Okay, we're still going to have to do a failover, the TTL is 60 seconds, and the failover record type is going to be secondary.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 21:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Now we can optionally associate your health check with it, okay, of US-East-1, but you don't have to.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 22:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And the record ID is going to be US.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 23:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Now let's create this record, and notice it was successfully created.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 24:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And so let's go back into our health checks.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 25:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon RDS
- Key Insights: And currently these two health checks I've associated with my records are healthy.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 26:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: So if I go into the URL, so if I go to failover.stephanetheteacher.com, right now, I get an answer from EU-central-1c, That's perfect.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 27:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: But what I'm going to do is trigger a failure.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 28:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So let's go into the EU-central-1 region, and I'm going to find my instances, here, and I'm going to find the security group, and I'm going to, again, stop some security group roles.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 29:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh this page.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 30:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: It does exist, that's perfect.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 31:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And for the inbound rule, I'm going to edit it, and it will remove the rule on port A.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 32:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So that will make my instance completely unreachable from the health checkers.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 33:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: So what I have to do now is to wait for this health check to become unhealthy, and then we'll be able to test the failover.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 34:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh, and as we can see now, my EU-central-1 health check is deemed unhealthy, and we can look into the monitoring tab and see really when it got a unhealthy, so this is quite cool.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 35:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So the health checker was positive, and then it went to zero, and then we can see how many percentage of the health checkers did report healthy, and again, this went one down to zero.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 36:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: So what this means, is that now that this health check is unhealthy because of the way we set up the failover that was linked to this health check.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 37:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Then next time I refresh this, I should not be in Eu-central-1c, I should be in US-east-1.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 38:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh this (indistinct) page, and yes, the answer is that we are in US-east-1.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 39:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: And so the failover did work seamlessly behind the scenes.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 40:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: And while to fix it, you just go back into your security group, you would edit the inbound rule, and then you would add back the HTTP rule, and then automatically the health check is going to pass again, and therefore we are going to failover back to our primary location, okay.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 41:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

### File: outputs/AWS/AWS Speciality/Security/08_Domain 6_ Security Foundations and Governance/250_AWS Resilience Hub.txt

Line 1:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So now let's talk about the AWS Resilience Hub.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 2:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: It's used to centrally manage and improve the resilience posture of your apps.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 3:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So you're going to define resilience goals, then assess and implement the recommendations.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 4:
- Concepts: Disaster Recovery Operational Context
- Services: AWS CloudFormation, Amazon EKS
- Key Insights: So to define your app, it could be from a CloudFormation stack or resource groups or using Terraform or your EKS cluster.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 5:
- Concepts: Backup and Restore Operations, Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: And you're going to set your targets, so you say, what is my RTO, my recovery time objective or my RPO my recovery point objective for my application.
- Hidden/Implicit Meaning: Recovery-planning signal; Restore and recoverability signal.

Line 6:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And then based on what you've provided, Resilience Hub is going to assess your app against the AWS Well-Architected Framework.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 7:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And then finally is going to provide recommendations that are actionable using standard operating procedures.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 8:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Now these procedures are a set of steps to recover your app in the event of an outage.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 9:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: It's also going to be able to give you a resilience drift detection to get notified when your application is no longer meeting its resilience policy.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 10:
- Concepts: Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: And you can test it because Resilience Hub is integrated with AWS fault injection service or FIS, you're going to be able to validate that the app recovers within the defined resilience targets.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 11:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Finally, you also have an option to set up resilience app across multiple accounts through your organization and also set up delegated administrators.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 12:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So to summarize, you're going to add the applications and then you're going to assess the application resilience by defining resilience policies and assessing the app.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 13:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Then you're going to take action to implement recommendations, alarms, and standard operating procedures.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 14:
- Concepts: Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: Then you're going to test the app resilience by using tests using the AWS fault injection simulator service FIS.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 15:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: And then you're gonna be able to monitor the resilience posture and in case anything changes, there's a drift detection mechanism so that you get notified whenever changes are detected in the compliance status.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 16:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So here is an example.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 17:
- Concepts: Disaster Recovery Operational Context
- Services: AWS SAM
- Key Insights: You're going to define a sample app and then once you have defined it, you're going to see whether or not it's compliance, and if there is a compliance status of policy breach, you can have a look at the assessment report and view the recommendations.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 18:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon RDS
- Key Insights: So when you look at the recommendations, for example, you can see that this RDS instance has a policy breached and it gives you two options to do, either to do option one or option two.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 19:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Option one is to optimize for cost and optimize for minimal changes.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 20:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: And it gives you the seven changes that you should do to make sure that you are meeting the correct RTO and RPO you defined, or option two again gives you nine changes and this time is optimizing the availability zone eight RTO and RPO.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Recovery-planning signal.

Line 21:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So super nice because well, you can really assess your architectures, your applications, and get very concrete recommendations of the changes you need to do to make sure that you meet the resilience requirements you have.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 22:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Alright, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 23:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

### File: outputs/AWS/aws-certified-developer-associate-DVA-C01/09_Route 53/100_Routing Policy - Failover.txt

Line 1:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: Okay, so now let's talk about routing policies and this one is going to be for the failover.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 2:
- Concepts: Cutover and Recovery Execution, Recovery Objectives
- Services: Amazon EC2
- Key Insights: So the idea is that we have route 53 in the middle and we have EC2 instances, one is going to be our primary EC2 instance, and the second one is going to be a secondary, or disaster recovery, EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 3:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: In this case, what's going to happen is that we're going to associate our primary record with a health check, and this is mandatory.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 4:
- Concepts: Recovery Objectives
- Services: Amazon EC2
- Key Insights: And if the health check it becomes unhealthy, then route 53 is going to automatically failover to the second EC2 instance, and start sending that result back instead.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 5:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon EC2
- Key Insights: And of course the secondary EC2 can also be associated with the health check as well, if we want it to.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 6:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: But there can only be one primary and one secondary.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Now the client, when it makes DNS requests, will automatically get the resource that is deemed healthy.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 8:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So if our primary is healthy, then route 53 will answer with a primary record.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 9:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: But if the health check is unhealthy, automatically, we will get the response of the second record, which really helps us do (indistinct) a failover.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 10:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So that's it, let's go in the hands-on to see how we can practice this.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 11:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: Okay, so now let's leverage these health checks and create a failover record.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 12:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: So in my hosted zone, I'm going to create a record, and this one's going to be called failover.stephanetheteacher.com, and it's the A record, and the first value is going to be for my EU-central-1 instance, so the one close to me, and the routing policy is going to be a failover.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 13:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So the TTL will set it something really low, like 60 seconds.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 14:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: And the failover record type has two options.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 15:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: It could be either primary or secondary, just these two.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 16:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So this is my primary record, and I will associate it with a health check, I have to.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 17:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So it will associate with my health check named EU-central-1, and the record ID is going to be E.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 18:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: So what this is saying is that this record should be my primary one, but this is going to be associated with a health check, which means that you can failover to a second record.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Recovery-planning signal.

Line 19:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: So let's add a new record, and I will keep the record name as failover.stephanetheteacher.com, and the value of which is going to be my instance in US-east-1.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 20:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: Okay, we're still going to have to do a failover, the TTL is 60 seconds, and the failover record type is going to be secondary.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 21:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Now we can optionally associate your health check with it, okay, of US-East-1, but you don't have to.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 22:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And the record ID is going to be US.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 23:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Now let's create this record, and notice it was successfully created.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 24:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And so let's go back into our health checks.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 25:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon RDS
- Key Insights: And currently these two health checks I've associated with my records are healthy.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 26:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: So if I go into the URL, so if I go to failover.stephanetheteacher.com, right now, I get an answer from EU-central-1c, That's perfect.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 27:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: But what I'm going to do is trigger a failure.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 28:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So let's go into the EU-central-1 region, and I'm going to find my instances, here, and I'm going to find the security group, and I'm going to, again, stop some security group roles.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 29:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh this page.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 30:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: It does exist, that's perfect.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 31:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And for the inbound rule, I'm going to edit it, and it will remove the rule on port A.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 32:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So that will make my instance completely unreachable from the health checkers.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 33:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: So what I have to do now is to wait for this health check to become unhealthy, and then we'll be able to test the failover.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 34:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh, and as we can see now, my EU-central-1 health check is deemed unhealthy, and we can look into the monitoring tab and see really when it got a unhealthy, so this is quite cool.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 35:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So the health checker was positive, and then it went to zero, and then we can see how many percentage of the health checkers did report healthy, and again, this went one down to zero.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 36:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: So what this means, is that now that this health check is unhealthy because of the way we set up the failover that was linked to this health check.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 37:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Then next time I refresh this, I should not be in Eu-central-1c, I should be in US-east-1.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 38:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh this (indistinct) page, and yes, the answer is that we are in US-east-1.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 39:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: And so the failover did work seamlessly behind the scenes.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 40:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: And while to fix it, you just go back into your security group, you would edit the inbound rule, and then you would add back the HTTP rule, and then automatically the health check is going to pass again, and therefore we are going to failover back to our primary location, okay.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 41:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/10_Route 53/113_Routing Policy - Failover.txt

Line 1:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: Okay, so now let's talk about routing policies and this one is going to be for the failover.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 2:
- Concepts: Cutover and Recovery Execution, Recovery Objectives
- Services: Amazon EC2
- Key Insights: So the idea is that we have route 53 in the middle and we have EC2 instances, one is going to be our primary EC2 instance, and the second one is going to be a secondary, or disaster recovery, EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 3:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: In this case, what's going to happen is that we're going to associate our primary record with a health check, and this is mandatory.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 4:
- Concepts: Recovery Objectives
- Services: Amazon EC2
- Key Insights: And if the health check it becomes unhealthy, then route 53 is going to automatically failover to the second EC2 instance, and start sending that result back instead.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 5:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon EC2
- Key Insights: And of course the secondary EC2 can also be associated with the health check as well, if we want it to.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 6:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: But there can only be one primary and one secondary.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Now the client, when it makes DNS requests, will automatically get the resource that is deemed healthy.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 8:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So if our primary is healthy, then route 53 will answer with a primary record.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 9:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: But if the health check is unhealthy, automatically, we will get the response of the second record, which really helps us do (indistinct) a failover.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 10:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So that's it, let's go in the hands-on to see how we can practice this.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 11:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: Okay, so now let's leverage these health checks and create a failover record.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 12:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: So in my hosted zone, I'm going to create a record, and this one's going to be called failover.stephanetheteacher.com, and it's the A record, and the first value is going to be for my EU-central-1 instance, so the one close to me, and the routing policy is going to be a failover.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 13:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So the TTL will set it something really low, like 60 seconds.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 14:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: And the failover record type has two options.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 15:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: It could be either primary or secondary, just these two.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 16:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So this is my primary record, and I will associate it with a health check, I have to.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 17:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So it will associate with my health check named EU-central-1, and the record ID is going to be E.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 18:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: So what this is saying is that this record should be my primary one, but this is going to be associated with a health check, which means that you can failover to a second record.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Recovery-planning signal.

Line 19:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: So let's add a new record, and I will keep the record name as failover.stephanetheteacher.com, and the value of which is going to be my instance in US-east-1.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 20:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: Okay, we're still going to have to do a failover, the TTL is 60 seconds, and the failover record type is going to be secondary.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 21:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Now we can optionally associate your health check with it, okay, of US-East-1, but you don't have to.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 22:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And the record ID is going to be US.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 23:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Now let's create this record, and notice it was successfully created.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 24:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And so let's go back into our health checks.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 25:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon RDS
- Key Insights: And currently these two health checks I've associated with my records are healthy.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 26:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: So if I go into the URL, so if I go to failover.stephanetheteacher.com, right now, I get an answer from EU-central-1c, That's perfect.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 27:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: But what I'm going to do is trigger a failure.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 28:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So let's go into the EU-central-1 region, and I'm going to find my instances, here, and I'm going to find the security group, and I'm going to, again, stop some security group roles.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 29:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh this page.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 30:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: It does exist, that's perfect.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 31:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And for the inbound rule, I'm going to edit it, and it will remove the rule on port A.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 32:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So that will make my instance completely unreachable from the health checkers.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 33:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: So what I have to do now is to wait for this health check to become unhealthy, and then we'll be able to test the failover.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 34:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh, and as we can see now, my EU-central-1 health check is deemed unhealthy, and we can look into the monitoring tab and see really when it got a unhealthy, so this is quite cool.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 35:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So the health checker was positive, and then it went to zero, and then we can see how many percentage of the health checkers did report healthy, and again, this went one down to zero.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 36:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: So what this means, is that now that this health check is unhealthy because of the way we set up the failover that was linked to this health check.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 37:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Then next time I refresh this, I should not be in Eu-central-1c, I should be in US-east-1.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 38:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So let's refresh this (indistinct) page, and yes, the answer is that we are in US-east-1.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 39:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: And so the failover did work seamlessly behind the scenes.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 40:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: And while to fix it, you just go back into your security group, you would edit the inbound rule, and then you would add back the HTTP rule, and then automatically the health check is going to pass again, and therefore we are going to failover back to our primary location, okay.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 41:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture, I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/14_Migration/144_Disaster Recovery.txt

Line 1:
- Concepts: Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: So disaster recovery as a solutions architect is super important, and the exam expects you to know about disaster recovery.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 2:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And there's a white paper on it, you should read it, but I try to summarize everything clearly with graphs and diagrams in this lecture, so you don't have to read it if you don't want to.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 3:
- Concepts: Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: But overall, you can expect some question on disaster recovery, and as a solutions architect, you need to know about disaster recovery anyway.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 4:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Don't worry, I try to make this as simple as possible for you.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 5:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So what is a disaster?
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 6:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Well, it's any event that has a negative impact on the company's business continuity or finances.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 7:
- Concepts: Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: And so disaster recovery is about preparing and recovering from these disasters.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 8:
- Concepts: Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: So what kind of disaster recovery can we do on AWS or in general?
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 9:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Well, we can do on-premise to on-premise.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 10:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: That means we have a first data center, maybe in California, another data center maybe in Seattle.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 11:
- Concepts: Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: And so this is traditional disaster recovery, and it's actually very, very expensive.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 12:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Or we can start using the cloud and do on-premise as a main data center.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 13:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And then if we have any disaster, use the cloud.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 14:
- Concepts: Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: So this is called hybrid recovery, or if you're just all in the cloud, then you can do AWS cloud region A to cloud region B, and that would be a full cloud type of disaster recovery.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 15:
- Concepts: Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: Now, before we do disaster recovery, we need to define two key terms, and you need to understand them from an exam perspective.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 16:
- Concepts: Backup and Restore Operations, Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: The first one is called RPO, Recovery Point Objective, and the second one is called RTO, Recovery Time Objective.
- Hidden/Implicit Meaning: Recovery-planning signal; Restore and recoverability signal.

Line 17:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So remember these two terms, and I'm going to explain them right now.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 18:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: So what is RPO and RTO?
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 19:
- Concepts: Backup and Restore Operations, Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: The first one is the RPO, Recovery Point Objective.
- Hidden/Implicit Meaning: Recovery-planning signal; Restore and recoverability signal.

Line 20:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: And so this is basically how often basically you run backups.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 21:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: How back in time can you to recover?
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 22:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: And when a disaster strikes, basically, the time between their RPO and the disaster is going to be a data loss.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 23:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: For example, if you back up data every hour and a disaster strikes, then you can go back in time for an hour and so you'll have lost one hour of data.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 24:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: So the RPO, sometimes it can be an hour, sometimes maybe one minute.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 25:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: It really depends on the requirements.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 26:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: But RPO is how much of a data loss are you willing to accept in case a disaster happens.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 27:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: RTO, on the other end, is when you recover from your disaster, okay?
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 28:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: And so between the disaster and the RTO is the amount of downtime your application has.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 29:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So sometimes it's okay to have 24 hours of downtime, I don't think it is.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 30:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Sometimes it's not okay, and maybe you need just one minute of downtime, okay?
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 31:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: So basically optimizing for the RPO and the RTO does drive some solution architecture decisions, and obviously, the smaller you want these things to be, usually the higher the cost.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 32:
- Concepts: Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: So let's talk about disaster recovery strategies.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 33:
- Concepts: Backup and Restore Operations, Cutover and Recovery Execution
- Services: (none explicit)
- Key Insights: The first one is Backup and Restore.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 34:
- Concepts: Resilience Topologies
- Services: (none explicit)
- Key Insights: Second one is Pilot Light.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 35:
- Concepts: Resilience Topologies
- Services: (none explicit)
- Key Insights: Third one is Warm Standby.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 36:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And fourth one is Hot Site or Multi Site Approach.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 37:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: So if we basically rank them, all will have different RTO.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 38:
- Concepts: Backup and Restore Operations, Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: Backup and Restore will have the smaller RTO.
- Hidden/Implicit Meaning: Recovery-planning signal; Restore and recoverability signal.

Line 39:
- Concepts: Recovery Objectives, Resilience Topologies
- Services: (none explicit)
- Key Insights: Pilot Light then Warm Standby, and Multi Site, all these things cost more money, but they get a faster RTO.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 40:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: That means you have less downtime overall.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 41:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So let's look at all of these one by one in details to really understand from an architectural standpoint what they mean.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 42:
- Concepts: Backup and Restore Operations, Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: Backup and Restore has a high RPO.
- Hidden/Implicit Meaning: Recovery-planning signal; Restore and recoverability signal.

Line 43:
- Concepts: Recovery Objectives
- Services: Amazon S3
- Key Insights: That means that you have a corporate data center, for example, and here is your a AWS's Cloud, and you have an S3 bucket.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 44:
- Concepts: Recovery Objectives, Service-Level Recovery Design
- Services: AWS Storage Gateway, Amazon Glacier
- Key Insights: And so if you want to back up your data over time, maybe we can use AWS's Storage Gateway or and have some lifecycle policy, put data into Glacier for cost optimization purposes.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 45:
- Concepts: Disaster Recovery Operational Context
- Services: AWS Snow Family, Amazon Glacier
- Key Insights: Or maybe once a week, you're sending a ton of data into Glacier using AWS's Snowball.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 46:
- Concepts: Recovery Objectives
- Services: AWS Snow Family
- Key Insights: So here, you know, if you use Snowball, your RPO is gonna be about one week, because if your data center burns or whatever and you lose all your data, then you've lost one week of data because you send that Snowball device once a week.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 47:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon EBS, Amazon RDS, Amazon Redshift
- Key Insights: If you're using the AWS's cloud instead, maybe EBS volumes, Redshift, and RDS.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 48:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: If you schedule regular snapshots and you back them up, then your RPO is going to be maybe 24 hours or one hour based on how frequently you do create these snapshots.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 49:
- Concepts: Backup and Restore Operations, Cutover and Recovery Execution
- Services: Amazon EC2, Amazon ECR
- Key Insights: And then when you have a disaster strike you and you need to basically restore all your data, then you can use AMIs to recreate EC2 instances and speed up your applications.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 50:
- Concepts: Backup and Restore Operations, Cutover and Recovery Execution, Service-Level Recovery Design
- Services: Amazon EBS, Amazon ECR, Amazon RDS, Amazon Redshift
- Key Insights: Or you can restore straight from a snapshot and recreate your Amazon RDS database or your EBS volume, or your Redshift, whatever you want.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 51:
- Concepts: Backup and Restore Operations, Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: And so that can take a lot of time as well to restore this data and so you get a high RTO as well.
- Hidden/Implicit Meaning: Recovery-planning signal; Restore and recoverability signal.

Line 52:
- Concepts: Backup and Restore Operations, Cutover and Recovery Execution
- Services: (none explicit)
- Key Insights: But the reason we do this is actually it's quite cheap to do Backup and Restore.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 53:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: We don't manage infrastructure in the middle.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 54:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon ECR
- Key Insights: We just recreate infrastructure when we need it, when we have a disaster.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 55:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: And so the only cost we have is the cost of storing these backups.
- Hidden/Implicit Meaning: Constraint or limitation signal; Restore and recoverability signal.

Line 56:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So it gives you an idea.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 57:
- Concepts: Backup and Restore Operations, Cutover and Recovery Execution
- Services: (none explicit)
- Key Insights: Backup and Restore.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 58:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: Very easy, not too expensive, and you get high RPO, high RTO.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 59:
- Concepts: Resilience Topologies
- Services: (none explicit)
- Key Insights: The second one is going to be Pilot Light.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 60:
- Concepts: Resilience Topologies
- Services: (none explicit)
- Key Insights: So here with Pilot Light, a small version of the app is always running in the cloud.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Recovery-planning signal.

Line 61:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And so usually that's going to be your critical core.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 62:
- Concepts: Resilience Topologies
- Services: (none explicit)
- Key Insights: And this is what it's called Pilot Lights.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 63:
- Concepts: Backup and Restore Operations, Cutover and Recovery Execution
- Services: (none explicit)
- Key Insights: So it's very similar to Backup and Restore, but this time, it's faster because your critical systems, they're already up and running.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 64:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And so when you do recover, you just need to add on all the other systems that are not as critical.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 65:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So let's have an example.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 66:
- Concepts: Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: This is your data center has a server and a database and this is the AWS cloud.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 67:
- Concepts: Cutover and Recovery Execution, Service-Level Recovery Design
- Services: Amazon RDS
- Key Insights: Maybe you're going to do continuous data replication from your critical database into RDS, which is going to be running at any time.
- Hidden/Implicit Meaning: Resilience topology signal.

Line 68:
- Concepts: Service-Level Recovery Design
- Services: Amazon EC2, Amazon RDS
- Key Insights: So you get an RDS database ready to go running, but your EC2 instances, they're not critical just yet.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 69:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: What's really important is your data.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 70:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon EC2, Amazon ECR
- Key Insights: And so they're not running, but in case you have a disaster happening, Route 53 will allow you to fail over from your server on your data center, recreate that EC2 instance in the cloud and make it up and running.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 71:
- Concepts: Service-Level Recovery Design
- Services: Amazon RDS
- Key Insights: But your RDS database is already ready.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 72:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So here, what do we get?
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 73:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: Well, we get a lower RPO, we get a lower RTO, and we still manage costs.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 74:
- Concepts: Service-Level Recovery Design
- Services: Amazon RDS
- Key Insights: We still have to have an RDS running, but just the RDS database is running, the rest is not.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 75:
- Concepts: Cutover and Recovery Execution, Recovery Objectives
- Services: Amazon EC2
- Key Insights: And your EC2 instance only are created when you need to do a disaster recovery.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 76:
- Concepts: Resilience Topologies
- Services: (none explicit)
- Key Insights: So Pilot Light is a very popular choice.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 77:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Remember, it's only for critical core systems.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 78:
- Concepts: Resilience Topologies
- Services: (none explicit)
- Key Insights: Warm Standby is when you have a full system up and running, but at a minimum size.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 79:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So it's ready to go, but upon disaster, we can scale it to production load.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 80:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So let's have a look.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 81:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: We have our corporate data center.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 82:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Maybe it's a bit more complicated this time.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 83:
- Concepts: Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: We have a reverse proxy, an app server, and a primary database.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 84:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: And currently, our Route 53 is pointing the DNS to our corporate data center.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 85:
- Concepts: Cutover and Recovery Execution, Service-Level Recovery Design
- Services: Amazon RDS
- Key Insights: And in the cloud, we'll still have our data replication to an RDS secondary database that is running.
- Hidden/Implicit Meaning: Resilience topology signal.

Line 86:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon EC2, Auto Scaling
- Key Insights: And maybe we'll have an EC2 Auto Scaling group, but running at minimum capacity.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 87:
- Concepts: Recovery Objectives, Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: That's currently talking to our corporate data center database.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 88:
- Concepts: Disaster Recovery Operational Context
- Services: Elastic Load Balancing
- Key Insights: And maybe we have an ELB as well, ready to go.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 89:
- Concepts: Recovery Objectives, Resilience Topologies
- Services: Elastic Load Balancing
- Key Insights: And so if a disaster strikes you, because we have a Warm Standby, we can use Route 53 to failover to the ELB, and we can use the failover to also change where our application is getting our data from.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 90:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon RDS, Auto Scaling
- Key Insights: Maybe it's getting the data now from the other RDS, and so we've effectively basically stood by and then maybe using auto scaling, our application will scale pretty quickly.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 91:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon EC2, Elastic Load Balancing
- Key Insights: So this is a more costly thing to do now because we already have an ELB and EC2 Scaling running at any time.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 92:
- Concepts: Recovery Objectives
- Services: Amazon ECR
- Key Insights: But again, you can decrease your RPO and your RTO doing that.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 93:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And then finally, we get the Multi Site/Hot Site approach.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 94:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: It's very low RTO.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 95:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: We're talking minutes or seconds, but it's also very expensive.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 96:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: But you get two full production scales running on AWS and on-premise.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 97:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So that means that we have your on-premise data center, full production scale.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 98:
- Concepts: Cutover and Recovery Execution, Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: You have your AWS data center, full production scale with some data replication happening.
- Hidden/Implicit Meaning: Resilience topology signal.

Line 99:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: And so here, what happens is that because you have a hot site that's already running, your Route 53 can route request to both your corporate data center and the AWS cloud.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 100:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: It's called an active-active type of setup.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 101:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: And so the idea here is that the failover can happen.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 102:
- Concepts: Recovery Objectives, Service-Level Recovery Design
- Services: Amazon EC2, Amazon RDS
- Key Insights: You know, your EC2 can failover to your RDS database if need be, but you get full production scale running on AWS and on premise.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 103:
- Concepts: Recovery Objectives
- Services: AWS SAM
- Key Insights: And so this costs a lot of money, but at the same time, you're ready to failover already and you're running into a multi-DC type of infrastructure, which is quite cool.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 104:
- Concepts: Disaster Recovery Operational Context
- Services: AWS SAM
- Key Insights: Finally, if you wanted to go all cloud, you know, it would be the same kind of architecture.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 105:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: It would be a multi region.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 106:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon Aurora
- Key Insights: So maybe we could use Aurora here because we're really in the cloud.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 107:
- Concepts: Service-Level Recovery Design
- Services: Amazon Aurora
- Key Insights: So we have a primary database in a region, and then we have a Aurora global database that's being replicated to another region.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 108:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: These both regions are working for me, and then when I want to failover, you know, I will be ready to go full production scale again in another region if I need to.
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 109:
- Concepts: Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: So this gives you an idea of all the strategies you can have for disaster recovery.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 110:
- Concepts: Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: It's really up to you to select the disaster recovery strategy you need.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 111:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: But the exam will ask you basically based on some scenarios, you know, what do you recommend?
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 112:
- Concepts: Backup and Restore Operations, Cutover and Recovery Execution, Resilience Topologies
- Services: (none explicit)
- Key Insights: Do you recommend Backup and Restore, Pilot Lights?
- Hidden/Implicit Meaning: Recovery-planning signal; Restore and recoverability signal.

Line 113:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Do you recommend Multi Site or do you recommend Hot Site?
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 114:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: All that kind of stuff.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 115:
- Concepts: Backup and Restore Operations
- Services: (none explicit)
- Key Insights: Warm Backups and all that stuff.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 116:
- Concepts: Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: Okay, so finally, disaster recovery tips.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 117:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And it's more like, real life stuff.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 118:
- Concepts: Backup and Restore Operations
- Services: Amazon EBS, Amazon RDS
- Key Insights: So for backups, you can use EBS Snapshots, RDS automated Snapshots and backups, et cetera.
- Hidden/Implicit Meaning: Restore and recoverability signal.

Line 119:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon Glacier, Amazon S3
- Key Insights: And you can push all these Snapshots regularly to S3, S3 IA Glacier.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 120:
- Concepts: Backup and Restore Operations, Cutover and Recovery Execution, Service-Level Recovery Design
- Services: (none explicit)
- Key Insights: You can implement a Lifecycle Policy, you can use Cross Region Replication if you wanted to make sure these backups would be in different regions.
- Hidden/Implicit Meaning: Restore and recoverability signal; Resilience topology signal.

Line 121:
- Concepts: Service-Level Recovery Design
- Services: AWS Snow Family, AWS Storage Gateway
- Key Insights: And if you wanted to have your data from on-premise to the cloud, Snowball or Storage Gateway would be great technologies.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 122:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: For high availability, using Route 53 to migrate DNS from a region to another region is really, really helpful and easy to implement.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 123:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon EFS, Amazon ElastiCache, Amazon RDS, Amazon S3
- Key Insights: But you can also use technology to have multi easy implemented, such as RDS Multi-AZ, ElastiCache Multi AZ, EFS, S3, all these things are highly available by default if you enable them.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 124:
- Concepts: Recovery Objectives
- Services: (none explicit)
- Key Insights: Obviously, if you are talking about the higher availability of your network, maybe you've implemented Direct Connect to connect from your corporate data center to AWS, but what if the connection goes down for whatever reason?
- Hidden/Implicit Meaning: Recovery-planning signal.

Line 125:
- Concepts: Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: Maybe you can use site-to-site VPN as a recovery option for your network.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 126:
- Concepts: Cutover and Recovery Execution, Service-Level Recovery Design
- Services: Amazon Aurora, Amazon RDS
- Key Insights: In terms of replication, you can use RDS Replication (Cross Region), Aurora + Global Databases.
- Hidden/Implicit Meaning: Resilience topology signal.

Line 127:
- Concepts: Cutover and Recovery Execution, Service-Level Recovery Design
- Services: Amazon RDS
- Key Insights: Maybe you can use a database replication software to do your on-premise database to RDS.
- Hidden/Implicit Meaning: Resilience topology signal.

Line 128:
- Concepts: Service-Level Recovery Design
- Services: AWS Storage Gateway
- Key Insights: Or maybe you can use Storage Gateway as well.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 129:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: In terms of automation, so how do we, you know, recover from disasters?
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 130:
- Concepts: Disaster Recovery Operational Context
- Services: AWS CloudFormation, AWS Elastic Beanstalk, Amazon ECR
- Key Insights: I think you would know already CloudFormation, Elastic Beanstalk can help recreate whole new environments in the cloud very quickly.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 131:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon CloudWatch, Amazon EC2
- Key Insights: Or maybe if we use CloudWatch, we can recover or reboot our EC2 instances when the CloudWatch alarms fail.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 132:
- Concepts: Disaster Recovery Operational Context
- Services: AWS Lambda
- Key Insights: AWS Lambda can also be great to customize optimum automation.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 133:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So they're great to do, you know, rest API, but they can also be used to automate your entire AWS infrastructure.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 134:
- Concepts: Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: And so overall, if you manage to automate your whole disaster recovery, then you are really, really well set for success.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 135:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: And then finally, chaos testing.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 136:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So how do we know how to recover from the disaster?
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 137:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Then you create disasters.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 138:
- Concepts: Disaster Recovery Operational Context
- Services: Amazon EC2
- Key Insights: And so an example that's I think widely quoted now in the AWS world is that Netflix, they run everything on the AWS and they have created something called a simian army, and they randomly terminate EC2 instances, for example.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 139:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: They do so much more, but basically, they just take an application server and terminate it randomly.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 140:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: In production, okay?
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 141:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: Not endeavor test, in production.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 142:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: So they wanna make sure that their infrastructure is capable to survive failures, and so that's why they're running a bunch of chaos monkeys that just terminate stuff randomly just to make sure that their infrastructure is rock solid and can survive any types of failures.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 143:
- Concepts: Cutover and Recovery Execution, Recovery Objectives
- Services: (none explicit)
- Key Insights: So that's it for this section on disaster recovery.
- Hidden/Implicit Meaning: Implicitly contributes disaster recovery behavior detail.

Line 144:
- Concepts: Disaster Recovery Operational Context
- Services: (none explicit)
- Key Insights: I hope you enjoyed it and I will see you in the next lecture.
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
- AWS CloudFormation
- AWS Elastic Beanstalk
- AWS Lambda
- AWS SAM
- AWS Snow Family
- AWS Storage Gateway
- Amazon Aurora
- Amazon CloudWatch
- Amazon EBS
- Amazon EC2
- Amazon ECR
- Amazon EFS
- Amazon EKS
- Amazon ElastiCache
- Amazon Glacier
- Amazon RDS
- Amazon Redshift
- Amazon S3
- Auto Scaling
- Elastic Load Balancing

### 3. Features List
- backup
- dr
- pilot light
- restore
- rpo
- rto
- warm standby

### 4. Use Cases
- 199_Routing Policy - Failover.txt:7: Now the client, when it makes DNS requests, will automatically get the resource that is deemed healthy.
- 199_Routing Policy - Failover.txt:34: So let's refresh, and as we can see now, my EU-central-1 health check is deemed unhealthy, and we can look into the monitoring tab and see really when it got a unhealthy, so this is quite cool.
- 250_AWS Resilience Hub.txt:8: Now these procedures are a set of steps to recover your app in the event of an outage.
- 250_AWS Resilience Hub.txt:9: It's also going to be able to give you a resilience drift detection to get notified when your application is no longer meeting its resilience policy.
- 250_AWS Resilience Hub.txt:15: And then you're gonna be able to monitor the resilience posture and in case anything changes, there's a drift detection mechanism so that you get notified whenever changes are detected in the compliance status.
- 250_AWS Resilience Hub.txt:18: So when you look at the recommendations, for example, you can see that this RDS instance has a policy breached and it gives you two options to do, either to do option one or option two.
- 250_AWS Resilience Hub.txt:19: Option one is to optimize for cost and optimize for minimal changes.
- 100_Routing Policy - Failover.txt:7: Now the client, when it makes DNS requests, will automatically get the resource that is deemed healthy.
- 100_Routing Policy - Failover.txt:34: So let's refresh, and as we can see now, my EU-central-1 health check is deemed unhealthy, and we can look into the monitoring tab and see really when it got a unhealthy, so this is quite cool.
- 113_Routing Policy - Failover.txt:7: Now the client, when it makes DNS requests, will automatically get the resource that is deemed healthy.
- 113_Routing Policy - Failover.txt:34: So let's refresh, and as we can see now, my EU-central-1 health check is deemed unhealthy, and we can look into the monitoring tab and see really when it got a unhealthy, so this is quite cool.
- 144_Disaster Recovery.txt:21: How back in time can you to recover?
- 144_Disaster Recovery.txt:22: And when a disaster strikes, basically, the time between their RPO and the disaster is going to be a data loss.
- 144_Disaster Recovery.txt:23: For example, if you back up data every hour and a disaster strikes, then you can go back in time for an hour and so you'll have lost one hour of data.
- 144_Disaster Recovery.txt:27: RTO, on the other end, is when you recover from your disaster, okay?
- 144_Disaster Recovery.txt:43: That means that you have a corporate data center, for example, and here is your a AWS's Cloud, and you have an S3 bucket.
- 144_Disaster Recovery.txt:49: And then when you have a disaster strike you and you need to basically restore all your data, then you can use AMIs to recreate EC2 instances and speed up your applications.
- 144_Disaster Recovery.txt:54: We just recreate infrastructure when we need it, when we have a disaster.
- 144_Disaster Recovery.txt:64: And so when you do recover, you just need to add on all the other systems that are not as critical.
- 144_Disaster Recovery.txt:75: And your EC2 instance only are created when you need to do a disaster recovery.
- 144_Disaster Recovery.txt:78: Warm Standby is when you have a full system up and running, but at a minimum size.
- 144_Disaster Recovery.txt:108: These both regions are working for me, and then when I want to failover, you know, I will be ready to go full production scale again in another region if I need to.
- 144_Disaster Recovery.txt:122: For high availability, using Route 53 to migrate DNS from a region to another region is really, really helpful and easy to implement.
- 144_Disaster Recovery.txt:131: Or maybe if we use CloudWatch, we can recover or reboot our EC2 instances when the CloudWatch alarms fail.
- 144_Disaster Recovery.txt:136: So how do we know how to recover from the disaster?
- 144_Disaster Recovery.txt:138: And so an example that's I think widely quoted now in the AWS world is that Netflix, they run everything on the AWS and they have created something called a simian army, and they randomly terminate EC2 instances, for example.

### 5. Constraints / Limitations
- 199_Routing Policy - Failover.txt:6: But there can only be one primary and one secondary.
- 199_Routing Policy - Failover.txt:18: So what this is saying is that this record should be my primary one, but this is going to be associated with a health check, which means that you can failover to a second record.
- 199_Routing Policy - Failover.txt:37: Then next time I refresh this, I should not be in Eu-central-1c, I should be in US-east-1.
- 250_AWS Resilience Hub.txt:20: And it gives you the seven changes that you should do to make sure that you are meeting the correct RTO and RPO you defined, or option two again gives you nine changes and this time is optimizing the availability zone eight RTO and RPO.
- 100_Routing Policy - Failover.txt:6: But there can only be one primary and one secondary.
- 100_Routing Policy - Failover.txt:18: So what this is saying is that this record should be my primary one, but this is going to be associated with a health check, which means that you can failover to a second record.
- 100_Routing Policy - Failover.txt:37: Then next time I refresh this, I should not be in Eu-central-1c, I should be in US-east-1.
- 113_Routing Policy - Failover.txt:6: But there can only be one primary and one secondary.
- 113_Routing Policy - Failover.txt:18: So what this is saying is that this record should be my primary one, but this is going to be associated with a health check, which means that you can failover to a second record.
- 113_Routing Policy - Failover.txt:37: Then next time I refresh this, I should not be in Eu-central-1c, I should be in US-east-1.
- 144_Disaster Recovery.txt:2: And there's a white paper on it, you should read it, but I try to summarize everything clearly with graphs and diagrams in this lecture, so you don't have to read it if you don't want to.
- 144_Disaster Recovery.txt:55: And so the only cost we have is the cost of storing these backups.
- 144_Disaster Recovery.txt:75: And your EC2 instance only are created when you need to do a disaster recovery.
- 144_Disaster Recovery.txt:77: Remember, it's only for critical core systems.

### 6. Patterns / Architectures
- 250_AWS Resilience Hub.txt:21: So super nice because well, you can really assess your architectures, your applications, and get very concrete recommendations of the changes you need to do to make sure that you meet the resilience requirements you have.
- 144_Disaster Recovery.txt:31: So basically optimizing for the RPO and the RTO does drive some solution architecture decisions, and obviously, the smaller you want these things to be, usually the higher the cost.
- 144_Disaster Recovery.txt:104: Finally, if you wanted to go all cloud, you know, it would be the same kind of architecture.

## Step 3 - Deep Expansion (Disaster Recovery Concepts)

### Core Services in This Topic
- AWS CloudFormation: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Elastic Beanstalk: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Lambda: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Snow Family: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Storage Gateway: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Aurora: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon CloudWatch: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EBS: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EC2: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

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
