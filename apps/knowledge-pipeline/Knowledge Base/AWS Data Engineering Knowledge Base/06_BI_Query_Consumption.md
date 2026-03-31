# 06_BI_Query_Consumption.md

## Scope
- Topic: Query consumption, BI, dashboards, and analyst-facing data access
- Files processed: 2
- Extracted non-empty transcript lines: 186
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Data Engineering Knowledge Base
- Cross-domain referrals: 0

## Real Material - Architect Learning Build (Data Engineering: BI Query Consumption)

This section is the study-first architecture guide for query consumption, bi, dashboards, and analyst-facing data access.

### Phase 1 - Foundations

#### Module: BI Query Consumption Mental Model
- Use bi query consumption decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: BI Query Consumption Mental Model
- Primary transcript files:
- outputs/Data Engineering/databricks-certified-data-engineer-associate-ultimate-prep/17_Databricks SQL/122_Databricks SQL - Query & Visualization.txt
- outputs/Data Engineering/databricks-certified-data-engineer-associate-ultimate-prep/07_Apache Spark - Querying Data (SQL)/040_Extract Memberships Data - Binary File.txt
- Top concept clusters from transcript metadata:
- Analytical Storage and Query
- Consumption and BI
- Lakehouse Governance
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 2
- Module-selected transcript files: 2
- Key insight candidates scanned (topic): 186
- Key insights inside selected files: 24
- Unique concept tags in selected files: 3

##### Transcript-Enriched Learning Notes
- So as you can see, quite simply, you can use the SQL editor to query your data, and you can use the dashboards to create your visualizations, and you can share your dashboards with the other users within the organization as well.
- Now that we've created the SQL warehouse and that's up and running, let's look at querying the data from the Data Lake house using the SQL editor as well as creating a simple dashboard.
- As I said before, Databricks recommends using the binary file format, but we need to ensure that we are catering for the subfolders within the main folder as well.
- So I'm going to give you a quick demo, and it's going to be a simple demo to use the SQL editor as well as creating a dashboard.
- So to share the dashboard you can simply click on share button here and add the users and give them the right permissions.
- We've successfully extracted the data from a binary or an image file and created a view on top of that.
- And once you've completed edit in the dashboard, you can simply click on publish to publish that.
- If you already have a dashboard, you can add it to that dashboard or you can create a new one.
- We can take the data as well to the dashboard if you wanted to, but I'm not going to do that.
- So I'm going to simply say hash and then gizmo box performance dashboard dashboard.
- You can add other users and give them permissions to manage or view your dashboard.
- And I hope you've got a good understanding about the SQL editor and the dashboards.

##### Polished Architect Notes
- Transcript signals that so as you can see, quite simply, you can use the SQL editor to query your data, and you can use the dashboards to create your visualizations, and you can share your dashboards with the other users within the organization as well.
- Transcript signals that now that we've created the SQL warehouse and that's up and running, let's look at querying the data from the Data Lake house using the SQL editor as well as creating a simple dashboard.
- Transcript signals that as I said before, Databricks recommends using the binary file format, but we need to ensure that we are catering for the subfolders within the main folder as well.
- Transcript signals that so I'm going to give you a quick demo, and it's going to be a simple demo to use the SQL editor as well as creating a dashboard.
- Transcript signals that so to share the dashboard you can simply click on share button here and add the users and give them the right permissions.
- Transcript signals that we've successfully extracted the data from a binary or an image file and created a view on top of that.
- Transcript signals that and once you've completed edit in the dashboard, you can simply click on publish to publish that.
- Transcript signals that if you already have a dashboard, you can add it to that dashboard or you can create a new one.
- Transcript signals that we can take the data as well to the dashboard if you wanted to, but I'm not going to do that.
- Transcript signals that so I'm going to simply say hash and then gizmo box performance dashboard dashboard.
- Transcript signals that you can add other users and give them permissions to manage or view your dashboard.
- Transcript signals that and I hope you've got a good understanding about the SQL editor and the dashboards.

##### Architect Synthesis (Transcript-Derived)
- Treat Analytical Storage and Query as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Consumption and BI as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Lakehouse Governance as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so as you can see, quite simply, you can use the SQL editor to query your data, and you can use the dashboards to create your visualizations, and you can share your dashboards with the other users within the organization as well.
- Design implication: now that we've created the SQL warehouse and that's up and running, let's look at querying the data from the Data Lake house using the SQL editor as well as creating a simple dashboard.
- Design implication: as I said before, Databricks recommends using the binary file format, but we need to ensure that we are catering for the subfolders within the main folder as well.
- Design implication: so I'm going to give you a quick demo, and it's going to be a simple demo to use the SQL editor as well as creating a dashboard.
- Design implication: so to share the dashboard you can simply click on share button here and add the users and give them the right permissions.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/Data Engineering/databricks-certified-data-engineer-associate-ultimate-prep/17_Databricks SQL/122_Databricks SQL - Query & Visualization.txt
- outputs/Data Engineering/databricks-certified-data-engineer-associate-ultimate-prep/07_Apache Spark - Querying Data (SQL)/040_Extract Memberships Data - Binary File.txt
- Top concept clusters from transcript metadata:
- Analytical Storage and Query
- Consumption and BI
- Lakehouse Governance
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 2
- Module-selected transcript files: 2
- Key insight candidates scanned (topic): 186
- Key insights inside selected files: 24
- Unique concept tags in selected files: 3

##### Transcript-Enriched Learning Notes
- So as you can see, quite simply, you can use the SQL editor to query your data, and you can use the dashboards to create your visualizations, and you can share your dashboards with the other users within the organization as well.
- Now that we've created the SQL warehouse and that's up and running, let's look at querying the data from the Data Lake house using the SQL editor as well as creating a simple dashboard.
- As I said before, Databricks recommends using the binary file format, but we need to ensure that we are catering for the subfolders within the main folder as well.
- If you wanted to schedule your query to run at regular intervals, you can simply click on the ad schedule to schedule the query to run.
- So I'm going to give you a quick demo, and it's going to be a simple demo to use the SQL editor as well as creating a dashboard.
- So to share the dashboard you can simply click on share button here and add the users and give them the right permissions.
- Let's first go through the files, and then we'll look at querying these files using the select statement.
- We've successfully extracted the data from a binary or an image file and created a view on top of that.
- And once you've completed edit in the dashboard, you can simply click on publish to publish that.
- If you already have a dashboard, you can add it to that dashboard or you can create a new one.
- We can take the data as well to the dashboard if you wanted to, but I'm not going to do that.
- And let's say I want to query the data from one of the tables in our gizmo box project.

##### Polished Architect Notes
- Transcript signals that so as you can see, quite simply, you can use the SQL editor to query your data, and you can use the dashboards to create your visualizations, and you can share your dashboards with the other users within the organization as well.
- Transcript signals that now that we've created the SQL warehouse and that's up and running, let's look at querying the data from the Data Lake house using the SQL editor as well as creating a simple dashboard.
- Transcript signals that as I said before, Databricks recommends using the binary file format, but we need to ensure that we are catering for the subfolders within the main folder as well.
- Transcript signals that if you wanted to schedule your query to run at regular intervals, you can simply click on the ad schedule to schedule the query to run.
- Transcript signals that so I'm going to give you a quick demo, and it's going to be a simple demo to use the SQL editor as well as creating a dashboard.
- Transcript signals that so to share the dashboard you can simply click on share button here and add the users and give them the right permissions.
- Transcript signals that let's first go through the files, and then we'll look at querying these files using the select statement.
- Transcript signals that we've successfully extracted the data from a binary or an image file and created a view on top of that.
- Transcript signals that and once you've completed edit in the dashboard, you can simply click on publish to publish that.
- Transcript signals that if you already have a dashboard, you can add it to that dashboard or you can create a new one.
- Transcript signals that we can take the data as well to the dashboard if you wanted to, but I'm not going to do that.
- Transcript signals that and let's say I want to query the data from one of the tables in our gizmo box project.

##### Architect Synthesis (Transcript-Derived)
- Treat Analytical Storage and Query as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Consumption and BI as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Lakehouse Governance as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so as you can see, quite simply, you can use the SQL editor to query your data, and you can use the dashboards to create your visualizations, and you can share your dashboards with the other users within the organization as well.
- Design implication: now that we've created the SQL warehouse and that's up and running, let's look at querying the data from the Data Lake house using the SQL editor as well as creating a simple dashboard.
- Design implication: as I said before, Databricks recommends using the binary file format, but we need to ensure that we are catering for the subfolders within the main folder as well.
- Design implication: if you wanted to schedule your query to run at regular intervals, you can simply click on the ad schedule to schedule the query to run.
- Design implication: so I'm going to give you a quick demo, and it's going to be a simple demo to use the SQL editor as well as creating a dashboard.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/Data Engineering/databricks-certified-data-engineer-associate-ultimate-prep/17_Databricks SQL/122_Databricks SQL - Query & Visualization.txt
- outputs/Data Engineering/databricks-certified-data-engineer-associate-ultimate-prep/07_Apache Spark - Querying Data (SQL)/040_Extract Memberships Data - Binary File.txt
- Top concept clusters from transcript metadata:
- Analytical Storage and Query
- Consumption and BI
- Lakehouse Governance
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 2
- Module-selected transcript files: 2
- Key insight candidates scanned (topic): 186
- Key insights inside selected files: 24
- Unique concept tags in selected files: 3

##### Transcript-Enriched Learning Notes
- So as you can see, quite simply, you can use the SQL editor to query your data, and you can use the dashboards to create your visualizations, and you can share your dashboards with the other users within the organization as well.
- Now that we've created the SQL warehouse and that's up and running, let's look at querying the data from the Data Lake house using the SQL editor as well as creating a simple dashboard.
- So I'm going to simply say hash and then gizmo box performance dashboard dashboard.
- So now we've created a dashboard with the visualization that we created earlier.
- So let's say I'm going to again put Gizmo box Performance dashboard.
- You can add more visualizations to this dashboard.
- As I said before, Databricks recommends using the binary file format, but we need to ensure that we are catering for the subfolders within the main folder as well.
- If you wanted to schedule your query to run at regular intervals, you can simply click on the ad schedule to schedule the query to run.
- So I'm going to give you a quick demo, and it's going to be a simple demo to use the SQL editor as well as creating a dashboard.
- So to share the dashboard you can simply click on share button here and add the users and give them the right permissions.
- Let's first go through the files, and then we'll look at querying these files using the select statement.
- We've successfully extracted the data from a binary or an image file and created a view on top of that.

##### Polished Architect Notes
- Transcript signals that so as you can see, quite simply, you can use the SQL editor to query your data, and you can use the dashboards to create your visualizations, and you can share your dashboards with the other users within the organization as well.
- Transcript signals that now that we've created the SQL warehouse and that's up and running, let's look at querying the data from the Data Lake house using the SQL editor as well as creating a simple dashboard.
- Transcript signals that so I'm going to simply say hash and then gizmo box performance dashboard dashboard.
- Transcript signals that so now we've created a dashboard with the visualization that we created earlier.
- Transcript signals that so let's say I'm going to again put Gizmo box Performance dashboard.
- Transcript signals that you can add more visualizations to this dashboard.
- Transcript signals that as I said before, Databricks recommends using the binary file format, but we need to ensure that we are catering for the subfolders within the main folder as well.
- Transcript signals that if you wanted to schedule your query to run at regular intervals, you can simply click on the ad schedule to schedule the query to run.
- Transcript signals that so I'm going to give you a quick demo, and it's going to be a simple demo to use the SQL editor as well as creating a dashboard.
- Transcript signals that so to share the dashboard you can simply click on share button here and add the users and give them the right permissions.
- Transcript signals that let's first go through the files, and then we'll look at querying these files using the select statement.
- Transcript signals that we've successfully extracted the data from a binary or an image file and created a view on top of that.

##### Architect Synthesis (Transcript-Derived)
- Treat Analytical Storage and Query as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Consumption and BI as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Lakehouse Governance as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so as you can see, quite simply, you can use the SQL editor to query your data, and you can use the dashboards to create your visualizations, and you can share your dashboards with the other users within the organization as well.
- Design implication: now that we've created the SQL warehouse and that's up and running, let's look at querying the data from the Data Lake house using the SQL editor as well as creating a simple dashboard.
- Design implication: so I'm going to simply say hash and then gizmo box performance dashboard dashboard.
- Design implication: so now we've created a dashboard with the visualization that we created earlier.
- Design implication: so let's say I'm going to again put Gizmo box Performance dashboard.

### Phase 2 - Core Services
- Amazon RDS should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: Analytical Storage and Query becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Consumption and BI becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Data Engineering Operational Context becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Lakehouse Governance becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Streaming State and Time becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design bi query consumption with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when bi query consumption decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: So as you can see, quite simply, you can use the SQL editor to query your data, and you can use the dashboards to create your visualizations, and you can share your dashboards with the other users within the organization as well.
- Signal 2: So I'm going to give you a quick demo, and it's going to be a simple demo to use the SQL editor as well as creating a dashboard.
- Signal 3: So to share the dashboard you can simply click on share button here and add the users and give them the right permissions.
- Signal 4: And once you've completed edit in the dashboard, you can simply click on publish to publish that.
- Signal 5: If you already have a dashboard, you can add it to that dashboard or you can create a new one.
- Signal 6: Transcript signals that so as you can see, quite simply, you can use the SQL editor to query your data, and you can use the dashboards to create your visualizations, and you can share your dashboards with the other users within the organization as well.
- Signal 7: Transcript signals that so I'm going to give you a quick demo, and it's going to be a simple demo to use the SQL editor as well as creating a dashboard.
- Signal 8: Transcript signals that so to share the dashboard you can simply click on share button here and add the users and give them the right permissions.
- Signal 9: Transcript signals that and once you've completed edit in the dashboard, you can simply click on publish to publish that.
- Signal 10: Transcript signals that if you already have a dashboard, you can add it to that dashboard or you can create a new one.

### Service-Specific Lab Paths
### Activity 1: Amazon S3 Lab for Query consumption, BI, dashboards, and analyst-facing data access
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

### Activity 2: Amazon DynamoDB Lab for Query consumption, BI, dashboards, and analyst-facing data access
- AWS console path: AWS Console -> DynamoDB -> Tables
- Azure equivalent: Azure Cosmos DB
- GCP equivalent: Firestore
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> DynamoDB -> Tables.
3. Build: Create a table with partition key and add one item.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Query the item using the partition key.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete test table.

### Activity 3: Amazon EC2 Lab for Query consumption, BI, dashboards, and analyst-facing data access
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

### Activity 4: Amazon CloudWatch Lab for Query consumption, BI, dashboards, and analyst-facing data access
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

Use this lens to study Query consumption, BI, dashboards, and analyst-facing data access in a cloud-agnostic way: focus on capability first, provider name second.

### Capability Mapping (AWS / Azure / GCP)
| Capability | AWS | Azure | GCP |
|---|---|---|---|
| Identity | IAM / IAM Identity Center | Microsoft Entra ID + RBAC | Cloud IAM |
| Object Storage | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Virtual Machines | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Serverless Functions | AWS Lambda | Azure Functions | Cloud Functions / Cloud Run |
| Databases | RDS / DynamoDB / ElastiCache | Azure SQL / Cosmos DB / Azure Cache | Cloud SQL / Firestore / Memorystore |
| Observability | CloudWatch / X-Ray / CloudTrail | Azure Monitor / App Insights / Activity Log | Cloud Monitoring / Cloud Logging / Cloud Trace |
| AI/ML | SageMaker / Bedrock / AI services | Azure ML / Azure OpenAI / AI services | Vertex AI / GenAI services |
| Migration/DR | MGN / DMS / Backup | Azure Migrate / DMS / Backup | Migrate to VMs / Database Migration / Backup and DR |

### Same Lab Across 3 Clouds
| Lab Theme | AWS | Azure | GCP |
|---|---|---|---|
| Amazon S3 | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Amazon DynamoDB | Amazon DynamoDB | Azure Cosmos DB | Firestore |
| Amazon EC2 | Amazon EC2 | Azure Virtual Machines | Compute Engine |
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

- No secondary referral sources were required for this topic.

## Step 1 - Line-by-Line Extraction

Every non-empty line from every primary source transcript is preserved below with extraction fields.

### File: outputs/Data Engineering/databricks-certified-data-engineer-associate-ultimate-prep/07_Apache Spark - Querying Data (SQL)/040_Extract Memberships Data - Binary File.txt

Line 1:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Welcome back.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 2:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: In this lesson we're going to look at how to process unstructured data files.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 3:
- Concepts: Data Engineering Operational Context
- Services: Amazon RDS
- Key Insights: As you know the membership folder has photos of the customer's identity cards which are in the image format.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 4:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: PNG.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 5:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: Databricks recommends using the binary file format to process these files.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 6:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: Let's first go through the files, and then we'll look at querying these files using the select statement.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 7:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And then we'll also create a view on the schema.
- Hidden/Implicit Meaning: Governance and lineage signal.

Line 8:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Let me switch over to the Azure portal and show you the files.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 9:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Here we are in the Azure portal.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 10:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Let's go into the memberships folder.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 11:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: As you can see, this folder structure is slightly different to the others.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 12:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: We got subfolders and then we got the files.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 13:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So we got the year and month folders here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 14:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And let's go into one of the files and let me click on edit.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 15:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And as you can see it's a simple image of the identity card of each of the members.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 16:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And we need to process this via Databricks.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 17:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: As I said before, Databricks recommends using the binary file format, but we need to ensure that we are catering for the subfolders within the main folder as well.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 18:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So let's go over to the Databricks workspace and I'll show you how to do that.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 19:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: I'm going to simply list the files first so that I can show you the folder structure.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 20:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: As you can see, when you're looking in the memberships folder, it's only listing as the sub folders.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 21:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: But we need to see the files.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 22:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: In order to see the files in the sub folders, we need to use the wildcard character because we got different values for the sub folder names.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 23:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: I'll show you how to do that as well.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 24:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Let me copy the folder path from here and let's start right in the select statement.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 25:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: And as we discussed we need to use the binary file format.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 26:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: So let me give the file binary file format here and let's use Backticks.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 27:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And we need to use tar for the folder path.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 28:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And then you can stop it there.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 29:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And it will pick all the files inside all the sub folders.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 30:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Or you can even do slash star dot png if we wanted to get just the PNG files.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 31:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And if you have a mixture of file file types within the folder.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 32:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So let's use star dot png as well.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 33:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And let me execute that statement.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 34:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: As you can see we've got all the data being listed here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 35:
- Concepts: Consumption and BI
- Services: Amazon RDS
- Key Insights: We've got 50 records combined between all of those four subfolders.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 36:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And what you get is not just the content of the files.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 37:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: You get some metadata as well by default.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 38:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So we got the content under the content column as you can see here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 39:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And also you get the file in the folder path as well as the modification time and the length of the files as well.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 40:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So it's quite useful to have the metadata by default.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 41:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So let's now create a view on top of this file.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 42:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And the view is now created.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 43:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Let's ensure that we got all the data as we expect to see in the view.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 44:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And let me execute that statement.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 45:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And as you can see we've got the data in the views.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 46:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: That's brilliant.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 47:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: We've successfully extracted the data from a binary or an image file and created a view on top of that.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 48:
- Concepts: Data Engineering Operational Context
- Services: Amazon RDS
- Key Insights: Uh, as you can see, there is no identifiers on each of the records, but we've got the file path or the folder path with the customer ID as part of the file name.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 49:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: I'll show you how to extract that information and create a new column called customer ID to have that information and then the content alongside that.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 50:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: So it will be easier to query the data that way.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 51:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Uh, but that will be in a later lesson.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 52:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And that's the end of this lesson.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 53:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: I'll see you in the next one.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

### File: outputs/Data Engineering/databricks-certified-data-engineer-associate-ultimate-prep/17_Databricks SQL/122_Databricks SQL - Query & Visualization.txt

Line 1:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Welcome back.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 2:
- Concepts: Analytical Storage and Query, Consumption and BI, Lakehouse Governance
- Services: (none explicit)
- Key Insights: Now that we've created the SQL warehouse and that's up and running, let's look at querying the data from the Data Lake house using the SQL editor as well as creating a simple dashboard.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 3:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: As I said before, most of the work here is normally done by data analyst or the business users.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 4:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And as a data engineer, you just need to be aware of what you can do here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 5:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: You don't need to know an awful lot.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 6:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: So I'm going to give you a quick demo, and it's going to be a simple demo to use the SQL editor as well as creating a dashboard.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 7:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So let's go over to the SQL editor.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 8:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: And let's say I want to query the data from one of the tables in our gizmo box project.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 9:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to simply go over to Gizmo Box and Under Gold I think we got a table called Order Summary Monthly.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 10:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: I'm going to query that table.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 11:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So you can write the Select statement here similar to what we normally do.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 12:
- Concepts: Lakehouse Governance
- Services: (none explicit)
- Key Insights: And you can either use the drop downs here to pick your catalogs and the schemas and just give the table name here.
- Hidden/Implicit Meaning: Governance and lineage signal.

Line 13:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: Or you can use the three level namespace to query the data.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 14:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: I'm going to use the three level namespace.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 15:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to simply bring that table name over here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 16:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And now we can execute the statement.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 17:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: But before we execute the SQL statement we need to connect to a SQL warehouse.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 18:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: And we're going to use the classic warehouse here called Dax warehouse.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 19:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: That's the one we created.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 20:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So let's assign that.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 21:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And you can click on the run button to execute this statement.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 22:
- Concepts: Data Engineering Operational Context
- Services: Amazon RDS
- Key Insights: As you can see here, by default it limits the number of records to 1000.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 23:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: You can take the option out by unticking this this menu here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 24:
- Concepts: Data Engineering Operational Context
- Services: Amazon RDS
- Key Insights: So now it will execute the statement and bring as many records as you have.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 25:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And also you've got the option to turn on and off off running all statements or individual statements.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 26:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: That's okay.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 27:
- Concepts: Data Engineering Operational Context
- Services: Amazon RDS
- Key Insights: We can run all statements here, but let's not limit the number of records.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 28:
- Concepts: Data Engineering Operational Context
- Services: Amazon RDS
- Key Insights: We don't have more than 1000 records, but I'm just, uh, selecting the option here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 29:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Let me click run now.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 30:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: So the query is now successfully executed.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 31:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: As you can see we've got the results from the table which is order summary monthly.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 32:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: That basically has the order month.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 33:
- Concepts: Data Engineering Operational Context
- Services: Amazon RDS
- Key Insights: Customer ID, total orders and item boards and total amount.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 34:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So for each of the month for a customer, we get the total orders, total items, and the total amount.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 35:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: If you remember from the other project that we did.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 36:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: And we'll do a dashboard on that.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 37:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: But before we do that you got the option to save your queries in this SQL editor.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 38:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So a lot of the times you might have multiple statements, and you want to save your queries so that you can reuse them later on.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 39:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So to do that you can simply click on the save button here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 40:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And that will bring up this dialog.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 41:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: And you can select the folder to which you're going to save the query to.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 42:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: I'm going to save it into D007 Databricks SQL folder.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 43:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: And also I'm going to rename this query and say select.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 44:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And let's click save.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 45:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: So now the query is saved into your workspace.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 46:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So if you go over to your workspace you will be able to see that.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 47:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Let me show you that as well.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 48:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: And as you can see, we've got the query saved here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 49:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Uh, let me go back now.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 50:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And you've got a couple of options here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 51:
- Concepts: Analytical Storage and Query
- Services: (none explicit)
- Key Insights: If you wanted to schedule your query to run at regular intervals, you can simply click on the ad schedule to schedule the query to run.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 52:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And you can also share it with the other users within your team.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 53:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And you can assign permissions as well.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 54:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: Let's now create a visualization from this data we got here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 55:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: In order to do that, you click on the plus button and click on visualization.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 56:
- Concepts: Streaming State and Time
- Services: (none explicit)
- Key Insights: And that opens up this window.
- Hidden/Implicit Meaning: Distributed state and scaling signal.

Line 57:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: And we can name our visualization here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 58:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So let's say I want to call it as a monthly order summary.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 59:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to keep it simple and show you a simple bar chart here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 60:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: But you've got a lot of other options.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 61:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So let's say we want to keep the x axis as order month.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 62:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And on the y axis we want to have the total number of orders.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 63:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So let me add the total orders here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 64:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And we'll use the aggregation as sum as well.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 65:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So it will sum up all the orders and give it on the y axis.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 66:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And let's group the data by order month as well.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 67:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So we've got the data grouped by order month.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 68:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And we've got the x axis as order month and y axis as sum of total orders.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 69:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So that's what I wanted.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 70:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And if you wanted to rename your x axis and y axis you can do that here as well.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 71:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So that'll do for me.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 72:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And you got a lot of other options actually.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 73:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: You can set the data labels and um series colors everything actually.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 74:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: But have a look at these things.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 75:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: But we're going to keep it simple and let's click save.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 76:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So as you can see we've simply visualized the data now.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 77:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: But let's say I want to add this to a dashboard.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 78:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: You can simply click on the drop down here and add it to a dashboard.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 79:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: If you already have a dashboard, you can add it to that dashboard or you can create a new one.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 80:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: So I'm going to create a new one because we don't have a dashboard.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 81:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: So in order to do that click on the Add to dashboard.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 82:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: And it's going to be create a new dashboard.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 83:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: And let's name our dashboard here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 84:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: You can leave this as default.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 85:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And let's select the widgets we need.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 86:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: We can take the data as well to the dashboard if you wanted to, but I'm not going to do that.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 87:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: I'm going to simply take the monthly order summary visualization that we've created.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 88:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So let's click create.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 89:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: So now we've created a dashboard with the visualization that we created earlier.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 90:
- Concepts: Consumption and BI
- Services: Amazon RDS
- Key Insights: So as you can see it's opening up the dashboard under the dashboards menu here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 91:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: And we've got the visualization here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 92:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And if you wanted to uh give a name for the page you can simply do that here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 93:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And also you can do a lot of things.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 94:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: You can add more visualizations to this dashboard.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 95:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And also you can add text as well.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 96:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Say for example if you wanted to have a text here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 97:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: So let's say I'm going to again put Gizmo box Performance dashboard.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 98:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: I can simply do that here just by double clicking.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 99:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And it accepts the markdown language which you are familiar with.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 100:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So let's say I want to have it as a heading.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 101:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: So I'm going to simply say hash and then gizmo box performance dashboard dashboard.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 102:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, we've got the text here in header one format.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 103:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So that's brilliant.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 104:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: If you wanted to publish this to other users you can simply click on publish.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 105:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: But before that, as you can see at the moment it's in draft mode.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 106:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: That's why we are able to edit it.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 107:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: When it's published in the published mode, we won't be able to edit it.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 108:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: You can simply see it and let me click on publish to publish the dashboard.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 109:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And then I'll demonstrate that.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 110:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So let me click publish here again.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 111:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And again.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 112:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: You can add other users and give them permissions to manage or view your dashboard.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 113:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So let me close that.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 114:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And as you can see here, now you can switch between the draft and the published.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 115:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And as you can see the published timestamp is here.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 116:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So I can simply switch to published.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 117:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: And this is the dashboard that the other users use.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 118:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: Sharing the dashboard with will see.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 119:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: So to share the dashboard you can simply click on share button here and add the users and give them the right permissions.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 120:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Missions.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 121:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: But if you ever wanted to edit, you will always have to go to the draft mode and then you can simply edit whatever you wanted.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 122:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So let's say I'm going to add s order summary.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 123:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: And now this dashboard here in draft has got order summary in the text.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 124:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: But if you switch to published you won't have that.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 125:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: Because when we published actually we didn't have that.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 126:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: So whenever you're editing, you can do that in draft mode without worrying about users being affected as well.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 127:
- Concepts: Consumption and BI
- Services: (none explicit)
- Key Insights: And once you've completed edit in the dashboard, you can simply click on publish to publish that.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 128:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And now if you go over to publish you will see the title that we changed here as well.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 129:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: That's brilliant.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 130:
- Concepts: Analytical Storage and Query, Consumption and BI
- Services: Amazon RDS
- Key Insights: So as you can see, quite simply, you can use the SQL editor to query your data, and you can use the dashboards to create your visualizations, and you can share your dashboards with the other users within the organization as well.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 131:
- Concepts: Consumption and BI
- Services: Amazon RDS
- Key Insights: And I hope you've got a good understanding about the SQL editor and the dashboards.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 132:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: And that's the end of this lesson.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

Line 133:
- Concepts: Data Engineering Operational Context
- Services: (none explicit)
- Key Insights: I'll see you in the next one.
- Hidden/Implicit Meaning: Implicitly contributes data engineering behavior detail.

## Step 2 - Consolidation

### 1. Concepts List
- Analytical Storage and Query
- Consumption and BI
- Data Engineering Operational Context
- Lakehouse Governance
- Streaming State and Time

### 2. Services List
- Amazon RDS

### 3. Features List
- databricks

### 4. Use Cases
- 040_Extract Memberships Data - Binary File.txt:20: As you can see, when you're looking in the memberships folder, it's only listing as the sub folders.
- 122_Databricks SQL - Query & Visualization.txt:96: Say for example if you wanted to have a text here.
- 122_Databricks SQL - Query & Visualization.txt:107: When it's published in the published mode, we won't be able to edit it.
- 122_Databricks SQL - Query & Visualization.txt:125: Because when we published actually we didn't have that.
- 122_Databricks SQL - Query & Visualization.txt:126: So whenever you're editing, you can do that in draft mode without worrying about users being affected as well.

### 5. Constraints / Limitations
- 040_Extract Memberships Data - Binary File.txt:20: As you can see, when you're looking in the memberships folder, it's only listing as the sub folders.
- 122_Databricks SQL - Query & Visualization.txt:22: As you can see here, by default it limits the number of records to 1000.
- 122_Databricks SQL - Query & Visualization.txt:27: We can run all statements here, but let's not limit the number of records.

### 6. Patterns / Architectures
- (No explicit pattern markers detected)

## Step 3 - Deep Expansion (Data Engineering Concepts)

### Core Services in This Topic
- Amazon RDS: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

### Architect-Level Concept Expansion
- Analytical Storage and Query: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Consumption and BI: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Data Engineering Operational Context: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Lakehouse Governance: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Streaming State and Time: treat this as a design lever that changes topology, risk posture, or operational workflow.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Distributed processing | EMR / Spark / Databricks on AWS | HDInsight / Azure Databricks / Synapse Spark | Dataproc |
| Streaming ingestion | Kinesis / Firehose / MSK / Flink | Event Hubs / Stream Analytics / Kafka ecosystems | Pub/Sub / Dataflow / Managed Kafka ecosystems |
| Serverless query | Athena | Synapse serverless SQL | BigQuery |
| Managed warehouse | Redshift | Synapse Dedicated SQL | BigQuery / BigLake warehouse patterns |
| Lake governance | Lake Formation / Glue Catalog | Purview / OneLake / Catalog patterns | Dataplex / Data Catalog |
| BI and dashboards | QuickSight | Power BI | Looker |

### Trade-offs and Decision Notes
- Data Engineering Knowledge Base is strongest when design decisions are expressed as control objectives rather than vendor-only terminology.
- Cross-cloud portability improves when service choice, failure behavior, and governance model are documented together.
- Cloud-native implementations should still preserve comparable intent across AWS, Azure, and GCP.

## Phase-wise Architect-Level Organization

### Phase 1 - Foundations
- Data engineering starts with movement, shape, and time semantics before tool choice.
- Platform quality depends on repeatable ingestion, transformation, and governed access paths.

### Phase 2 - Core Services
- Implement processing engines, streaming paths, and analytical stores as complementary layers, not interchangeable services.
- Treat schema, lineage, and data quality as architectural controls rather than documentation tasks.

### Phase 3 - Advanced Patterns
- Use lakehouse and streaming state patterns carefully because throughput and correctness often trade against each other.
- Keep analyst-facing consumption separate from raw and operational data paths.

### Phase 4 - System Design
- Reference architecture: ingestion plane, processing plane, governed storage, and consumption interfaces.
- Scaling considerations: skew, backpressure, late data, catalog drift, and warehouse concurrency.
- Cost considerations: cluster idling, scan-heavy query patterns, redundant copies, and uncontrolled BI sprawl.
