# Multi-Cloud GenAI Architect Learning Path

## At-a-Glance Mapping

| Content Domain | Phases | Tasks | Skills |
| -------------- | ------ | ----- | ------ |
| 🔵 Domain 1: Foundation Model Integration, Data Management, and Compliance | 🟢 Phase 1 to Phase 6 | 🔴 1.1, 1.2, 1.6, 1.4, 1.5, 1.3 | 🟡 1.1.1 to 1.1.3; 1.2.1 to 1.2.4; 1.6.1 to 1.6.6; 1.4.1 to 1.4.5; 1.5.1 to 1.5.6; 1.3.1 to 1.3.4 |
| 🔵 Domain 2: Implementation and Integration | 🟢 Phase 1 to Phase 5 | 🔴 2.1, 2.2, 2.3, 2.4, 2.5 | 🟡 2.1.1 to 2.1.7; 2.2.1 to 2.2.3; 2.3.1 to 2.3.5; 2.4.1 to 2.4.4; 2.5.1 to 2.5.6 |
| 🔵 Domain 3: AI Safety, Security, and Governance | 🟢 Phase 1 to Phase 2 | 🔴 3.1, 3.2, 3.3, 3.4 | 🟡 3.1.1 to 3.1.5; 3.2.1 to 3.2.3; 3.3.1 to 3.3.4; 3.4.1 to 3.4.3 |
| 🔵 Domain 4: Operational Efficiency and Optimization for GenAI Applications | 🟢 Phase 1 to Phase 2 | 🔴 4.1, 4.2, 4.3 | 🟡 4.1.1 to 4.1.4; 4.2.1 to 4.2.6; 4.3.1 to 4.3.6 |
| 🔵 Domain 5: Testing, Validation, and Troubleshooting | 🟢 Phase 1 | 🔴 5.1, 5.2 | 🟡 5.1.1 to 5.1.9; 5.2.1 to 5.2.5 |

---



## 🔵 Content Domain 1: Foundation Model Integration, Data Management, and Compliance

### 🟢 Phase 1 — AI Foundations

* 🔴 Task 1.1: Analyze requirements and design GenAI solutions

  * 🟡 Skill 1.1.1: Architecture Design

    Create comprehensive architectural designs that align with specific business needs and technical constraints (for example, by using appropriate FMs, integration patterns, deployment strategies).

    * AWS: Bedrock, Lambda, API Gateway, Well-Architected Tool
    * Azure: Azure OpenAI, Functions, API Management, Well-Architected
    * GCP: Vertex AI, Cloud Functions, API Gateway, Architecture Framework

  * 🟡 Skill 1.1.2: PoC Development

    Develop technical proof-of-concept implementations to validate feasibility, performance characteristics, and business value before proceeding to full-scale deployment (for example, by using Amazon Bedrock).

    * AWS: Bedrock, SageMaker
    * Azure: Azure OpenAI, Azure ML
    * GCP: Vertex AI Workbench

  * 🟡 Skill 1.1.3: Standardization

    Create standardized technical components to ensure consistent implementation across multiple deployment scenarios (for example, by using the AWS Well-Architected Framework, AWS WA Tool Generative AI Lens).

    * AWS: WA Tool, CloudFormation/CDK
    * Azure: Azure Policy, Bicep
    * GCP: Deployment Manager, Org Policies

---

### 🟢 Phase 2 — Foundation Models & Integration

* 🔴 Task 1.2: Select and configure FMs

  * 🟡 Skill 1.2.1: Model Selection

    Assess and choose FMs to ensure optimal alignment with specific business use cases and technical requirements (for example, by using performance benchmarks, capability analysis, limitation evaluation).

    * AWS: Bedrock (Claude, Titan, etc.)
    * Azure: Azure OpenAI models
    * GCP: Vertex AI Model Garden

  * 🟡 Skill 1.2.2: Dynamic Model Routing

    Create flexible architecture patterns to enable dynamic model selection and provider switching without requiring code modifications (for example, by using AWS Lambda, Amazon API Gateway, AWS AppConfig).

    * AWS: Lambda + API Gateway + AppConfig
    * Azure: Functions + APIM + App Config
    * GCP: Cloud Run + API Gateway
  
  * 🟡 Skill 1.2.3: Resilience

    Design resilient AI systems to ensure continuous operation during service disruptions (for example, by using AWS Step Functions circuit breaker patterns, Amazon Bedrock Cross-Region Inference for models that have limited regional availability, cross-Region model deployment, graceful degradation strategies).

    * AWS: Step Functions, multi-region Bedrock
    * Azure: Durable Functions, regional failover
    * GCP: Workflows, multi-region endpoints
  
  * 🟡 Skill 1.2.4: Model Lifecycle

    Implement FM customization deployment and lifecycle management (for example, by using Amazon SageMaker AI to deploy domain-specific fine-tuned models, parameter-efficient adaptation techniques such as low-rank adaptation [LoRA] and adapters for model deployment, SageMaker Model Registry for versioning and to deploy customized models, automated deployment pipelines to update models, rollback strategies for failed deployments, lifecycle management to retire and replace models).

    * AWS: SageMaker, Model Registry
    * Azure: Azure ML
    * GCP: Vertex AI Pipelines

---

### 🟢 Phase 3 — Prompt Engineering

* 🔴 Task 1.6: Prompt Engineering & Governance

  * 🟡 Skill 1.6.1: Prompt Frameworks

    Create effective model instruction frameworks to control FM behavior and outputs (for example, by using Amazon Bedrock Prompt Management to enforce role definitions, Amazon Bedrock Guardrails to enforce responsible AI guidelines, template configurations to format responses).

    * AWS: Bedrock Prompt Management, Guardrails
    * Azure: Prompt Flow, Content Safety
    * GCP: Vertex Prompt Design, Safety
  
  * 🟡 Skill 1.6.2: Context Systems

    Build interactive AI systems to maintain context and improve user interactions with FMs (for example, by using Step Functions for clarification workflows, Amazon Comprehend for intent recognition, DynamoDB for conversation history storage).

    * AWS: DynamoDB, Step Functions
    * Azure: Cosmos DB, Durable Functions
    * GCP: Firestore, Workflows
  
  * 🟡 Skill 1.6.3: Governance

    Implement comprehensive prompt management and governance systems to ensure consistency and oversight of FM operations (for example, by using Amazon Bedrock Prompt Management to create parameterized templates and approval workflows, Amazon S3 to store template repositories, AWS CloudTrail to track usage, Amazon CloudWatch Logs to log access).

    * AWS: CloudTrail, S3
    * Azure: Monitor, Storage
    * GCP: Audit Logs, Cloud Storage
  
  * 🟡 Skill 1.6.4: QA

    Develop quality assurance systems to ensure prompt effectiveness and reliability for FMs (for example, by using Lambda functions to verify expected output, Step Functions to test edge cases, CloudWatch to test prompt regression).

    * AWS: Lambda + CloudWatch
    * Azure: Functions + App Insights
    * GCP: Cloud Functions + Monitoring
  
  * 🟡 Skill 1.6.5: Optimization

    Enhance FM performance to refine prompts iteratively and improve response quality beyond basic prompting techniques (for example, by using structured input components, output format specifications, chain-of-thought instruction patterns, feedback loops).

    * AWS: Bedrock tuning
    * Azure: Prompt Flow tuning
    * GCP: Vertex tuning
  
  * 🟡 Skill 1.6.6: Prompt Workflows

    Design complex prompt systems to handle sophisticated tasks with FMs (for example, by using Amazon Bedrock Prompt Flows for sequential prompt chains, conditional branching based on model responses, reusable prompt components, integrated pre-processing and post-processing steps).

    * AWS: Bedrock Prompt Flows
    * Azure: Prompt Flow pipelines
    * GCP: Workflows + Vertex

---

### 🟢 Phase 4 — Embeddings & Vector Search

#### 🟣 Module 4.1 — Embeddings & Vector DB

* 🔴 Task 1.4: Vector Store Solutions

  * 🟡 Skill 1.4.1: Vector Architecture

    Create advanced vector database architectures specifically for FM augmentation to enable efficient semantic retrieval beyond traditional search capabilities (for example, by using Amazon Bedrock Knowledge Bases for hierarchical organization, Amazon OpenSearch Service with the Neural plugin for Amazon Bedrock integration for topic-based segmentation, Amazon RDS with Amazon S3 document repositories, Amazon DynamoDB with vector databases for metadata and embeddings).

    * AWS: OpenSearch, Bedrock KB
    * Azure: Azure AI Search
    * GCP: Vertex Vector Search
  * 🟡 Skill 1.4.2: Metadata

    Develop comprehensive metadata frameworks to improve search precision and context awareness for FM interactions (for example, by using S3 object metadata for document timestamps, custom attributes for authorship information, tagging systems for domain classification).

    * AWS: S3 metadata, DynamoDB
    * Azure: Blob metadata, Cosmos DB
    * GCP: Cloud Storage metadata, Firestore
  * 🟡 Skill 1.4.3: Performance

    Implement high-performance vector database architectures to optimize semantic search performance at scale for FM retrieval (for example, by using OpenSearch sharding strategies, multi-index approaches for specialized domains, hierarchical indexing techniques).

    * AWS: OpenSearch sharding
    * Azure: AI Search scaling
    * GCP: Vertex indexing
  * 🟡 Skill 1.4.4: Integration

    Use AWS services to create integration components to connect with resources (for example, document management systems, knowledge bases, internal wikis for comprehensive data integration in GenAI applications).

    * AWS: Lambda connectors
    * Azure: Logic Apps
    * GCP: Dataflow
  * 🟡 Skill 1.4.5: Maintenance

    Design and deploy data maintenance systems to ensure that vector stores contain current and accurate information for FM augmentation (for example, by using incremental update mechanisms, real-time change detection systems, automated synchronization workflows, scheduled refresh pipelines).

    * AWS: Glue, EventBridge
    * Azure: Data Factory
    * GCP: Dataflow

#### 🟣 Module 4.2 — Retrieval Core

* 🔴 Task 1.5: Retrieval Mechanisms

  * 🟡 Skill 1.5.1: Chunking

    Develop effective document segmentation approaches to optimize retrieval performance for FM context augmentation (for example, by using Amazon Bedrock chunking capabilities, Lambda functions to implement fixed-size chunking, custom processing for hierarchical chunking based on content structure).

    * AWS: Lambda, Bedrock
    * Azure: Functions
    * GCP: Cloud Functions
  
  * 🟡 Skill 1.5.2: Embeddings

    Select and configure optimal embedding solutions to create efficient vector representations for semantic search (for example, by using Amazon Titan embeddings based on dimensionality and domain fit, by evaluating performance characteristics of Amazon Bedrock embedding models, by using Lambda functions to batch generate embeddings).

    * AWS: Titan Embeddings
    * Azure: OpenAI Embeddings
    * GCP: Vertex Embeddings
  
  * 🟡 Skill 1.5.3: Vector Search

    Deploy and configure vector search solutions to enable semantic search capabilities for FM augmentation (for example, by using OpenSearch Service with vector search capabilities, Amazon Aurora with the pgvector extension, Amazon Bedrock Knowledge Bases with managed vector store functionality).

    * AWS: OpenSearch, Aurora pgvector
    * Azure: AI Search
    * GCP: Vertex Vector Search
  
  * 🟡 Skill 1.5.4: Hybrid Search

    Create advanced search architectures to improve the relevance and accuracy of retrieved information for FM context (for example, by using OpenSearch for semantic search, hybrid search that combines keywords and vectors, Amazon Bedrock reranker models).

    * AWS: OpenSearch hybrid + reranker
    * Azure: AI Search hybrid
    * GCP: Vertex hybrid
  
  * 🟡 Skill 1.5.5: Query Handling

    Develop sophisticated query handling systems to improve the retrieval effectiveness and result quality for FM augmentation (for example, by using Amazon Bedrock for query expansion, Lambda functions for query decomposition, Step Functions for query transformation).

    * AWS: Step Functions, Lambda
    * Azure: Durable Functions
    * GCP: Workflows
  
  * 🟡 Skill 1.5.6: Retrieval APIs

    Create consistent access mechanisms to enable seamless integration with FMs (for example, by using function calling interfaces for vector search, Model Context Protocol [MCP] clients for vector queries, standardized API patterns for retrieval augmentation).

    * AWS: API Gateway
    * Azure: APIM
    * GCP: API Gateway

---

### 🟢 Phase 5 — RAG Systems

* (Extends Task 1.5 fully across architecture)

* AWS: Bedrock KB + OpenSearch + Lambda
* Azure: AI Search + OpenAI + Functions
* GCP: Vertex RAG + Cloud Run

---

### 🟢 Phase 6 — Data Layer

* 🔴 Task 1.3: Data Processing

  * 🟡 Skill 1.3.1: Validation

    Create comprehensive data validation workflows to ensure data meets quality standards for FM consumption (for example, by using AWS Glue Data Quality, SageMaker Data Wrangler, custom Lambda functions, Amazon CloudWatch metrics).

    * AWS: Glue Data Quality
    * Azure: Data Factory + Purview
    * GCP: Dataplex
  * 🟡 Skill 1.3.2: Processing

    Create data processing workflows to handle complex data types including text, image, audio, and tabular data with specialized processing requirements for FM consumption (for example, by using Amazon Bedrock multimodal models, SageMaker Processing, AWS Transcribe, advanced multimodal pipeline architectures).

    * AWS: SageMaker Processing, Transcribe
    * Azure: Azure ML, Speech
    * GCP: Vertex + Speech API
  * 🟡 Skill 1.3.3: Formatting

    Format input data for FM inference according to model-specific requirements (for example, by using JSON formatting for Amazon Bedrock API requests, structured data preparation for SageMaker AI endpoints, conversation formatting for dialog-based applications).

    * AWS: Lambda JSON prep
    * Azure: Functions
    * GCP: Cloud Functions
  * 🟡 Skill 1.3.4: Enhancement

    Enhance input data quality to improve FM response quality and consistency (for example, by using Amazon Bedrock to reformat text, Amazon Comprehend to extract entities, Lambda functions to normalize data).

    * AWS: Comprehend
    * Azure: Language AI
    * GCP: NLP API

---


## 🔵 Content Domain 2: Implementation and Integration

### 🟢 Phase 1 — Agentic AI Systems

* 🔴 Task 2.1: Agent Systems

  * 🟡 Skill 2.1.1: Agents

    Develop intelligent autonomous systems with appropriate memory and state management capabilities (for example, by using Strands Agents and AWS Agent Squad for multi-agent systems, MCP for agent-tool interactions).
    * AWS: Bedrock AgentCore
    * Azure: Foundry Agents
    * GCP: Vertex Agent Builder
  
  * 🟡 Skill 2.1.2: Reasoning

    Create advanced problem-solving systems to give FMs the ability to break down and solve complex problems by following structured reasoning steps (for example, by using Step Functions to implement ReAct patterns and chain-of-thought reasoning approaches).
    * AWS: Step Functions
    * Azure: Durable Functions
    * GCP: Workflows

  * 🟡 Skill 2.1.3: Safeguards

    Develop safeguarded AI workflows to ensure controlled FM behavior (for example, by using Step Functions to implement stopping conditions, Lambda functions to implement timeout mechanisms, IAM policies to enforce resource boundaries, circuit breakers to mitigate failures).
    * AWS: IAM + Lambda
    * Azure: RBAC + Functions
    * GCP: IAM + Cloud Functions
  * 🟡 Skill 2.1.4: Multi-model

    Create sophisticated model coordination systems to optimize performance across multiple capabilities (for example, by using specialized FMs to perform complex tasks, custom aggregation logic for model ensembles, model selection frameworks).

    * AWS: Bedrock routing
    * Azure: OpenAI routing
    * GCP: Vertex routing

  * 🟡 Skill 2.1.5: Human-in-loop

    Develop collaborative AI systems to enhance FM capabilities with human expertise (for example, by using Step Functions to orchestrate review and approval processes, API Gateway to implement feedback collection mechanisms, human augmentation patterns).

    * AWS: Step Functions
    * Azure: Logic Apps
    * GCP: Workflows

  * 🟡 Skill 2.1.6: Tool integration

    Implement intelligent tool integrations to extend FM capabilities and to ensure reliable tool operations (for example, by using the Strands API to implement custom behaviors, standardized function definitions, Lambda functions to implement error handling and parameter validation).

    * AWS: Lambda tools
    * Azure: Functions
    * GCP: Cloud Run

  * 🟡 Skill 2.1.7: Extensions

    Develop model extension frameworks to enhance FM capabilities (for example, by using Lambda functions to implement stateless MCP servers that provide lightweight tool access, Amazon ECS to implement MCP servers that provide complex tools, MCP client libraries to ensure consistent access patterns).

    * AWS: ECS + Lambda
    * Azure: Container Apps
    * GCP: Cloud Run

---

### 🟢 Phase 2 — Compute

* 🔴 Task 2.2: Implement model deployment strategies

  * 🟡 Skill 2.2.1: Deployment by Need and Performance

    Deploy FMs based on specific application needs and performance requirements (for example, by using Lambda functions for on-demand invocation, Amazon Bedrock provisioned throughput configurations, SageMaker AI endpoints to implement hybrid solutions).

  * 🟡 Skill 2.2.2: LLM-Specific Deployment Patterns

    Deploy FM solutions by addressing unique challenges of large language models (LLMs) that differ from traditional ML deployments (for example, by implementing container-based deployment patterns that are optimized for memory requirements, GPU utilization, and token processing capacity, by following specialized model loading strategies).

  * 🟡 Skill 2.2.3: Performance and Resource Balance

    Develop optimized FM deployment approaches to balance performance and resource requirements for GenAI workloads (for example, by selecting appropriate models, by using smaller pre-trained models for specific tasks, by using API-based model cascading to perform routine queries).

---

### 🟢 Phase 3 — Event Driven Architecture

* 🔴 Task 2.3: Design and implement enterprise integration architectures

  * 🟡 Skill 2.3.1: Enterprise Connectivity

    Create enterprise connectivity solutions to seamlessly incorporate FM capabilities into existing enterprise environments (for example, by using API-based integrations with legacy systems, event-driven architectures to implement loose coupling, data synchronization patterns).

  * 🟡 Skill 2.3.2: AI Capability Integration

    Develop integrated AI capabilities to enhance existing applications with GenAI functionality (for example, by using API Gateway to implement microservice integrations, Lambda functions for webhook handlers, Amazon EventBridge to implement event-driven integrations).

  * 🟡 Skill 2.3.3: Secure Access Frameworks

    Create secure access frameworks to ensure appropriate security controls (for example, by using identity federation between FM services and enterprise systems, role-based access control for model and data access, least privilege API access to FMs).

  * 🟡 Skill 2.3.4: Cross-Environment AI Solutions

    Develop cross-environment AI solutions to ensure data compliance across jurisdictions while enabling FM access (for example, by using AWS Outposts for on-premises data integration, AWS Wavelength to perform edge deployments, secure routing between cloud and on-premises resources).

  * 🟡 Skill 2.3.5: CI/CD and GenAI Gateways

    Implement CI/CD pipelines and GenAI gateway architectures to implement secure and compliant consumption patterns in enterprise environments (for example, by using AWS CodePipeline, AWS CodeBuild, automated testing frameworks for continuous deployment and testing of GenAI components with security scans and rollback support, centralized abstraction layers, observability and control mechanisms).

---

### 🟢 Phase 4 — API Design

* 🔴 Task 2.4: Implement FM API integrations

  * 🟡 Skill 2.4.1: Flexible Model Interaction

    Create flexible model interaction systems (for example, by using Amazon Bedrock APIs to manage synchronous requests from various compute environments, language-specific AWS SDKs and Amazon SQS for asynchronous processing, API Gateway to provide custom API clients with request validation).

  * 🟡 Skill 2.4.2: Real-Time AI Interaction

    Develop real-time AI interaction systems to provide immediate feedback from FM (for example, by using Amazon Bedrock streaming APIs for incremental response delivery, WebSockets or server-sent events to generate text in real time, API Gateway to implement chunked transfer encoding).

  * 🟡 Skill 2.4.3: Resilient FM Operations

    Create resilient FM systems to ensure reliable operations (for example, by using the AWS SDK for exponential backoff, API Gateway to manage rate limiting, fallback mechanisms for graceful degradation, AWS X-Ray to provide observability across service boundaries).

  * 🟡 Skill 2.4.4: Intelligent Model Routing

    Develop intelligent model routing systems to optimize model selection (for example, by using application code to implement static routing configurations, Step Functions for dynamic content-based routing to specialized FMs, intelligent model routing based on metrics, API Gateway with request transformations for routing logic).

---

### 🟢 Phase 5 — App Integration Patterns

* 🔴 Task 2.5: Implement application integration patterns and development tools

  * 🟡 Skill 2.5.1: FM API Interface Design

    Create FM API interfaces to address the specific requirements of GenAI workloads (for example, by using API Gateway to handle streaming responses, token limit management, retry strategies to handle model timeouts).

  * 🟡 Skill 2.5.2: Accessible AI Interfaces

    Develop accessible AI interfaces to accelerate adoption and integration of FMs (for example, by using AWS Amplify to develop declarative UI components, OpenAPI specifications for API-first development approaches, Amazon Bedrock Prompt Flows for no-code workflow builders).

  * 🟡 Skill 2.5.3: Business System Enhancements

    Create business system enhancements (for example, by using Lambda functions to implement customer relationship management [CRM] enhancements, Step Functions to orchestrate document processing systems, Amazon Q Business data sources to provide internal knowledge tools, Amazon Bedrock Data Automation to manage automated data processing workflows).

  * 🟡 Skill 2.5.4: Developer Productivity

    Enhance developer productivity to accelerate development workflows for GenAI applications (for example, by using Amazon Q Developer to generate and refactor code, code suggestions for API assistance, AI component testing, performance optimization).

  * 🟡 Skill 2.5.5: Advanced GenAI Applications

    Develop advanced GenAI applications to implement sophisticated AI capabilities (for example, by using Strands Agents and AWS Agent Squad for AWS native orchestration, Step Functions to orchestrate agent design patterns, Amazon Bedrock to manage prompt chaining patterns).

  * 🟡 Skill 2.5.6: Troubleshooting Efficiency

    Improve troubleshooting efficiency for FM applications (for example, by using CloudWatch Logs Insights to analyze prompts and responses, X-Ray to trace FM API calls, Amazon Q Developer to implement GenAI-specific error pattern recognition).

---

## 🔵 Content Domain 3: AI Safety, Security, and Governance

### 🟢 Phase 1 — Responsible AI and Safety

* 🔴 Task 3.1: Implement input and output safety controls

  * 🟡 Skill 3.1.1: Harmful Input Protection

    Develop comprehensive content safety systems to protect against harmful user inputs to FMs (for example, by using Amazon Bedrock guardrails to filter content, Step Functions and Lambda functions to implement custom moderation workflows, real-time validation mechanisms).

  * 🟡 Skill 3.1.2: Harmful Output Prevention

    Create content safety frameworks to prevent harmful outputs (for example, by using Amazon Bedrock guardrails to filter responses, specialized FM evaluations for content moderation and toxicity detection, text-to-SQL transformations to ensure deterministic results).

  * 🟡 Skill 3.1.3: Hallucination Reduction

    Develop accuracy verification systems to reduce hallucinations in FM responses (for example, by using Amazon Bedrock Knowledge Base to ground responses and perform fact-checking, confidence scoring and semantic similarity search for verification, JSON Schema to enforce structured outputs).

  * 🟡 Skill 3.1.4: Defense in Depth

    Create defense-in-depth safety systems to provide comprehensive protection against FM misuse (for example, by using Amazon Comprehend to develop pre-processing filters, Amazon Bedrock to implement model-based guardrails, Lambda functions to perform post-processing validation, API Gateway to implement API response filtering).

  * 🟡 Skill 3.1.5: Adversarial Threat Detection

    Implement advanced threat detection to protect against adversarial inputs and security vulnerabilities (for example, by using prompt injection and jailbreak detection mechanisms, input sanitization and content filters, safety classifiers, automated adversarial testing workflows).

---

### 🟢 Phase 2 — Security and Governance

#### 🟣 Module 2.1 — Data Security and Privacy

* 🔴 Task 3.2: Implement data security and privacy controls

  * 🟡 Skill 3.2.1: Protected AI Environments

    Develop protected AI environments to ensure comprehensive security for FM deployments (for example, by using VPC endpoints to isolate networks, IAM policies to enforce secure data access patterns, AWS Lake Formation to provide granular data access, CloudWatch to monitor data access).

  * 🟡 Skill 3.2.2: Privacy-Preserving Interactions

    Develop privacy-preserving systems to protect sensitive information during FM interactions (for example, by using Amazon Comprehend and Amazon Macie to detect personally identifiable information [PII], Amazon Bedrock native data privacy features, Amazon Bedrock guardrails to filter outputs, Amazon S3 Lifecycle configurations to implement data retention policies).

  * 🟡 Skill 3.2.3: Privacy-Focused Utility

    Create privacy-focused AI systems to protect user privacy while maintaining FM utility and effectiveness (for example, by using data masking techniques, Amazon Comprehend PII detection, anonymization strategies for sensitive information, Amazon Bedrock guardrails).

#### 🟣 Module 2.2 — Governance and Compliance

* 🔴 Task 3.3: Implement AI governance and compliance mechanisms

  * 🟡 Skill 3.3.1: Regulatory Compliance Frameworks

    Develop compliance frameworks to ensure regulatory compliance for FM deployments (for example, by using SageMaker AI to develop programmatic model cards, AWS Glue to automatically track data lineage, metadata tagging for systematic data source attribution, CloudWatch Logs to collect comprehensive decision logs).

  * 🟡 Skill 3.3.2: Data Source Traceability

    Implement data source tracking to maintain traceability in GenAI applications (for example, by using AWS Glue Data Catalog to register data sources, metadata tagging for source attribution in FM-generated content, CloudTrail for audit logging).

  * 🟡 Skill 3.3.3: Organizational Governance Systems

    Create organizational governance systems to ensure consistent oversight of FM implementations (for example, by using comprehensive frameworks that align with organizational policies, regulatory requirements, and responsible AI principles).

  * 🟡 Skill 3.3.4: Continuous Governance Controls

    Implement continuous monitoring and advanced governance controls to support safety audits and regulatory readiness (for example, by using automated detection for misuse, drift, and policy violations, bias drift monitoring, automated alerting and remediation workflows, token-level redaction, response logging, AI output policy filters).

* 🔴 Task 3.4: Implement responsible AI principles

  * 🟡 Skill 3.4.1: Transparent AI Outputs

    Develop transparent AI systems in FM outputs (for example, by using reasoning displays to provide user-facing explanations, CloudWatch to collect confidence metrics and quantify uncertainty, evidence presentation for source attribution, Amazon Bedrock agent tracing to provide reasoning traces).

  * 🟡 Skill 3.4.2: Fairness Evaluation

    Apply fairness evaluations to ensure unbiased FM outputs (for example, by using pre-defined fairness metrics in CloudWatch, Amazon Bedrock Prompt Management and Amazon Bedrock Prompt Flows to perform systematic A/B testing, Amazon Bedrock with LLM-as-a-judge solutions to perform automated model evaluations).

  * 🟡 Skill 3.4.3: Policy-Compliant AI

    Develop policy-compliant AI systems to ensure adherence to responsible AI practices (for example, by using Amazon Bedrock guardrails based on policy requirements, model cards to document FM limitations, Lambda functions to perform automated compliance checks).

---

## 🔵 Content Domain 4: Operational Efficiency and Optimization for GenAI Applications

### 🟢 Phase 1 — Cost and Performance

* 🔴 Task 4.1: Implement cost optimization and resource efficiency strategies

  * 🟡 Skill 4.1.1: Token Efficiency

    Develop token efficiency systems to reduce FM costs while maintaining effectiveness (for example, by using token estimation and tracking, context window optimization, response size controls, prompt compression, context pruning, response limiting).

  * 🟡 Skill 4.1.2: Cost-Effective Model Selection

    Create cost-effective model selection frameworks (for example, by using cost-capability tradeoff evaluation, tiered FM usage based on query complexity, inference cost balancing against response quality, price-to-performance ratio measurement, efficient inference patterns).

  * 🟡 Skill 4.1.3: High-Performance Resource Utilization

    Develop high-performance FM systems to maximize resource utilization and throughput for GenAI workloads (for example, by using batching strategies, capacity planning, utilization monitoring, auto-scaling configurations, provisioned throughput optimization).

  * 🟡 Skill 4.1.4: Intelligent Caching

    Create intelligent caching systems to reduce costs and improve response times by avoiding unnecessary FM invocations (for example, by using semantic caching, result fingerprinting, edge caching, deterministic request hashing, prompt caching).

* 🔴 Task 4.2: Optimize application performance

  * 🟡 Skill 4.2.1: Latency-Cost Tradeoffs

    Create responsive AI systems to address latency-cost tradeoffs and improve the user experience with FMs (for example, by using pre-computation to perform predictable queries, latency-optimized Amazon Bedrock models for time-sensitive applications, parallel requests for complex workflows, response streaming, performance benchmarking).

  * 🟡 Skill 4.2.2: Retrieval Performance Optimization

    Enhance retrieval performance to improve the relevance and speed of retrieved information for FM context augmentation (for example, by using index optimization, query preprocessing, hybrid search implementation with custom scoring).

  * 🟡 Skill 4.2.3: Throughput Optimization

    Implement FM throughput optimization to address the specific throughput challenges of GenAI workloads (for example, by using token processing optimization, batch inference strategies, concurrent model invocation management).

  * 🟡 Skill 4.2.4: FM Performance Tuning

    Enhance FM performance to achieve optimal results for specific GenAI use cases (for example, by using model-specific parameter configurations, A/B testing to evaluate improvements, appropriate temperature and top-k/top-p selection based on requirements).

  * 🟡 Skill 4.2.5: Efficient Resource Allocation

    Create efficient resource allocation systems specifically for FM workloads (for example, by using capacity planning for token processing requirements, utilization monitoring for prompt and completion patterns, auto-scaling configurations that are optimized for GenAI traffic patterns).

  * 🟡 Skill 4.2.6: Workflow Performance Optimization

    Optimize FM system performance for GenAI workflows (for example, by using API call profiling for prompt-completion patterns, vector database query optimization for retrieval augmentation, latency reduction techniques specific to LLM inference, efficient service communication patterns).

---

### 🟢 Phase 2 — Observability

* 🔴 Task 4.3: Implement monitoring systems for GenAI applications

  * 🟡 Skill 4.3.1: Holistic Observability

    Create holistic observability systems to provide complete visibility into FM application performance (for example, by using operational metrics, performance tracing, FM interaction tracing, business impact metrics with custom dashboards).

  * 🟡 Skill 4.3.2: Proactive GenAI Monitoring

    Implement comprehensive GenAI monitoring systems to proactively identify issues and evaluate key performance indicators specific to FM implementations (for example, by using CloudWatch to track token usage; prompt effectiveness; hallucination rates; and response quality, anomaly detection for token burst patterns and response drift, Amazon Bedrock Model Invocation Logs to perform detailed request and response analysis, performance benchmarks, cost anomaly detection).

  * 🟡 Skill 4.3.3: Actionable Observability Insights

    Develop integrated observability solutions to provide actionable insights for FM applications (for example, by using operational metric dashboards, business impact visualizations, compliance monitoring, forensic traceability and audit logging, user interaction tracking, model behavior pattern tracking).

  * 🟡 Skill 4.3.4: Tool Performance Frameworks

    Create tool performance frameworks to ensure optimal tool operation and utilization for FMs (for example, by using call pattern tracking, performance metric collection, tool calling observability and multi-agent coordination tracking, usage baselines for anomaly detection).

  * 🟡 Skill 4.3.5: Vector Store Operations Management

    Create vector store operational management systems to ensure optimal vector store operation and reliability for FM augmentation (for example, by using performance monitoring for vector databases, automated index optimization routines, data quality validation processes).

  * 🟡 Skill 4.3.6: FM-Specific Troubleshooting

    Develop FM-specific troubleshooting frameworks to identify unique GenAI failure modes that are not present in traditional ML systems (for example, by using golden datasets to detect hallucinations, output diffing techniques to conduct response consistency analysis, reasoning path tracing to identify logical errors, specialized observability pipelines).

---

## 🔵 Content Domain 5: Testing, Validation, and Troubleshooting

### 🟢 Phase 1 — Evaluation and Troubleshooting

#### 🟣 Module 1.1 — Evaluation Systems

* 🔴 Task 5.1: Implement evaluation systems for GenAI

  * 🟡 Skill 5.1.1: Quality Assessment Frameworks

    Develop comprehensive assessment frameworks to evaluate the quality and effectiveness of FM outputs beyond traditional ML evaluation approaches (for example, by using metrics for relevance, factual accuracy, consistency, and fluency).

  * 🟡 Skill 5.1.2: Systematic Model Evaluation

    Create systematic model evaluation systems to identify optimal configurations (for example, by using Amazon Bedrock Model Evaluations, A/B testing and canary testing of FMs, multi-model evaluation, cost-performance analysis to measure token efficiency, latency-to-quality ratios, and business outcomes).

  * 🟡 Skill 5.1.3: User-Centered Evaluation

    Develop user-centered evaluation mechanisms to continuously improve FM performance based on user experience (for example, by using feedback interfaces, rating systems for model outputs, annotation workflows to assess response quality).

  * 🟡 Skill 5.1.4: Quality Assurance Consistency

    Create systematic quality assurance processes to maintain consistent performance standards for FMs (for example, by using continuous evaluation workflows, regression testing for model outputs, automated quality gates for deployments).

  * 🟡 Skill 5.1.5: Multi-Perspective Assessment

    Develop comprehensive assessment systems to ensure thorough evaluation from multiple perspectives for FM outputs (for example, by using RAG evaluation, automated quality assessment with LLM-as-a-Judge techniques, human feedback collection interfaces).

  * 🟡 Skill 5.1.6: Retrieval Quality Testing

    Implement retrieval quality testing to evaluate and optimize information retrieval components for FM augmentation (for example, by using relevance scoring, context matching verification, retrieval latency measurements).

  * 🟡 Skill 5.1.7: Agent Performance Evaluation

    Develop agent performance frameworks to ensure that agents perform tasks correctly and efficiently (for example, by using task completion rate measurements, tool usage effectiveness evaluations, Amazon Bedrock Agent evaluations, reasoning quality assessment in multi-step workflows).

  * 🟡 Skill 5.1.8: Evaluation Reporting

    Create comprehensive reporting systems to communicate performance metrics and insights effectively to stakeholders for FM implementations (for example, by using visualization tools, automated reporting mechanisms, model comparison visualizations).

  * 🟡 Skill 5.1.9: Deployment Validation

    Create deployment validation systems to maintain reliability during FM updates (for example, by using synthetic user workflows, AI-specific output validation for hallucination rates and semantic drift, automated quality checks to ensure response consistency).

#### 🟣 Module 1.2 — Troubleshooting

* 🔴 Task 5.2: Troubleshoot GenAI applications

  * 🟡 Skill 5.2.1: Content Handling Diagnostics

    Resolve content handling issues to ensure that necessary information is processed completely in FM interactions (for example, by using context window overflow diagnostics, dynamic chunking strategies, prompt design optimization, truncation-related error analysis).

  * 🟡 Skill 5.2.2: FM Integration Troubleshooting

    Diagnose and resolve FM integration issues to identify and fix API integration problems specific to GenAI services (for example, by using error logging, request validation, response analysis).

  * 🟡 Skill 5.2.3: Prompt Engineering Troubleshooting

    Troubleshoot prompt engineering problems to improve FM response quality and consistency beyond basic prompt adjustments (for example, by using prompt testing frameworks, version comparison, systematic refinement).

  * 🟡 Skill 5.2.4: Retrieval Troubleshooting

    Troubleshoot retrieval system issues to identify and resolve problems that affect information retrieval effectiveness for FM augmentation (for example, by using model response relevance analysis, embedding quality diagnostics, drift monitoring, vectorization issue resolution, chunking and preprocessing remediation, vector search performance optimization).

  * 🟡 Skill 5.2.5: Prompt Maintenance Troubleshooting

    Troubleshoot prompt maintenance issues to continuously improve the performance of FM interactions (for example, by using template testing and CloudWatch Logs to diagnose prompt confusion, X-Ray to implement prompt observability pipelines, schema validation to detect format inconsistencies, systematic prompt refinement workflows).

---


