# 02_Pricing_Commitments_Optimization.md

## Scope
- Topic: Pricing models, commitments, savings plans, reserved capacity, and purchase strategy
- Files processed: 3
- Extracted non-empty transcript lines: 193
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Cost Control Knowledge Base
- Cross-domain referrals: 1

## Real Material - Architect Learning Build (Cost Control: Pricing Commitments Optimization)

This section is the study-first architecture guide for pricing models, commitments, savings plans, reserved capacity, and purchase strategy.

### Phase 1 - Foundations

#### Module: Pricing Commitments Optimization Mental Model
- Use pricing commitments optimization decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: Pricing Commitments Optimization Mental Model
- Primary transcript files:
- outputs/aws-solutions-architect-professional/13_Cost Control/131_EC2 Launch Types & Savings Plan.txt
- outputs/aws-solutions-architect-professional/13_Cost Control/136_EC2 Reserved Instance.txt
- Top concept clusters from transcript metadata:
- Commitment Strategy
- Service Cost Trade-offs
- Spend Visibility
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 3
- Module-selected transcript files: 2
- Key insight candidates scanned (topic): 193
- Key insights inside selected files: 16
- Unique concept tags in selected files: 3

##### Transcript-Enriched Learning Notes
- And so you have different kinds; you have the Reserved Instances for long workloads, you have the Convertible Reserved Instances for long workloads where you have flexible instance types, and then we'll see in the next slide, we have something better called savings plan.
- Then for the savings plan, this is a new pricing model to get discounts based on long-term usage.
- Spot Instances are going to be great when you have very short workloads, they're going to be cheap, but you run the risk of losing these instances because AWS can reclaim capacity and therefore using Spot Instances is not considered reliable.
- Therefore, if you want to renew a reserved instance because it is about to expire and come to an end, then all you have to do is just queue a reserve instance purchase at the exact date that when the previous one expires, and that's it.
- For example, you say, "hey, I will spend $10 per hour for the next 1 to 3 years." And then any usage beyond the savings plan is going to be billed at the on-demand price, but then beforehand, you are doing these savings.
- So you will go in the billing dashboard, in the billing console from the management account and you can select which accounts can or cannot share their reserved instances.
- But if you want to turn off sharing of a reserved instance for a specific account, it has to be done from within the management accounts of an organization.
- So we have On Demand Instances and they're here for when you have short workloads with predictable pricing and they're going to be very reliable.
- And then finally, there's the SageMaker Savings Plan which allows you to save up to 64% off on your SageMaker workloads.
- So you can actually queue, that means schedule and reserved ahead of time, your reserved instances.
- So they can be shared in an AWS organization the same way you can share savings plans as well.
- The other thing you need to know around is the renewal of reserved instances.

##### Polished Architect Notes
- Transcript signals that and so you have different kinds; you have the Reserved Instances for long workloads, you have the Convertible Reserved Instances for long workloads where you have flexible instance types, and then we'll see in the next slide, we have something better called savings plan.
- Transcript signals that then for the savings plan, this is a new pricing model to get discounts based on long-term usage.
- Transcript signals that spot Instances are going to be great when you have very short workloads, they're going to be cheap, but you run the risk of losing these instances because AWS can reclaim capacity and therefore using Spot Instances is not considered reliable.
- Transcript signals that therefore, if you want to renew a reserved instance because it is about to expire and come to an end, then all you have to do is just queue a reserve instance purchase at the exact date that when the previous one expires, and that's it.
- Transcript signals that for example, you say, "hey, I will spend $10 per hour for the next 1 to 3 years." And then any usage beyond the savings plan is going to be billed at the on-demand price, but then beforehand, you are doing these savings.
- Transcript signals that so you will go in the billing dashboard, in the billing console from the management account and you can select which accounts can or cannot share their reserved instances.
- Transcript signals that but if you want to turn off sharing of a reserved instance for a specific account, it has to be done from within the management accounts of an organization.
- Transcript signals that so we have On Demand Instances and they're here for when you have short workloads with predictable pricing and they're going to be very reliable.
- Transcript signals that and then finally, there's the SageMaker Savings Plan which allows you to save up to 64% off on your SageMaker workloads.
- Transcript signals that so you can actually queue, that means schedule and reserved ahead of time, your reserved instances.
- Transcript signals that so they can be shared in an AWS organization the same way you can share savings plans as well.
- Transcript signals that the other thing you need to know around is the renewal of reserved instances.

##### Architect Synthesis (Transcript-Derived)
- Treat Commitment Strategy as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Service Cost Trade-offs as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Spend Visibility as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: and so you have different kinds; you have the Reserved Instances for long workloads, you have the Convertible Reserved Instances for long workloads where you have flexible instance types, and then we'll see in the next slide, we have something better called savings plan.
- Design implication: then for the savings plan, this is a new pricing model to get discounts based on long-term usage.
- Design implication: spot Instances are going to be great when you have very short workloads, they're going to be cheap, but you run the risk of losing these instances because AWS can reclaim capacity and therefore using Spot Instances is not considered reliable.
- Design implication: therefore, if you want to renew a reserved instance because it is about to expire and come to an end, then all you have to do is just queue a reserve instance purchase at the exact date that when the previous one expires, and that's it.
- Design implication: for example, you say, "hey, I will spend $10 per hour for the next 1 to 3 years." And then any usage beyond the savings plan is going to be billed at the on-demand price, but then beforehand, you are doing these savings.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/aws-solutions-architect-professional/13_Cost Control/136_EC2 Reserved Instance.txt
- outputs/aws-solutions-architect-professional/13_Cost Control/131_EC2 Launch Types & Savings Plan.txt
- Top concept clusters from transcript metadata:
- Commitment Strategy
- Spend Visibility
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 3
- Module-selected transcript files: 2
- Key insight candidates scanned (topic): 193
- Key insights inside selected files: 9
- Unique concept tags in selected files: 2

##### Transcript-Enriched Learning Notes
- Therefore, if you want to renew a reserved instance because it is about to expire and come to an end, then all you have to do is just queue a reserve instance purchase at the exact date that when the previous one expires, and that's it.
- And so you have different kinds; you have the Reserved Instances for long workloads, you have the Convertible Reserved Instances for long workloads where you have flexible instance types, and then we'll see in the next slide, we have something better called savings plan.
- Spot Instances are going to be great when you have very short workloads, they're going to be cheap, but you run the risk of losing these instances because AWS can reclaim capacity and therefore using Spot Instances is not considered reliable.
- So you will go in the billing dashboard, in the billing console from the management account and you can select which accounts can or cannot share their reserved instances.
- But if you want to turn off sharing of a reserved instance for a specific account, it has to be done from within the management accounts of an organization.
- So you can actually queue, that means schedule and reserved ahead of time, your reserved instances.
- The other thing you need to know around is the renewal of reserved instances.
- Now if you go for long workloads, you can go for the Reserved Instances.
- Just a quick lecture on reserved instances.

##### Polished Architect Notes
- Transcript signals that therefore, if you want to renew a reserved instance because it is about to expire and come to an end, then all you have to do is just queue a reserve instance purchase at the exact date that when the previous one expires, and that's it.
- Transcript signals that and so you have different kinds; you have the Reserved Instances for long workloads, you have the Convertible Reserved Instances for long workloads where you have flexible instance types, and then we'll see in the next slide, we have something better called savings plan.
- Transcript signals that spot Instances are going to be great when you have very short workloads, they're going to be cheap, but you run the risk of losing these instances because AWS can reclaim capacity and therefore using Spot Instances is not considered reliable.
- Transcript signals that so you will go in the billing dashboard, in the billing console from the management account and you can select which accounts can or cannot share their reserved instances.
- Transcript signals that but if you want to turn off sharing of a reserved instance for a specific account, it has to be done from within the management accounts of an organization.
- Transcript signals that so you can actually queue, that means schedule and reserved ahead of time, your reserved instances.
- Transcript signals that the other thing you need to know around is the renewal of reserved instances.
- Transcript signals that now if you go for long workloads, you can go for the Reserved Instances.
- Transcript signals that just a quick lecture on reserved instances.

##### Architect Synthesis (Transcript-Derived)
- Treat Commitment Strategy as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Spend Visibility as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: therefore, if you want to renew a reserved instance because it is about to expire and come to an end, then all you have to do is just queue a reserve instance purchase at the exact date that when the previous one expires, and that's it.
- Design implication: and so you have different kinds; you have the Reserved Instances for long workloads, you have the Convertible Reserved Instances for long workloads where you have flexible instance types, and then we'll see in the next slide, we have something better called savings plan.
- Design implication: spot Instances are going to be great when you have very short workloads, they're going to be cheap, but you run the risk of losing these instances because AWS can reclaim capacity and therefore using Spot Instances is not considered reliable.
- Design implication: so you will go in the billing dashboard, in the billing console from the management account and you can select which accounts can or cannot share their reserved instances.
- Design implication: but if you want to turn off sharing of a reserved instance for a specific account, it has to be done from within the management accounts of an organization.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/aws-solutions-architect-professional/13_Cost Control/131_EC2 Launch Types & Savings Plan.txt
- outputs/aws-solutions-architect-professional/13_Cost Control/136_EC2 Reserved Instance.txt
- outputs/AWS Speciality/advanced-networking-specialty/14_Direct Connect (DX)/138_DX Pricing.txt
- Top concept clusters from transcript metadata:
- Commitment Strategy
- Service Cost Trade-offs
- Cost Control Operational Context
- Spend Visibility
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 3
- Module-selected transcript files: 3
- Key insight candidates scanned (topic): 193
- Key insights inside selected files: 19
- Unique concept tags in selected files: 4

##### Transcript-Enriched Learning Notes
- Then for the savings plan, this is a new pricing model to get discounts based on long-term usage.
- And so you have different kinds; you have the Reserved Instances for long workloads, you have the Convertible Reserved Instances for long workloads where you have flexible instance types, and then we'll see in the next slide, we have something better called savings plan.
- Therefore, if you want to renew a reserved instance because it is about to expire and come to an end, then all you have to do is just queue a reserve instance purchase at the exact date that when the previous one expires, and that's it.
- So you have the EC2 instance Saving Plans which gives you up to 72% discount which is the same discount as standard RIs, but it's more flexible because you have to- You can select the instance family, so M5, C5, and so on, and you're locked to a specific region and it's going to be flexible across size.
- Now, for security purpose, what you did is, you set up one EC2 machine, on which you have some network inspection tools, and traffic from all VPCs first go to that EC2 instance, and from there, it goes to the transit gateway to the Direct Connect gateway, to the Direct Connect location.
- Spot Instances are going to be great when you have very short workloads, they're going to be cheap, but you run the risk of losing these instances because AWS can reclaim capacity and therefore using Spot Instances is not considered reliable.
- For example, you say, "hey, I will spend $10 per hour for the next 1 to 3 years." And then any usage beyond the savings plan is going to be billed at the on-demand price, but then beforehand, you are doing these savings.
- So you will go in the billing dashboard, in the billing console from the management account and you can select which accounts can or cannot share their reserved instances.
- But if you want to turn off sharing of a reserved instance for a specific account, it has to be done from within the management accounts of an organization.
- So we have On Demand Instances and they're here for when you have short workloads with predictable pricing and they're going to be very reliable.
- And then finally, there's the SageMaker Savings Plan which allows you to save up to 64% off on your SageMaker workloads.
- So they're great when you need to have huge cost savings and when your when your workload is resilient to failures.

##### Polished Architect Notes
- Transcript signals that then for the savings plan, this is a new pricing model to get discounts based on long-term usage.
- Transcript signals that and so you have different kinds; you have the Reserved Instances for long workloads, you have the Convertible Reserved Instances for long workloads where you have flexible instance types, and then we'll see in the next slide, we have something better called savings plan.
- Transcript signals that therefore, if you want to renew a reserved instance because it is about to expire and come to an end, then all you have to do is just queue a reserve instance purchase at the exact date that when the previous one expires, and that's it.
- Transcript signals that so you have the EC2 instance Saving Plans which gives you up to 72% discount which is the same discount as standard RIs, but it's more flexible because you have to- You can select the instance family, so M5, C5, and so on, and you're locked to a specific region and it's going to be flexible across size.
- Transcript signals that now, for security purpose, what you did is, you set up one EC2 machine, on which you have some network inspection tools, and traffic from all VPCs first go to that EC2 instance, and from there, it goes to the transit gateway to the Direct Connect gateway, to the Direct Connect location.
- Transcript signals that spot Instances are going to be great when you have very short workloads, they're going to be cheap, but you run the risk of losing these instances because AWS can reclaim capacity and therefore using Spot Instances is not considered reliable.
- Transcript signals that for example, you say, "hey, I will spend $10 per hour for the next 1 to 3 years." And then any usage beyond the savings plan is going to be billed at the on-demand price, but then beforehand, you are doing these savings.
- Transcript signals that so you will go in the billing dashboard, in the billing console from the management account and you can select which accounts can or cannot share their reserved instances.
- Transcript signals that but if you want to turn off sharing of a reserved instance for a specific account, it has to be done from within the management accounts of an organization.
- Transcript signals that so we have On Demand Instances and they're here for when you have short workloads with predictable pricing and they're going to be very reliable.
- Transcript signals that and then finally, there's the SageMaker Savings Plan which allows you to save up to 64% off on your SageMaker workloads.
- Transcript signals that so they're great when you need to have huge cost savings and when your when your workload is resilient to failures.

##### Architect Synthesis (Transcript-Derived)
- Treat Commitment Strategy as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Service Cost Trade-offs as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Cost Control Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Spend Visibility as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: then for the savings plan, this is a new pricing model to get discounts based on long-term usage.
- Design implication: and so you have different kinds; you have the Reserved Instances for long workloads, you have the Convertible Reserved Instances for long workloads where you have flexible instance types, and then we'll see in the next slide, we have something better called savings plan.
- Design implication: therefore, if you want to renew a reserved instance because it is about to expire and come to an end, then all you have to do is just queue a reserve instance purchase at the exact date that when the previous one expires, and that's it.
- Design implication: so you have the EC2 instance Saving Plans which gives you up to 72% discount which is the same discount as standard RIs, but it's more flexible because you have to- You can select the instance family, so M5, C5, and so on, and you're locked to a specific region and it's going to be flexible across size.
- Design implication: now, for security purpose, what you did is, you set up one EC2 machine, on which you have some network inspection tools, and traffic from all VPCs first go to that EC2 instance, and from there, it goes to the transit gateway to the Direct Connect gateway, to the Direct Connect location.

### Phase 2 - Core Services
- Amazon Lex should be understood in terms of request path, control plane, and operational boundary.
- Amazon EC2 should be understood in terms of request path, control plane, and operational boundary.
- Amazon S3 should be understood in terms of request path, control plane, and operational boundary.
- AWS SAM should be understood in terms of request path, control plane, and operational boundary.
- AWS Lambda should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: Commitment Strategy becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Consumption Accountability becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Cost Control Operational Context becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Service Cost Trade-offs becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Spend Visibility becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design pricing commitments optimization with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when pricing commitments optimization decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: So you will go in the billing dashboard, in the billing console from the management account and you can select which accounts can or cannot share their reserved instances.
- Signal 2: Transcript signals that so you will go in the billing dashboard, in the billing console from the management account and you can select which accounts can or cannot share their reserved instances.
- Signal 3: Design implication: so you will go in the billing dashboard, in the billing console from the management account and you can select which accounts can or cannot share their reserved instances.
- Signal 4: Key Insights: And further, if you add the complexity of multi account setup, then it becomes more challenging to know, who pays for what.
- Signal 5: Key Insights: Now, in case, if you just request the connection, you see that in your console, it would be in the downstate initially.
- Signal 6: Key Insights: Like, AWS gives you 90 days window to complete this setup.
- Signal 7: Key Insights: So, Direct Connect partner will create a hosted connection for you, which will be available in your AWS console to accept.
- Signal 8: Key Insights: And in case of multi account setup, where the owner of the connection and AWS resources are in different AWS organization, the DTO is charged to the resource owner, of course.
- Signal 9: Key Insights: Now let's discuss EC2 Launch types and savings plans.
- Signal 10: Key Insights: They're the kind of instances that you launch when you first start on the console.

### Service-Specific Lab Paths
### Activity 1: Amazon EC2 Lab for Pricing models, commitments, savings plans, reserved capacity, and purchase strategy
- AWS console path: AWS Console -> EC2 -> Instances
- Azure equivalent: Azure Virtual Machines
- GCP equivalent: Compute Engine
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> EC2 -> Instances.
3. Build: Launch one small instance with default VPC.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Check instance running state and system status checks.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Terminate instance and remove extra volumes.

### Activity 2: Amazon S3 Lab for Pricing models, commitments, savings plans, reserved capacity, and purchase strategy
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

### Activity 3: Amazon RDS Lab for Pricing models, commitments, savings plans, reserved capacity, and purchase strategy
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

### Activity 4: Amazon CloudWatch Lab for Pricing models, commitments, savings plans, reserved capacity, and purchase strategy
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

Use this lens to study Pricing models, commitments, savings plans, reserved capacity, and purchase strategy in a cloud-agnostic way: focus on capability first, provider name second.

### Capability Mapping (AWS / Azure / GCP)
| Capability | AWS | Azure | GCP |
|---|---|---|---|
| Object Storage | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Virtual Machines | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Serverless Functions | AWS Lambda | Azure Functions | Cloud Functions / Cloud Run |
| Databases | RDS / DynamoDB / ElastiCache | Azure SQL / Cosmos DB / Azure Cache | Cloud SQL / Firestore / Memorystore |
| Networking | VPC / Route 53 / ELB | VNet / DNS / Load Balancer | VPC / Cloud DNS / Cloud Load Balancing |
| Observability | CloudWatch / X-Ray / CloudTrail | Azure Monitor / App Insights / Activity Log | Cloud Monitoring / Cloud Logging / Cloud Trace |
| AI/ML | SageMaker / Bedrock / AI services | Azure ML / Azure OpenAI / AI services | Vertex AI / GenAI services |
| Migration/DR | MGN / DMS / Backup | Azure Migrate / DMS / Backup | Migrate to VMs / Database Migration / Backup and DR |

### Same Lab Across 3 Clouds
| Lab Theme | AWS | Azure | GCP |
|---|---|---|---|
| Amazon EC2 | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Amazon S3 | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Amazon RDS | Amazon RDS | Azure SQL Database | Cloud SQL |
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

## Cross-Domain Referrals

These transcripts are relevant to this topic but are owned by another knowledge base and are referenced here to avoid duplication.

- outputs/aws-certified-solutions-architect-associate-saa-c03/05_EC2 Fundamentals/045_Spot Instances & Spot Fleet.txt (owned by AWS Compute Knowledge Base)

## Step 1 - Line-by-Line Extraction

Every non-empty line from every primary source transcript is preserved below with extraction fields.

### File: outputs/AWS Speciality/advanced-networking-specialty/14_Direct Connect (DX)/138_DX Pricing.txt

Line 1:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: Hello, and welcome to this lecture, Direct Connect Billing.
- Hidden/Implicit Meaning: Financial governance signal.

Line 2:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: Now, this is one of the most confusing topic, I would say, when it comes to the Direct Connect Billing.
- Hidden/Implicit Meaning: Financial governance signal.

Line 3:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: And that is essentially because, there are multiple components involved in Direct Connect Billing.
- Hidden/Implicit Meaning: Financial governance signal.

Line 4:
- Concepts: Cost Control Operational Context
- Services: Amazon Lex
- Key Insights: And further, if you add the complexity of multi account setup, then it becomes more challenging to know, who pays for what.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 5:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And, let's try to understand this.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 6:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: And also for your exam, you might have one odd question on Direct Connect Billing.
- Hidden/Implicit Meaning: Financial governance signal.

Line 7:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, please be attentive for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 8:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Okay, so when it comes to the Direct Connect, you know what parties are involved, there is AWS region, which is connected to on-premise data center via the Direct Connect location, right?
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 9:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And in Direct Connect location, you have, routers allocated to you.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 10:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And on those routers, you need to get port, and those ports are used by your Direct Connect connection.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 11:
- Concepts: Cost Control Operational Context
- Services: Amazon EC2, Amazon S3
- Key Insights: Now, on AWS side, you would have either the private IP addresses like VPC, or AWS public services like S3, or public EC2 instances, which can send and receive traffic from on-premise network.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 12:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now in all this, what are the charges that you have to pay when you go for a Direct Connect.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 13:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So in case of Direct Connect, there are multiple charges, very first charge is, port-hour charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 14:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And the port-hour charges would obviously depend on the capacity of your Direct Connect connection.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 15:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: That means, whether you go for 1Gbps link or 10 Gbps link, accordingly, there will be per our port-hour charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 16:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now, once you get your connection and it is available, irrespective of whether you send it or not, the port-hour charges will be applicable till the time your connection is there, right?
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 17:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So of course, port-hour charges are there.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 18:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And the charges will also depend on the capacity as well as whether the connection is a dedicated connection or a hosted connection.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 19:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, that's first type of the charge for DX.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 20:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And the second type of the charge is, of course, the data transfer out charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 21:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now, when we say data charges out means, any data that is going from AWS to on-premise network, or to Direct Connect location, right?
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 22:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: That's a data transfer out.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 23:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And which also means, there is no charge for data transfer IN.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 24:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, the data transfer charges are calculated per GB.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 25:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: That means how much data you sent.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 26:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And, it would also depend on the DX location, as well as source AWS region.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 27:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, I hope that it's clear, like there are two type of the charges for DX, one is port-hour charges and second is, data transfer out charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 28:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So with that, now let's get into the next part, which is, port hour charges, how they're calculated and how much you have to pay.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 29:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now, as you know, the port hour charges depends on the capacity as well as, whether the connection is a dedicated and a hosted connection.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 30:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So for dedicated connection, the port-hour charges are pretty much consistent across all location.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 31:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So for 1GB, it is, $0.30 per hour.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 32:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And similarly, for other capacity connections.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 33:
- Concepts: Cost Control Operational Context
- Services: AWS SAM
- Key Insights: Now, this is different for Japan, but, otherwise for every other DX location, this is a same price.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 34:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And now, if you look at the hosted connection, which comes into the sub 1Gbps capacity as well, it is also consistent across all AWS regions and Direct Connect location, except Japan.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 35:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, for 50 mega bits per second, it is 0.03 per hour.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 36:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And accordingly, the charges are there.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 37:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now, again, you don't need to remember these numbers, but, understand that the port-hour charges are pretty much consistent, irrespective of which AWS Direct Connect location you are using.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 38:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now with that, let's move to the data transfer charges now.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 39:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: As you know, data transfer charges IN, it is free.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 40:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, no charges for any size of the data that is coming from on premise data center to AWS, but there is a data transfer OUT charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 41:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And as I said, it would depend on which DX location the data is going to, and from which source AWS region.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 42:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now, if you look at here, AWS Direct Connect location is in, say, United States, and the data transfer source region is one of these, then you pay for $0.0200 per GB.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 43:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, you can very well go to the AWS page and there you will also see the list of all DX location, and the source AWS region, there is another table for that, but in a simplified way, depending on where your Direct Connect location is, and which is the source AWS region, which is sending data to this DX location, the charges would be applied.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 44:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, I hope that is clear.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 45:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And now, let's look at some of the examples of this DX charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 46:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, in a simplified manner, you have DX location and you have AWS VPCs or public services.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 47:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now in this case, so obviously the port-hour will be charged based on your capacity and DTO, that is, Data Transfer Out, charges will be depending on the source AWS region, as well as DX location.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 48:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now, for dedicated connection, the port-hour charges would look something like this.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 49:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: As we already saw, and, data transfer IN charge, there is nothing, and for data transfer OUT, as I said, it would depend on the source AWS region.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 50:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So for example, if source region is not Virginia, and the destination DX location is Las Vegas, then the data transfer OUT charges are $0.02 per GB.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 51:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, this is just one example.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 52:
- Concepts: Cost Control Operational Context
- Services: AWS SAM
- Key Insights: Now, if you just change your AWS Direct Connect location, and maybe you want to keep the source as same as North Virginia region, but now you are sending the data to a Direct Connect location in Mumbai, then, your per hour data transfer OUT charges would be $0.06.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 53:
- Concepts: Cost Control Operational Context
- Services: AWS SAM
- Key Insights: And this is probably obvious because, the distance between the US and India is quite more than if you're using the DX location in the same geography as US.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 54:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, depending on your source region and DX location, data transfer charges will differ.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 55:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: With that, let's move to the next part.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 56:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Who pays for DX charges?
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 57:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So far, we are just talking about different charges, but actually, which AWS account pays for these charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 58:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now, if it is just an single AWS account, who owns the connection, who owns your VIFs, who owns the VPCs and the resources inside VPC, of course, all these charges will be applicable to a single AWS account.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 59:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: But in real life, typically that's not always the case.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 60:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: You might have multiple AWS accounts coming into the picture.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 61:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And in that case, you need to see, who pays for what.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 62:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So let's look at those things now.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 63:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: First of all, port-hour charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 64:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now, this is pretty simple.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 65:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: The account that owns the Direct Connect connection, that is the account which requested the connection, pays for the port-hour charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 66:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, whether it's a dedicated connection or whether it's a hosted connection, the account with requested that connection will pay for port-hour charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 67:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now, you need to understand that when it's a dedicated connection, you request for a connection and then you get LOA CFA, that you submit it to your Direct Connect partner, or a Direct Connect location provider.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 68:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And then, the location provider will do the cross connect, and then your connection will be available.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 69:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now, in case, if you just request the connection, you see that in your console, it would be in the downstate initially.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 70:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And if you don't proceed with all these next steps, in that case, will you be charged for port-hours or not?
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 71:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, the rule of thumb is, for dedicated connection, you will be charged as soon as your connection is in available state.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 72:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: That means, everything is set up, you see the good lights on to the your connection, and the traffic can start flowing, that means connection is available and you start paying from that moment.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 73:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now, in case you don't proceed with all this next step, and the connection is in downstate, you will be charged post 90 days.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 74:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Like, AWS gives you 90 days window to complete this setup.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 75:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: If you don't do that in that window, you will be charged after 90 days of connection request.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 76:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So just remember this.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 77:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: Now, in case of hosted connection, as soon as you accept the connection request, your billing starts.
- Hidden/Implicit Meaning: Financial governance signal.

Line 78:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Because, in case of hosted connection, connection is owned by Direct Connect partner.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 79:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And then you request your Direct Connect partner to give you, say, 50 Mbps connection.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 80:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, Direct Connect partner will create a hosted connection for you, which will be available in your AWS console to accept.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 81:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: Now, the moment you accept the connection, the billing will start for that connection.
- Hidden/Implicit Meaning: Financial governance signal.

Line 82:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: Also, you need to understand that, the billing for port-hour stops when the dedicated connection or hosted connection is deleted from your AWS account, which means, if it is just in a downstate, does not mean that there is no charge, right?
- Hidden/Implicit Meaning: Financial governance signal.

Line 83:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, you have to explicitly go and delete that connection.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 84:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now, in case of hosted connection, you would ask your Direct Connect partner to disable your hosted connection.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 85:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: And then, you will be stopped billing for that.
- Hidden/Implicit Meaning: Financial governance signal.

Line 86:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, this is about the port-hour charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 87:
- Concepts: Consumption Accountability
- Services: (none explicit)
- Key Insights: The bottom line is, the account owner who requests the Direct Connect connection pays for this port-hour charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 88:
- Concepts: Cost Control Operational Context
- Services: Amazon Lex
- Key Insights: Now let's look at the complex part of it, who pays for Data Transfer Out charges?
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 89:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now, generally speaking, Data Transfer Out charges are usually located to the account that owns the resource, sending the traffic.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 90:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now let's understand what, what it means.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 91:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, suppose there is a Direct Connect connection between account 2 and account 1, that means the connection is owned by account 1, but the VIFs are part of the account 2.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 92:
- Concepts: Cost Control Operational Context
- Services: Amazon EC2, Amazon S3
- Key Insights: And in this case, EC2 machine is sending data or a private VIF, or there is a connection to the S3, and somebody is downloading data from the S3.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 93:
- Concepts: Cost Control Operational Context
- Services: Amazon S3
- Key Insights: Now that is a outbound data, which is going from S3, to the Direct Connect location, to the on-premise network.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 94:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now this is Data Transfer Out.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 95:
- Concepts: Consumption Accountability
- Services: Amazon EC2, Amazon S3
- Key Insights: Now, in all these cases, the resource owner, now in this case, account 2 owns the S3 bucket or EC2 instance will pay for the Data Transfer Out charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 96:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And this Data Transfer Out charges would depend on again, the source AWS region, as well as DX location.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 97:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: We already saw that, but the point is who pays for that?
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 98:
- Concepts: Consumption Accountability
- Services: (none explicit)
- Key Insights: The resource owner will pay for the Data Transfer charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 99:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, account 2 pays here for the Data Transfer Out in this case.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 100:
- Concepts: Consumption Accountability
- Services: (none explicit)
- Key Insights: So, whether it's a public, private or transit VIF, the resource owner will pay for the DTO.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 101:
- Concepts: Cost Control Operational Context
- Services: Amazon S3
- Key Insights: Now, in case of S3, there is an additional feature, like you can enable the Requester Pays flag on the S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 102:
- Concepts: Cost Control Operational Context
- Services: Amazon S3
- Key Insights: Now, even if you own the S3 bucket, so, obviously Data Transfer Out charges would be applied to your AWS account, but on S3 bucket, if you say Requester Pays, then who were accessing your data, over the Direct Connect via the S3, pays for that Data Transfer Out charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 103:
- Concepts: Consumption Accountability
- Services: Amazon S3
- Key Insights: Now, this is only the case, in case of S3, but for rest of the resources, the owner of the resource will pay for the Data Transfer Out charges.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 104:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, this is a pretty simple when it is a private VIF, or a public VIF.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 105:
- Concepts: Cost Control Operational Context
- Services: Amazon Lex
- Key Insights: But again, there is some additional complexity, if you are doing the data transfer over transit VIF.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 106:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now, let's look at those things.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 107:
- Concepts: Consumption Accountability
- Services: (none explicit)
- Key Insights: So, in case of traffic is sent over through transit gateway, then, Data Transfer Out is located to the owner of the last resource, to send traffic, before traffic hits the Direct Connect VIF.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 108:
- Concepts: Cost Control Operational Context
- Services: Amazon Lex
- Key Insights: Now, this is getting complex, but let's try to understand that.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 109:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now, suppose you have multiple VPCs, right?
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 110:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And all these VPCs are connected to transit gateway.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 111:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And then there is a transit wave, there is a Direct Connect gateway as well, because you need to have that.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 112:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And then, there is a direct connect location, right?
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 113:
- Concepts: Cost Control Operational Context
- Services: Amazon EC2
- Key Insights: Now, for security purpose, what you did is, you set up one EC2 machine, on which you have some network inspection tools, and traffic from all VPCs first go to that EC2 instance, and from there, it goes to the transit gateway to the Direct Connect gateway, to the Direct Connect location.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 114:
- Concepts: Consumption Accountability
- Services: Amazon EC2
- Key Insights: Now, in this case, the resource owner of that EC2 machine, on which you have the traffic inspection tool installed will pay for the Data Transfer Out charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 115:
- Concepts: Cost Control Operational Context
- Services: Amazon EC2
- Key Insights: Now, if you see, originally the data transfer has been originated by the other VPCs, which are sending the traffic to the, your firewall VPC or a firewall EC2 machine.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 116:
- Concepts: Consumption Accountability
- Services: (none explicit)
- Key Insights: But, as you read this line, the data transfer out is allocated to the owner of the last resource to send traffic, before traffic hits the Direct Connect VIF.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 117:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, this is one difference, when it comes to the transit gateway.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 118:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now, there is one more scenario.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 119:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: If there are multiple AWS organization involved, for example, the Direct Connect connection is owned by AWS account, which is part of AWS organization one, and the resource which is sending the data, is a part of an AWS account, which is part of AWS organization two.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 120:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now, in this case, of course, Data Transfer Out charges will be again, built to the account two in organization two, however, the DTO charges are not the Direct Connect DTO charges, but it would be the standard AWS service DTO charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 121:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And you know that, standard DTO charges for AWS services is quite high than the Direct Connect DTO charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 122:
- Concepts: Consumption Accountability
- Services: AWS SAM
- Key Insights: That means the account owner will pay more charges in this case, because these accounts are not part of the same AWS organization.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 123:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, I think we covered quite a lot, and different scenarios, and it might be overwhelming to remember all this permutation and combination.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 124:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And that's where I'm just trying to now simplify what you need to probably remember for your exam.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 125:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: So, quick summary of the DX billing.
- Hidden/Implicit Meaning: Financial governance signal.

Line 126:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: The DX has two type of the charges, port-hour charges and Data Transfer Out charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 127:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And the port-hour charges depend on the DX capacity, whether you go for 1Gbps connection or 10 Gbps connection or sub-1 Gbps connection.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 128:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And all the port-hour charges are standard across all DX locations, except the Japan.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 129:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now, AWS account, which created the DX connection, pays for the port-hour charges, right?
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 130:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Whether it's a dedicated connection or it's a hosted connection.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 131:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And, with respect to the Data Transfer Out charges, generally speaking, it is allocated to the account that owns the resource, sending the traffic, with exception of transit gateway, we just saw that, but I, I don't think so you need to get into transit gateway detail.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 132:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Just understand that the resource which initiated the traffic, will be applicable for the Data Transfer Out charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 133:
- Concepts: Consumption Accountability
- Services: (none explicit)
- Key Insights: And in case of multi account setup, where the owner of the connection and AWS resources are in different AWS organization, the DTO is charged to the resource owner, of course.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 134:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: It is inline with what we just saw, but the DTO charges are not the Direct Connect DTO charges, but the standard AWS services DTO charges, right?
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 135:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, these are essentially things that you need to remember.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 136:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now, with that, again, if you are not able to make out who pays for what, let's look at a quick knowledge check, how you arrived to that decision.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 137:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So the question is, who pays for charges for the hosted VIF, and the traffic flowing over to the hosted VIF?
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 138:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So what should be your answer?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 139:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now, think on two lines, first, you need to know what is hosted VIF.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 140:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now in case of hosted VIF, the connection is owned by someone, that means one AWS account, and typically VIF is owned by some other AWS account.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 141:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: That's typically what hosted VIF is.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 142:
- Concepts: Cost Control Operational Context
- Services: AWS SAM
- Key Insights: Now, go with the same analogy.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 143:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: First, think about port-hours.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 144:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Now, port-hour will be built to the AWS account, owning the connection, whether it's a dedicated connection or it's a hosted connection, doesn't matter, right?
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 145:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And now, let's talk about the Data Transfer Out charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 146:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, Data Transfer Out charges will be built to the AWS account, which contains the resource, sending the traffic over the hosted VIF.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 147:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So again, things are simple.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 148:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Think about port-hour charges, and think about data transfer out charges.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 149:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So ask this two questions: Who owns the connection?
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 150:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And who sends the traffic, right?
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 151:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Accordingly, these charges would be distributed.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 152:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: So with that, I think, we saw lot of things when it comes to the DX billing.
- Hidden/Implicit Meaning: Financial governance signal.

Line 153:
- Concepts: Spend Visibility
- Services: (none explicit)
- Key Insights: And I think it is one of the, again, important topic to know, because then you're very clear, you know, when it comes to the questions related to the billing for DX So, thanks for watching.
- Hidden/Implicit Meaning: Financial governance signal.

### File: outputs/aws-solutions-architect-professional/13_Cost Control/131_EC2 Launch Types & Savings Plan.txt

Line 1:
- Concepts: Commitment Strategy
- Services: Amazon EC2
- Key Insights: Now let's discuss EC2 Launch types and savings plans.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 2:
- Concepts: Commitment Strategy, Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So we have On Demand Instances and they're here for when you have short workloads with predictable pricing and they're going to be very reliable.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 3:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: They're the kind of instances that you launch when you first start on the console.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 4:
- Concepts: Commitment Strategy
- Services: (none explicit)
- Key Insights: Spot Instances are going to be great when you have very short workloads, they're going to be cheap, but you run the risk of losing these instances because AWS can reclaim capacity and therefore using Spot Instances is not considered reliable.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 5:
- Concepts: Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: So they're great when you need to have huge cost savings and when your when your workload is resilient to failures.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 6:
- Concepts: Commitment Strategy
- Services: (none explicit)
- Key Insights: Now if you go for long workloads, you can go for the Reserved Instances.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 7:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: And it's minimum one year that you need to commit.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 8:
- Concepts: Commitment Strategy
- Services: Amazon Lex
- Key Insights: And so you have different kinds; you have the Reserved Instances for long workloads, you have the Convertible Reserved Instances for long workloads where you have flexible instance types, and then we'll see in the next slide, we have something better called savings plan.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 9:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Then we have Dedicated Instances.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 10:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So, we have the guarantee with these instances that no other customers will share your hardware or will have Dedicated Hosts where you book an entire physical server and you also control instant placements within the server.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 11:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So these Dedicated Hosts have a use case.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 12:
- Concepts: Cost Control Operational Context
- Services: AWS SAM
- Key Insights: This is great for software licenses that will operate at the core or socket level because you do have access to the core or circuits, and then you can also define host affinity so that the instance reboots are kept on the same hosts.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 13:
- Concepts: Cost Control Operational Context
- Services: Amazon EC2
- Key Insights: Okay, so that's for the EC2 Easy to Launch types.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 14:
- Concepts: Commitment Strategy, Service Cost Trade-offs
- Services: (none explicit)
- Key Insights: Then for the savings plan, this is a new pricing model to get discounts based on long-term usage.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 15:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So I think over time, this is going to replace reserve instances.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 16:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that you're going to commit to a certain type of usage.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 17:
- Concepts: Commitment Strategy
- Services: (none explicit)
- Key Insights: For example, you say, "hey, I will spend $10 per hour for the next 1 to 3 years." And then any usage beyond the savings plan is going to be billed at the on-demand price, but then beforehand, you are doing these savings.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 18:
- Concepts: Commitment Strategy
- Services: AWS SAM, Amazon EC2, Amazon Lex
- Key Insights: So you have the EC2 instance Saving Plans which gives you up to 72% discount which is the same discount as standard RIs, but it's more flexible because you have to- You can select the instance family, so M5, C5, and so on, and you're locked to a specific region and it's going to be flexible across size.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 19:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So it could be an M5 large and m5.4xlarge and so on.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 20:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: You can get any OS you want, so Windows, Linux, and then the tenancy can be either dedicated or default.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 21:
- Concepts: Commitment Strategy
- Services: (none explicit)
- Key Insights: Then you get a Compute Savings plan.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 22:
- Concepts: Cost Control Operational Context
- Services: AWS SAM
- Key Insights: So it's 66%, which is the same as the convertible RIs, and with these, you get the ability to move between instance families.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 23:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So you can have a C5 and then have an M5.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 24:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: You can move across regions.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 25:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So you can go from Ireland to the US, or you can have different compute types.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 26:
- Concepts: Cost Control Operational Context
- Services: AWS Lambda, Amazon EC2
- Key Insights: So it could be for EC2 instances, for Fargate, for Lambda, and you can change the OS and you can change the tenancy.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 27:
- Concepts: Cost Control Operational Context
- Services: Amazon Lex
- Key Insights: So they're the most flexible obviously which is why they're a little bit less intense in terms of savings, but they're great.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 28:
- Concepts: Commitment Strategy
- Services: SageMaker
- Key Insights: And then finally, there's the SageMaker Savings Plan which allows you to save up to 64% off on your SageMaker workloads.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 29:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: All right, let's say for this lecture, I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

### File: outputs/aws-solutions-architect-professional/13_Cost Control/136_EC2 Reserved Instance.txt

Line 1:
- Concepts: Commitment Strategy
- Services: (none explicit)
- Key Insights: Just a quick lecture on reserved instances.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 2:
- Concepts: Commitment Strategy
- Services: AWS SAM
- Key Insights: So they can be shared in an AWS organization the same way you can share savings plans as well.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 3:
- Concepts: Commitment Strategy
- Services: (none explicit)
- Key Insights: But if you want to turn off sharing of a reserved instance for a specific account, it has to be done from within the management accounts of an organization.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 4:
- Concepts: Commitment Strategy, Spend Visibility
- Services: (none explicit)
- Key Insights: So you will go in the billing dashboard, in the billing console from the management account and you can select which accounts can or cannot share their reserved instances.
- Hidden/Implicit Meaning: Constraint or limitation signal; Financial governance signal; Commitment and optimization signal.

Line 5:
- Concepts: Commitment Strategy
- Services: (none explicit)
- Key Insights: The other thing you need to know around is the renewal of reserved instances.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 6:
- Concepts: Commitment Strategy
- Services: (none explicit)
- Key Insights: So you can actually queue, that means schedule and reserved ahead of time, your reserved instances.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 7:
- Concepts: Commitment Strategy
- Services: (none explicit)
- Key Insights: Therefore, if you want to renew a reserved instance because it is about to expire and come to an end, then all you have to do is just queue a reserve instance purchase at the exact date that when the previous one expires, and that's it.
- Hidden/Implicit Meaning: Commitment and optimization signal.

Line 8:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: You've effectively performed a renewal.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 9:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 10:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: Very simple.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

Line 11:
- Concepts: Cost Control Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes cost control behavior detail.

## Step 2 - Consolidation

### 1. Concepts List
- Commitment Strategy
- Consumption Accountability
- Cost Control Operational Context
- Service Cost Trade-offs
- Spend Visibility

### 2. Services List
- AWS Lambda
- AWS SAM
- Amazon EC2
- Amazon Lex
- Amazon S3
- SageMaker

### 3. Features List
- billing
- pricing
- reserved
- savings plan
- spot

### 4. Use Cases
- 138_DX Pricing.txt:2: Now, this is one of the most confusing topic, I would say, when it comes to the Direct Connect Billing.
- 138_DX Pricing.txt:8: Okay, so when it comes to the Direct Connect, you know what parties are involved, there is AWS region, which is connected to on-premise data center via the Direct Connect location, right?
- 138_DX Pricing.txt:12: Now in all this, what are the charges that you have to pay when you go for a Direct Connect.
- 138_DX Pricing.txt:21: Now, when we say data charges out means, any data that is going from AWS to on-premise network, or to Direct Connect location, right?
- 138_DX Pricing.txt:50: So for example, if source region is not Virginia, and the destination DX location is Las Vegas, then the data transfer OUT charges are $0.02 per GB.
- 138_DX Pricing.txt:67: Now, you need to understand that when it's a dedicated connection, you request for a connection and then you get LOA CFA, that you submit it to your Direct Connect partner, or a Direct Connect location provider.
- 138_DX Pricing.txt:82: Also, you need to understand that, the billing for port-hour stops when the dedicated connection or hosted connection is deleted from your AWS account, which means, if it is just in a downstate, does not mean that there is no charge, right?
- 138_DX Pricing.txt:104: So, this is a pretty simple when it is a private VIF, or a public VIF.
- 138_DX Pricing.txt:117: So, this is one difference, when it comes to the transit gateway.
- 138_DX Pricing.txt:119: If there are multiple AWS organization involved, for example, the Direct Connect connection is owned by AWS account, which is part of AWS organization one, and the resource which is sending the data, is a part of an AWS account, which is part of AWS organization two.
- 138_DX Pricing.txt:152: So with that, I think, we saw lot of things when it comes to the DX billing.
- 138_DX Pricing.txt:153: And I think it is one of the, again, important topic to know, because then you're very clear, you know, when it comes to the questions related to the billing for DX So, thanks for watching.
- 131_EC2 Launch Types & Savings Plan.txt:2: So we have On Demand Instances and they're here for when you have short workloads with predictable pricing and they're going to be very reliable.
- 131_EC2 Launch Types & Savings Plan.txt:3: They're the kind of instances that you launch when you first start on the console.
- 131_EC2 Launch Types & Savings Plan.txt:4: Spot Instances are going to be great when you have very short workloads, they're going to be cheap, but you run the risk of losing these instances because AWS can reclaim capacity and therefore using Spot Instances is not considered reliable.
- 131_EC2 Launch Types & Savings Plan.txt:5: So they're great when you need to have huge cost savings and when your when your workload is resilient to failures.
- 131_EC2 Launch Types & Savings Plan.txt:11: So these Dedicated Hosts have a use case.
- 131_EC2 Launch Types & Savings Plan.txt:17: For example, you say, "hey, I will spend $10 per hour for the next 1 to 3 years." And then any usage beyond the savings plan is going to be billed at the on-demand price, but then beforehand, you are doing these savings.
- 136_EC2 Reserved Instance.txt:7: Therefore, if you want to renew a reserved instance because it is about to expire and come to an end, then all you have to do is just queue a reserve instance purchase at the exact date that when the previous one expires, and that's it.

### 5. Constraints / Limitations
- 138_DX Pricing.txt:103: Now, this is only the case, in case of S3, but for rest of the resources, the owner of the resource will pay for the Data Transfer Out charges.
- 138_DX Pricing.txt:138: So what should be your answer?
- 136_EC2 Reserved Instance.txt:4: So you will go in the billing dashboard, in the billing console from the management account and you can select which accounts can or cannot share their reserved instances.

### 6. Patterns / Architectures
- (No explicit pattern markers detected)

## Step 3 - Deep Expansion (Cost Control Concepts)

### Core Services in This Topic
- AWS Lambda: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon EC2: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Lex: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon S3: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- SageMaker: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

### Architect-Level Concept Expansion
- Commitment Strategy: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Consumption Accountability: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Cost Control Operational Context: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Service Cost Trade-offs: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Spend Visibility: treat this as a design lever that changes topology, risk posture, or operational workflow.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Budgeting and cost visibility | Budgets / Cost Explorer / Cost Anomaly Detection | Cost Management + Budgets | Cloud Billing + Budgets + Recommender |
| Commitment discounts | Savings Plans / Reserved / Spot | Reservations / Savings plan patterns / Spot VMs | Committed use discounts / reservations / Spot VMs |
| Governance and accountability | Cost allocation tags / Trusted Advisor | Management groups / tags / advisor tooling | Labels / billing export / Recommender governance |
| Optimization recommendations | Trusted Advisor / Compute Optimizer | Advisor / Cost recommendations | Recommender |

### Trade-offs and Decision Notes
- Cost Control Knowledge Base is strongest when design decisions are expressed as control objectives rather than vendor-only terminology.
- Cross-cloud portability improves when service choice, failure behavior, and governance model are documented together.
- Cloud-native implementations should still preserve comparable intent across AWS, Azure, and GCP.

## Phase-wise Architect-Level Organization

### Phase 1 - Foundations
- Cost control begins with visibility, ownership, and purchase-model awareness.
- Financial architecture quality depends on tying spend to workload intent and accountability.

### Phase 2 - Core Services
- Implement billing telemetry and budget controls before relying on optimization recommendations.
- Use commitment models only when workload steadiness and ownership are understood.

### Phase 3 - Advanced Patterns
- Treat chargeback and allocation tagging as governance systems, not bookkeeping details.
- Optimization quality depends on removing idle design choices, not just accepting discounts.

### Phase 4 - System Design
- Reference architecture: billing visibility layer, optimization controls, and owner accountability loops.
- Scaling considerations: multi-account rollups, inconsistent tags, and decentralized procurement behavior.
- Cost considerations: overcommitting steady-state discounts, missing anomaly baselines, and invisible shared costs.
