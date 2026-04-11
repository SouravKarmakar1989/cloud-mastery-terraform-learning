# 04_Serverless_Compute.md

## Scope
- Topic: Lambda, API Gateway, Step Functions, AppSync, event-driven integrations, and serverless runtime design
- Files processed: 123 AWS primary transcript files (spanning DVA-C01, SAA-C03, SAP-C02, Security Specialty, SAM, Lambda, API Gateway, Step Functions, AppSync, Lambda@Edge, and solution architecture discussions), plus Azure serverless and app-platform transcript supplements and GCP serverless workflow references
- Extracted non-empty transcript lines: 5803 AWS primary lines, with later architect curation for Azure and GCP parity
- Processing mode: transcript-first, architect-curated, cross-cloud update
- Primary source ownership: AWS Compute Knowledge Base
- Cross-domain referrals: Azure Functions and app platform materials, GCP serverless product references, and event-driven workflow comparisons

## Real Material - Architect Learning Build (Compute: Serverless Compute)

### Foundations(Modules with Source Transcript Details)

#### Module: Serverless Compute Mental Model
- Use serverless as an execution and integration model, not as shorthand for simplicity.
- Study triggers, concurrency, state management, and failure handling before choosing the service combination.

##### Source Transcript Details
- Module focus: Serverless Compute Mental Model
- Primary transcript files:
- outputs/AWS/aws-certified-developer-associate-DVA-C01/21_AWS Serverless_ Lambda/265_Serverless Introduction.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/23_AWS Serverless_ API Gateway/338_API Gateway Overview.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/23_AWS Serverless_ API Gateway/353_API Gateway Authentication and Authorization.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/25_AWS Serverless_ SAM - Serverless Application Model/377_SAM Overview.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/19_Serverless Overviews from a Solution Architect Perspective/212_Serverless Introduction.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/19_Serverless Overviews from a Solution Architect Perspective/225_API Gateway Overview.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/19_Serverless Overviews from a Solution Architect Perspective/227_Step Functions.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/058_API Gateway.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/20_Serverless Solution Architecture Discussions/229_Mobile Application_ MyTodoList.txt

- Top concept clusters from transcript metadata:
- Serverless Execution Model
- Deployment Automation
- Compute Platform Design
- Operational Guardrails
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.


#### Module: Core Services and Building Blocks
- Core services should be understood through invocation path, integration style, concurrency posture, and state boundary.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/AWS/aws-certified-developer-associate-DVA-C01/21_AWS Serverless_ Lambda/266_Why AWS Lambda.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/21_AWS Serverless_ Lambda/271_Lambda & Application Load Balancer.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/21_AWS Serverless_ Lambda/279_Synchronous vs Asynchronous Invocations.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/23_AWS Serverless_ API Gateway/345_API Gateway Integration Types & Mappings.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/23_AWS Serverless_ API Gateway/349_API Gateway Caching.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/23_AWS Serverless_ API Gateway/350_API Gateway Usage Plans & API Keys.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/28_Other Serverless_ Step Functions & AppSync/397_Step Functions Overview.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/28_Other Serverless_ Step Functions & AppSync/403_Step Functions - Activity Tasks.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/28_Other Serverless_ Step Functions & AppSync/405_AppSync Overview.txt
- outputs/AWS/AWS Speciality/Security/09_Other Services/258_[DVA] Lambda Function URL.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/165_CloudFront Functions and Lambda@Edge.txt

- Top concept clusters from transcript metadata:
- Serverless Execution Model
- Deployment Automation
- Compute Operational Context
- Operational Guardrails
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

#### Module: Operational and Architecture Patterns
- Patterns matter when workflows span multiple services, when retries can duplicate side effects, or when cold starts and concurrency limits change user experience.
- Prefer trigger semantics and state-handling trade-offs over isolated feature memorization.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/19_Serverless Overviews from a Solution Architect Perspective/218_Lambda SnapStart.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/23_AWS Serverless_ API Gateway/343_API Gateway Canary Deployments.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/23_AWS Serverless_ API Gateway/351_API Gateway Monitoring, Logging and Tracing.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/28_Other Serverless_ Step Functions & AppSync/400_Step Functions - Error Handling.txt
- outputs/AWS/aws-certified-developer-associate-DVA-C01/28_Other Serverless_ Step Functions & AppSync/402_Step Functions - Wait For Task Token.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/054_AWS Lambda - Part 1.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/055_AWS Lambda - Part 2.txt
- outputs/AWS/aws-certified-devops-engineer-professional-DOP-C02/05_Domain 3_ Resilient Cloud Solutions/114_[SAA_DVA] API Gateway - Overview.txt
- outputs/AWS/aws-certified-devops-engineer-professional-DOP-C02/05_Domain 3_ Resilient Cloud Solutions/121_[DVA] API Gateway - Canary Deployments.txt

- Top concept clusters from transcript metadata:
- Serverless Execution Model
- Deployment Automation
- Operational Guardrails
- Compute Operational Context
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.


## Key Operational Decisions
- Decide whether work should be synchronous, asynchronous, or modeled explicitly in a workflow engine.
- Decide whether public exposure, auth, throttling, and caching belong at the API edge or should be hidden inside application code.
- Decide whether retries are safe by design or whether idempotency gaps will create duplicate side effects.
- Decide whether latency posture requires cold-start mitigation, reserved concurrency, or a different execution model entirely.
- Decide whether the system is really function-first, workflow-first, or a hybrid of functions, queues, containers, and APIs.


## Deep Expansion (Compute Concepts)

### Core Services

1. Function Runtime: AWS: AWS Lambda || Azure: Azure Functions || GCP: Cloud Functions and function-style Cloud Run patterns
2. Managed API Edge: AWS: API Gateway || Azure: API Management plus Functions patterns || GCP: API Gateway
3. Workflow Orchestration: AWS: Step Functions || Azure: Logic Apps and Durable Functions patterns || GCP: Workflows
4. Event Routing and Triggering: AWS: EventBridge, S3, DynamoDB Streams, Kinesis || Azure: Event Grid and storage triggers || GCP: Eventarc, Pub/Sub, and storage triggers
5. Graph and Resolver APIs: AWS: AppSync || Azure: managed API and event combinations || GCP: managed API and event-driven compositions
6. Serverless Deployment Abstraction: AWS: SAM || Azure: Bicep, ARM, and Functions tooling || GCP: Terraform-centered and service-native deployment flows
7. Edge Compute and Edge Logic: AWS: Lambda@Edge and CloudFront Functions || Azure: Front Door edge logic patterns || GCP: edge and CDN compute patterns
8. Monitoring and Operational Insight: AWS: Amazon CloudWatch, X-Ray style tracing, API logs || Azure: Azure Monitor and Functions diagnostics || GCP: Cloud Logging and Cloud Monitoring


### Architect-Level Concept Expansion

#### 1. Serverless Is An Execution Contract
- Serverless is defined by trigger, timeout, retry, identity, and scaling semantics.
- The absence of visible servers does not remove system design responsibility.
- It simply moves the design focus from machine lifecycle to event and integration lifecycle.

#### 2. Triggers Define The System Shape
- A system triggered by HTTP behaves differently from one triggered by storage events, queues, or schedule.
- Trigger type changes who waits, who retries, and where failure shows up first.
- Strong designs start with the trigger contract before they start with function code.

#### 3. Synchronous And Asynchronous Paths Have Different Failure Ownership
- A synchronous caller experiences latency and errors directly.
- An asynchronous path shifts error handling and retries into the platform and downstream workflow.
- Treating both invocation styles the same is one of the fastest ways to design unreliable serverless systems.

#### 4. The API Edge Is Not The Function
- API Gateway, API Management, and similar services own auth, throttling, mapping, stage control, and caching.
- The function should focus on business behavior rather than absorbing every edge concern.
- Entry policy and execution logic are separate architectural surfaces.

#### 5. Workflow State Should Be Explicit
- Step Functions, Logic Apps, Durable Functions, and Workflows exist because orchestration hidden inside code becomes unreadable and fragile.
- Explicit state machines make branching, waiting, compensation, and error paths observable.
- If multiple steps matter, modeling the workflow is usually better than nesting callbacks and retries inside one function.

#### 6. Retries Demand Idempotency
- Event-driven systems often retry automatically.
- If the function or downstream effect is not idempotent, duplicate work becomes a correctness problem rather than a logging nuisance.
- Good serverless design includes a duplicate-handling story from the beginning.

#### 7. Concurrency And Cold Start Are Architectural
- Reserved concurrency, concurrency limits, package size, runtime choice, and cold-start mitigation materially affect user experience.
- SnapStart and similar tuning are not cosmetic tweaks; they change latency posture and isolation behavior.
- Performance decisions in serverless belong in architecture reviews, not only in incident retrospectives.

#### 8. Identity Has Two Layers
- Caller identity at the API edge is different from service identity inside the function runtime.
- Many security mistakes happen when only one of those boundaries is designed clearly.
- Good architectures make both the request path and the service-to-service path explicit.

#### 9. Multi-Service Serverless Still Needs Deployment Discipline
- Real systems combine functions, APIs, event rules, roles, and workflows.
- Those pieces should move together through repeatable deployment code such as SAM and surrounding IaC.
- Small code units do not mean a simple deployment system.

#### 10. Serverless And Containers Can Complement Each Other
- A workflow can orchestrate Lambda, ECS tasks, Batch jobs, and external services in one application.
- The best design often uses functions for short event work and other runtimes for longer or more stateful steps.
- Serverless is strongest when it is part of a broader execution portfolio, not treated as a universal hammer.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Function runtime | Lambda | Azure Functions | Cloud Functions |
| Managed API edge | API Gateway | API Management plus Functions patterns | API Gateway |
| Workflow orchestration | Step Functions | Logic Apps / Durable Functions | Workflows |
| Event routing | EventBridge | Event Grid | Eventarc / Pub/Sub |
| Serverless deployment abstraction | SAM | Bicep / ARM / Functions tooling | Terraform-centered workflow |
| Public HTTP function shortcut | Function URL | direct HTTP function patterns | direct HTTP function patterns |
| Edge logic | Lambda@Edge / CloudFront Functions | Front Door edge logic patterns | edge and CDN compute patterns |
| Observability path | CloudWatch, API logs, tracing | Azure Monitor, Functions diagnostics | Cloud Logging, Cloud Monitoring |
| Auth at API boundary | API Gateway auth and usage controls | API Management auth patterns | API Gateway auth patterns |
| Mixed execution orchestration | Step Functions with Lambda, ECS, Batch | workflow tooling with functions and services | Workflows with functions and services |
