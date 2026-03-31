# 04_Log_Analytics_Investigation.md

## Scope
- Topic: Athena, OpenSearch, query workflows, and investigation patterns over telemetry
- Files processed: 0
- Extracted non-empty transcript lines: 0
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS Observability Knowledge Base
- Cross-domain referrals: 0

## Real Material - Architect Learning Build (Observability: Log Analytics Investigation)

This section is the study-first architecture guide for athena, opensearch, query workflows, and investigation patterns over telemetry.

### Phase 1 - Foundations

#### Module: Log Analytics Investigation Mental Model
- Use log analytics investigation decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: Log Analytics Investigation Mental Model
- Primary transcript files:
- Top concept clusters from transcript metadata:
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 0
- Module-selected transcript files: 0
- Key insight candidates scanned (topic): 0
- Key insights inside selected files: 0
- Unique concept tags in selected files: 0

##### Transcript-Enriched Learning Notes

##### Polished Architect Notes

##### Architect Synthesis (Transcript-Derived)

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- Top concept clusters from transcript metadata:
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 0
- Module-selected transcript files: 0
- Key insight candidates scanned (topic): 0
- Key insights inside selected files: 0
- Unique concept tags in selected files: 0

##### Transcript-Enriched Learning Notes

##### Polished Architect Notes

##### Architect Synthesis (Transcript-Derived)

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- Top concept clusters from transcript metadata:
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 0
- Module-selected transcript files: 0
- Key insight candidates scanned (topic): 0
- Key insights inside selected files: 0
- Unique concept tags in selected files: 0

##### Transcript-Enriched Learning Notes

##### Polished Architect Notes

##### Architect Synthesis (Transcript-Derived)

### Phase 2 - Core Services

### Phase 3 - Advanced Patterns
- Pattern emphasis: use architecture trade-offs to turn transcript details into repeatable operating models.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design log analytics investigation with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when log analytics investigation decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- No explicit lab sentence was detected, so the practice below is inferred from the topic scope.

### Service-Specific Lab Paths
### Activity 1: Amazon CloudWatch Lab for Athena, OpenSearch, query workflows, and investigation patterns over telemetry
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

### Activity 2: Amazon VPC Lab for Athena, OpenSearch, query workflows, and investigation patterns over telemetry
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

### Activity 3: Amazon EC2 Lab for Athena, OpenSearch, query workflows, and investigation patterns over telemetry
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

### Activity 4: AWS Lambda Lab for Athena, OpenSearch, query workflows, and investigation patterns over telemetry
- AWS console path: AWS Console -> Lambda -> Functions
- Azure equivalent: Azure Functions
- GCP equivalent: Cloud Functions or Cloud Run
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> Lambda -> Functions.
3. Build: Create a hello-world function from blueprint.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Run a test event and inspect CloudWatch logs.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete function and related log group if needed.

### Quick Troubleshooting
- Access denied: verify role permissions or ask admin for least-privilege lab policy.
- Resource limit reached: pick another region or request quota increase.
- Unexpected charges: stop/delete resources and review cost explorer immediately.

## Cross-Cloud Thinking Mode

Use this lens to study Athena, OpenSearch, query workflows, and investigation patterns over telemetry in a cloud-agnostic way: focus on capability first, provider name second.

### Capability Mapping (AWS / Azure / GCP)
| Capability | AWS | Azure | GCP |
|---|---|---|---|
| Identity | IAM / IAM Identity Center | Microsoft Entra ID + RBAC | Cloud IAM |
| Object Storage | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Virtual Machines | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Databases | RDS / DynamoDB / ElastiCache | Azure SQL / Cosmos DB / Azure Cache | Cloud SQL / Firestore / Memorystore |
| Networking | VPC / Route 53 / ELB | VNet / DNS / Load Balancer | VPC / Cloud DNS / Cloud Load Balancing |
| Observability | CloudWatch / X-Ray / CloudTrail | Azure Monitor / App Insights / Activity Log | Cloud Monitoring / Cloud Logging / Cloud Trace |
| AI/ML | SageMaker / Bedrock / AI services | Azure ML / Azure OpenAI / AI services | Vertex AI / GenAI services |
| Migration/DR | MGN / DMS / Backup | Azure Migrate / DMS / Backup | Migrate to VMs / Database Migration / Backup and DR |

### Same Lab Across 3 Clouds
| Lab Theme | AWS | Azure | GCP |
|---|---|---|---|
| Amazon CloudWatch | Amazon CloudWatch | Azure Monitor | Cloud Monitoring |
| Amazon VPC | Amazon VPC | Azure Virtual Network | VPC Network |
| Amazon EC2 | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| AWS Lambda | AWS Lambda | Azure Functions | Cloud Functions or Cloud Run |

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

## Step 2 - Consolidation

### 1. Concepts List
- (No explicit concepts detected)

### 2. Services List
- (No explicit services detected)

### 3. Features List
- (No explicit feature hints detected)

### 4. Use Cases
- (No explicit use-case markers detected)

### 5. Constraints / Limitations
- (No explicit constraints detected)

### 6. Patterns / Architectures
- (No explicit pattern markers detected)

## Step 3 - Deep Expansion (Observability Concepts)

### Core Services in This Topic

### Architect-Level Concept Expansion

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Metrics and dashboards | CloudWatch | Azure Monitor | Cloud Monitoring |
| Audit trail and config state | CloudTrail / Config | Activity Log / Resource Graph / Policy | Cloud Audit Logs / Asset Inventory / Config Validator |
| Tracing | X-Ray / OpenTelemetry on AWS | Application Insights / Azure Monitor OpenTelemetry | Cloud Trace / OpenTelemetry |
| Log analytics | CloudWatch Logs Insights / Athena / OpenSearch | Log Analytics / Data Explorer / Sentinel | Cloud Logging / BigQuery / Chronicle patterns |
| Event-driven automation | EventBridge | Event Grid / Logic Apps | Eventarc / Pub/Sub / Workflows |
| Network telemetry | VPC Flow Logs / Traffic Mirroring / synthetics | NSG Flow Logs / Connection Monitor | VPC Flow Logs / Packet Mirroring / Network Intelligence |

### Trade-offs and Decision Notes
- Observability Knowledge Base is strongest when design decisions are expressed as control objectives rather than vendor-only terminology.
- Cross-cloud portability improves when service choice, failure behavior, and governance model are documented together.
- Cloud-native implementations should still preserve comparable intent across AWS, Azure, and GCP.

## Phase-wise Architect-Level Organization

### Phase 1 - Foundations
- Observability quality depends on the relationship between telemetry generation, retention, and response workflows.
- Metrics, logs, traces, and audit data answer different questions and should not be conflated.

### Phase 2 - Core Services
- Implement monitoring, audit, and query workflows as complementary controls tied to operational decisions.
- Treat event routing and log analytics as part of investigation design, not optional reporting extras.

### Phase 3 - Advanced Patterns
- Use tracing and event-driven automation to shorten mean time to detect and mean time to remediate.
- Keep network telemetry distinct enough to preserve packet and path fidelity during outages.

### Phase 4 - System Design
- Reference architecture: telemetry producers, aggregation layers, analytics plane, and response targets.
- Scaling considerations: metric cardinality, log retention costs, cross-account aggregation, and query fan-out.
- Cost considerations: excessive high-cardinality metrics, duplicate log pipelines, and over-retention without use cases.
