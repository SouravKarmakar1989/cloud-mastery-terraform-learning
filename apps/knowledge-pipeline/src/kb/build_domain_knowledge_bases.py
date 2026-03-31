from __future__ import annotations

import json
import re
from collections import Counter, defaultdict
from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
OUTPUTS_DIR = ROOT / "outputs"
AI_SOURCE_ROOT = "aws ai"

EXCLUDED_SOURCE_ROOTS = {
    "AWS Networking Knowledge Base",
    "AWS Security Knowledge Base",
    "Model Context Protocol",
    "the-complete-agentic-ai-engineering-course",
}


@dataclass(frozen=True)
class TopicConfig:
    id: str
    title: str
    scope: str
    keywords: tuple[str, ...]


@dataclass(frozen=True)
class DomainConfig:
    key: str
    folder_name: str
    title: str
    description: str
    ownership_patterns: tuple[tuple[str, int], ...]
    topics: tuple[TopicConfig, ...]
    concept_patterns: dict[str, tuple[str, ...]]
    feature_hints: tuple[str, ...]
    hidden_signals: tuple[tuple[str, tuple[str, ...]], ...]
    cross_cloud_rows: tuple[tuple[str, str, str, str], ...]
    phase_foundations: tuple[str, ...]
    phase_core: tuple[str, ...]
    phase_advanced: tuple[str, ...]
    phase_system_design: tuple[str, ...]


DOMAIN_CONFIGS: tuple[DomainConfig, ...] = (
    DomainConfig(
        key="compute",
        folder_name="AWS Compute Knowledge Base",
        title="AWS Compute Knowledge Base",
        description="Compute platforms, scaling, containers, serverless runtime, and deployment control planes.",
        ownership_patterns=(
            (r"compute & load balancing", 12),
            (r"ec2 fundamentals", 10),
            (r"high availability and scalability", 10),
            (r"containers on aws", 12),
            (r"ecs, ecr & fargate", 12),
            (r"aws serverless_ lambda", 12),
            (r"aws serverless_ api gateway", 10),
            (r"serverless overviews", 10),
            (r"serverless solution architecture discussions", 9),
            (r"cloud development kit", 9),
            (r"aws cloudformation", 9),
            (r"elastic beanstalk", 9),
            (r"\bec2\b", 8),
            (r"\blambda\b", 8),
            (r"\becs\b", 8),
            (r"\bfargate\b", 8),
            (r"\beks\b", 7),
            (r"\becr\b", 7),
            (r"\bapi gateway\b", 7),
            (r"\bstep functions\b", 6),
            (r"\bsam\b", 6),
            (r"auto scaling", 7),
            (r"load balancer", 7),
            (r"\balb\b", 6),
            (r"\bnlb\b", 6),
            (r"\bgwlb\b", 6),
            (r"\bhpc\b", 5),
            (r"\bbatch\b", 5),
            (r"app runner", 5),
            (r"instance scheduler", 5),
        ),
        topics=(
            TopicConfig("01", "EC2_Foundations", "EC2 foundations, instances, metadata, access patterns, and runtime basics", ("ec2", "instance", "metadata", "ssh", "user data", "ami", "image builder")),
            TopicConfig("02", "Load_Balancing_Auto_Scaling", "Elastic load balancing and auto scaling for availability and elasticity", ("load balancer", "alb", "nlb", "gwlb", "auto scaling", "asg", "sticky", "ssl", "connection draining")),
            TopicConfig("03", "Containers_Orchestration", "Container platforms, registries, orchestration, and runtime placement", ("ecs", "ecr", "eks", "fargate", "container", "task", "cluster", "copilot", "app runner")),
            TopicConfig("04", "Serverless_Compute", "Lambda, API Gateway, Step Functions, AppSync, and event-driven runtime design", ("lambda", "api gateway", "step functions", "serverless", "function url", "appsync", "snapstart", "concurrency")),
            TopicConfig("05", "Infrastructure_As_Code_Deployment", "CloudFormation, SAM, CDK, and platform deployment automation", ("cloudformation", "stack", "sam", "cdk", "deployment", "service role", "stacksets")),
            TopicConfig("06", "Specialized_Compute_Operations", "Batch, HPC, Outposts, Beanstalk, and specialized compute operations", ("beanstalk", "batch", "hpc", "outposts", "instance scheduler", "platform", "deployment modes")),
        ),
        concept_patterns={
            "Compute Platform Design": ("ec2", "instance", "ami", "runtime", "compute"),
            "Elasticity and Availability": ("auto scaling", "load balancer", "scaling", "availability", "multi-az"),
            "Container Runtime Operations": ("ecs", "eks", "fargate", "ecr", "container", "task"),
            "Serverless Execution Model": ("lambda", "serverless", "api gateway", "step functions", "event source"),
            "Deployment Automation": ("cloudformation", "cdk", "sam", "deployment", "stack"),
            "Operational Guardrails": ("limit", "quota", "best practice", "role", "security group"),
        },
        feature_hints=("ec2", "auto scaling", "load balancer", "ecs", "ecr", "eks", "lambda", "api gateway", "cloudformation", "cdk", "sam", "beanstalk", "batch", "hpc"),
        hidden_signals=(
            ("Operational guidance / best-practice signal", ("best practice", "should", "must", "always", "never")),
            ("Constraint or limitation signal", ("cannot", "can't", "only", "limit", "quota", "required")),
            ("Runtime and execution-path signal", ("runtime", "invoke", "execution", "task", "container", "instance")),
            ("Elasticity and resilience signal", ("auto scaling", "load balancer", "multi-az", "failover", "availability")),
            ("Platform automation signal", ("cloudformation", "cdk", "sam", "deployment", "stack")),
        ),
        cross_cloud_rows=(
            ("Virtual machine compute", "EC2", "Azure Virtual Machines", "Compute Engine"),
            ("Managed load balancing", "ELB", "Azure Load Balancer / Application Gateway", "Cloud Load Balancing"),
            ("Container orchestration", "ECS/EKS/Fargate", "AKS / Container Apps", "GKE / Cloud Run"),
            ("Serverless functions", "Lambda", "Azure Functions", "Cloud Functions / Cloud Run"),
            ("Infrastructure as code", "CloudFormation / CDK / SAM", "ARM / Bicep / Azure DevOps patterns", "Deployment Manager / Terraform-centered workflows"),
            ("Specialized compute", "Batch / HPC / Outposts", "Batch / HPC / Azure Stack", "Batch / HPC / Anthos edge patterns"),
        ),
        phase_foundations=(
            "Workload placement starts with the runtime contract: VM, container, serverless, or managed platform.",
            "Availability and elasticity are architecture properties, not post-deployment add-ons.",
        ),
        phase_core=(
            "Implement scaling, traffic distribution, and deployment controls before optimizing for convenience.",
            "Treat execution roles, runtime networking, and image provenance as baseline compute controls.",
        ),
        phase_advanced=(
            "Use event-driven and platform-specific deployment patterns to reduce operational drag at scale.",
            "Model specialized compute separately when batch, HPC, or platform abstractions change failure behavior.",
        ),
        phase_system_design=(
            "Reference architecture: ingress and workload tiers, deployment control plane, and runtime observability loop.",
            "Scaling considerations: noisy neighbors, placement constraints, rollout safety, and regional boundaries.",
            "Cost considerations: idle VM waste, overprovisioned scaling floors, and mismatched platform abstractions.",
        ),
    ),
    DomainConfig(
        key="storage",
        folder_name="AWS Storage Knowledge Base",
        title="AWS Storage Knowledge Base",
        description="Object, block, file, archival, hybrid transfer, and storage cost-performance patterns.",
        ownership_patterns=(
            (r"amazon-s3-deep-dive", 14),
            (r"06_ec2 instance storage", 11),
            (r"07_ec2 instance storage", 11),
            (r"amazon s3 introduction", 10),
            (r"advanced amazon s3", 10),
            (r"amazon s3 security", 9),
            (r"aws storage extras", 10),
            (r"06_storage", 12),
            (r"azure master class v3 - part 5 - storage", 10),
            (r"\bs3\b", 8),
            (r"\bebs\b", 8),
            (r"\befs\b", 8),
            (r"\bfsx\b", 8),
            (r"glacier", 8),
            (r"datasync", 7),
            (r"storage gateway", 7),
            (r"transfer family", 7),
            (r"storage classes", 8),
            (r"object lock", 7),
            (r"vault lock", 7),
            (r"access points", 7),
            (r"replication", 6),
            (r"lifecycle", 6),
        ),
        topics=(
            TopicConfig("01", "S3_Foundations", "S3 foundations, buckets, objects, policies, hosting, and class selection", ("s3 overview", "bucket", "object", "storage classes", "website", "versioning", "bucket policy")),
            TopicConfig("02", "S3_Advanced_Data_Management", "Lifecycle, replication, eventing, access points, metadata, and advanced S3 operations", ("lifecycle", "replication", "event notifications", "access points", "object lambda", "metadata", "storage lens", "batch operations")),
            TopicConfig("03", "Block_File_Hybrid_Storage", "EBS, EFS, FSx, and workload-aligned block/file storage decisions", ("ebs", "efs", "fsx", "snapshot", "volume", "elastic volumes", "file system")),
            TopicConfig("04", "Data_Protection_Archival", "Encryption, immutability, archival, retention, and recovery-oriented storage controls", ("glacier", "object lock", "vault lock", "encryption", "mfa delete", "presigned", "access logs", "default encryption")),
            TopicConfig("05", "Storage_Transfer_Operations", "DataSync, Storage Gateway, Transfer Family, and hybrid transfer operations", ("datasync", "storage gateway", "transfer family", "snowball", "snowmobile", "snow family", "gateway endpoint")),
            TopicConfig("06", "Storage_Cost_Performance", "S3 pricing, lifecycle economics, throughput patterns, and storage optimization", ("pricing", "cost", "performance", "storage lens", "requester pays", "analytics", "throughput", "s3 performance")),
        ),
        concept_patterns={
            "Object Storage Patterns": ("s3", "bucket", "object", "prefix", "website"),
            "Block and File Storage Design": ("ebs", "efs", "fsx", "volume", "file system"),
            "Data Protection and Immutability": ("encryption", "object lock", "vault lock", "mfa delete", "replication"),
            "Hybrid Transfer and Mobility": ("datasync", "storage gateway", "transfer family", "snowball", "snow family"),
            "Cost and Performance Optimization": ("pricing", "performance", "storage classes", "analytics", "lens"),
            "Lifecycle Operations": ("lifecycle", "archival", "retention", "restore", "snapshot"),
        },
        feature_hints=("s3", "storage classes", "lifecycle", "replication", "access points", "ebs", "efs", "fsx", "glacier", "datasync", "storage gateway", "transfer family", "pricing", "performance"),
        hidden_signals=(
            ("Operational guidance / best-practice signal", ("best practice", "should", "must", "always", "never")),
            ("Constraint or limitation signal", ("cannot", "can't", "only", "limit", "required")),
            ("Durability and retention signal", ("durability", "retention", "lifecycle", "replication", "archive", "restore")),
            ("Access-path and data-plane signal", ("bucket", "policy", "access point", "prefix", "endpoint")),
            ("Storage economics signal", ("pricing", "cost", "storage class", "performance", "throughput")),
        ),
        cross_cloud_rows=(
            ("Object storage", "S3", "Blob Storage", "Cloud Storage"),
            ("Managed block storage", "EBS", "Managed Disks", "Persistent Disk"),
            ("Managed elastic file storage", "EFS / FSx", "Azure Files / NetApp Files", "Filestore / NetApp Volumes"),
            ("Archival and immutability", "Glacier / Object Lock", "Archive tier / Immutable Blob", "Archive storage / retention policy"),
            ("Hybrid transfer", "DataSync / Storage Gateway / Transfer Family", "Data Box / File Sync / SFTP patterns", "Transfer Appliance / Storage Transfer Service"),
            ("Storage analytics and optimization", "Storage Lens / lifecycle analytics", "Azure Monitor / lifecycle management", "Storage Insights / lifecycle management"),
        ),
        phase_foundations=(
            "Choose storage by access pattern, consistency needs, latency expectations, and retention horizon.",
            "Durability, immutability, and restore paths define storage architecture quality.",
        ),
        phase_core=(
            "Implement object, block, and file controls with explicit cost and lifecycle intent.",
            "Separate workload-facing storage design from archival, mobility, and governance workflows.",
        ),
        phase_advanced=(
            "Use hybrid mobility and access abstraction carefully so transfer paths do not become hidden failure domains.",
            "Optimize for storage economics only after restore, integrity, and policy requirements are safe.",
        ),
        phase_system_design=(
            "Reference architecture: hot path storage, protection layer, archival tier, and mobility pipeline.",
            "Scaling considerations: object cardinality, metadata pressure, throughput ceilings, and transfer windows.",
            "Cost considerations: retrieval fees, replication sprawl, idle snapshots, and class-selection mistakes.",
        ),
    ),
    DomainConfig(
        key="db",
        folder_name="AWS Database Knowledge Base",
        title="AWS Database Knowledge Base",
        description="Relational, NoSQL, cache, and specialized database platform decisions and operations.",
        ownership_patterns=(
            (r"awsdatabase", 14),
            (r"08_databases", 12),
            (r"21_databases in aws", 12),
            (r"rds \+ aurora \+ elasticache", 10),
            (r"aws serverless_ dynamodb", 10),
            (r"\brds\b", 8),
            (r"aurora", 8),
            (r"dynamodb", 9),
            (r"elasticache", 8),
            (r"memorydb", 7),
            (r"documentdb", 7),
            (r"neptune", 7),
            (r"keyspaces", 7),
            (r"timestream", 7),
            (r"choosing the right database", 10),
            (r"rds proxy", 6),
        ),
        topics=(
            TopicConfig("01", "Relational_Databases", "RDS, Aurora, proxies, replication, and relational workload design", ("rds", "aurora", "proxy", "read replica", "multi az", "sql", "relational")),
            TopicConfig("02", "DynamoDB_Key_Value", "DynamoDB modeling, throughput, indexing, transactions, and serverless access", ("dynamodb", "dax", "gsi", "lsi", "streams", "ttl", "transactions", "partiql")),
            TopicConfig("03", "Cache_Acceleration", "ElastiCache, MemoryDB, and low-latency caching strategies", ("elasticache", "redis", "memcached", "memorydb", "cache", "session state")),
            TopicConfig("04", "Specialized_Databases", "Document, graph, time-series, and Cassandra-compatible database services", ("documentdb", "neptune", "keyspaces", "timestream", "cassandra", "graph", "document")),
            TopicConfig("05", "Database_Selection_Operations", "Database choice, backups, security posture, and operational trade-offs", ("choosing the right database", "security", "backup", "restore", "operations", "selection", "performance")),
        ),
        concept_patterns={
            "Relational Consistency and HA": ("rds", "aurora", "multi az", "read replica", "failover"),
            "NoSQL Access Patterns": ("dynamodb", "partition key", "gsi", "lsi", "throughput"),
            "Caching and Latency Reduction": ("elasticache", "memorydb", "cache", "redis", "memcached"),
            "Specialized Data Models": ("documentdb", "neptune", "keyspaces", "timestream", "graph", "document"),
            "Database Operations and Resilience": ("backup", "restore", "security", "proxy", "transactions"),
            "Selection and Trade-off Analysis": ("choose", "selection", "trade-off", "use case", "workload"),
        },
        feature_hints=("rds", "aurora", "proxy", "dynamodb", "gsi", "lsi", "dax", "elasticache", "memorydb", "documentdb", "neptune", "keyspaces", "timestream"),
        hidden_signals=(
            ("Operational guidance / best-practice signal", ("best practice", "should", "must", "always", "never")),
            ("Constraint or limitation signal", ("cannot", "can't", "only", "limit", "required")),
            ("Consistency and failover signal", ("multi az", "replica", "failover", "consistency", "transaction")),
            ("Access-pattern design signal", ("partition", "index", "query", "cache", "latency")),
            ("Operational database guardrail signal", ("backup", "restore", "security", "proxy", "throughput")),
        ),
        cross_cloud_rows=(
            ("Managed relational database", "RDS / Aurora", "Azure SQL / PostgreSQL / MySQL", "Cloud SQL / AlloyDB"),
            ("Key-value NoSQL", "DynamoDB", "Cosmos DB / Table API", "Firestore / Bigtable"),
            ("Managed cache", "ElastiCache / MemoryDB", "Azure Cache for Redis", "Memorystore"),
            ("Document database", "DocumentDB", "Cosmos DB / MongoDB-compatible services", "MongoDB Atlas / Firestore document patterns"),
            ("Graph and time-series", "Neptune / Timestream", "Cosmos graph / Data Explorer time-series patterns", "Neo4j / Bigtable / time-series patterns"),
            ("Cassandra-compatible managed service", "Keyspaces", "Managed Cassandra / Cosmos Cassandra API", "Managed Cassandra on GCP ecosystems"),
        ),
        phase_foundations=(
            "Database architecture follows workload shape: relational, key-value, cache, document, graph, or time-series.",
            "Durability, consistency, and scaling trade-offs must be explicit at design time.",
        ),
        phase_core=(
            "Implement replication, indexing, and latency controls based on real access patterns, not vendor labels.",
            "Operational safety depends on backup, restore, security, and connection management discipline.",
        ),
        phase_advanced=(
            "Use caching and specialized engines deliberately to isolate hot paths from persistence concerns.",
            "Selection quality improves when trade-offs are documented as failure behavior, not feature checklists.",
        ),
        phase_system_design=(
            "Reference architecture: transactional core, access-optimized accelerators, and operational recovery workflows.",
            "Scaling considerations: partition balance, replica lag, connection storms, and hot key risk.",
            "Cost considerations: always-on relational sizing, cache duplication, and overfitted specialized engines.",
        ),
    ),
    DomainConfig(
        key="data_engineering",
        folder_name="AWS Data Engineering Knowledge Base",
        title="AWS Data Engineering Knowledge Base",
        description="Data pipelines, streaming, Spark, lakehouse, analytics, and data consumption platforms.",
        ownership_patterns=(
            (r"data engineering", 14),
            (r"22_data & analytics", 13),
            (r"apache-spark", 12),
            (r"databricks", 12),
            (r"spark-streaming", 12),
            (r"\bkinesis\b", 8),
            (r"\bfirehose\b", 8),
            (r"\bglue\b", 9),
            (r"\bemr\b", 9),
            (r"\bathena\b", 9),
            (r"\bmsk\b", 9),
            (r"kafka", 9),
            (r"\bflink\b", 9),
            (r"lake formation", 9),
            (r"quicksight", 7),
            (r"redshift", 8),
            (r"opensearch", 6),
            (r"spark", 10),
            (r"delta", 8),
            (r"unity catalog", 8),
        ),
        topics=(
            TopicConfig("01", "Data_Platform_Foundations", "Data platform mental models, ingestion stages, and analytics architecture selection", ("data engineering", "analytics", "big data", "pipeline", "ingestion", "architecture", "lake formation")),
            TopicConfig("02", "Spark_Core_Processing", "Spark execution, transformations, optimization, and distributed processing basics", ("spark", "dataframe", "dataset", "rdd", "partition", "optimization", "shuffle")),
            TopicConfig("03", "Streaming_Messaging", "Kinesis, Kafka, MSK, Firehose, and Flink streaming design", ("streaming", "kinesis", "firehose", "kafka", "msk", "flink", "window", "watermark")),
            TopicConfig("04", "Lakehouse_ETL_Governance", "Databricks, Delta Lake, Unity Catalog, Glue, and ETL governance patterns", ("databricks", "delta", "unity catalog", "glue", "etl", "dlt", "catalog")),
            TopicConfig("05", "AWS_Analytics_Services", "EMR, Athena, Redshift, OpenSearch, and managed analytics services", ("emr", "athena", "redshift", "opensearch", "lake formation", "managed service")),
            TopicConfig("06", "BI_Query_Consumption", "Query consumption, BI, dashboards, and analyst-facing data access", ("quicksight", "athena", "dashboard", "bi", "consumption", "query", "visualization")),
        ),
        concept_patterns={
            "Pipeline and Ingestion Design": ("pipeline", "ingestion", "stream", "batch", "analytics"),
            "Distributed Processing": ("spark", "partition", "shuffle", "job", "cluster"),
            "Streaming State and Time": ("streaming", "window", "watermark", "kafka", "kinesis", "flink"),
            "Lakehouse Governance": ("delta", "catalog", "governance", "lake", "glue", "unity"),
            "Analytical Storage and Query": ("athena", "redshift", "emr", "query", "warehouse"),
            "Consumption and BI": ("quicksight", "dashboard", "visualization", "bi", "report"),
        },
        feature_hints=("pipeline", "spark", "streaming", "kinesis", "kafka", "flink", "glue", "emr", "athena", "redshift", "quicksight", "databricks", "delta", "unity catalog"),
        hidden_signals=(
            ("Operational guidance / best-practice signal", ("best practice", "should", "must", "always", "never")),
            ("Constraint or limitation signal", ("cannot", "can't", "only", "limit", "required")),
            ("Dataflow and pipeline signal", ("pipeline", "ingestion", "batch", "stream", "transform")),
            ("Distributed state and scaling signal", ("partition", "window", "watermark", "cluster", "throughput")),
            ("Governance and lineage signal", ("catalog", "governance", "lineage", "schema", "quality")),
        ),
        cross_cloud_rows=(
            ("Distributed processing", "EMR / Spark / Databricks on AWS", "HDInsight / Azure Databricks / Synapse Spark", "Dataproc"),
            ("Streaming ingestion", "Kinesis / Firehose / MSK / Flink", "Event Hubs / Stream Analytics / Kafka ecosystems", "Pub/Sub / Dataflow / Managed Kafka ecosystems"),
            ("Serverless query", "Athena", "Synapse serverless SQL", "BigQuery"),
            ("Managed warehouse", "Redshift", "Synapse Dedicated SQL", "BigQuery / BigLake warehouse patterns"),
            ("Lake governance", "Lake Formation / Glue Catalog", "Purview / OneLake / Catalog patterns", "Dataplex / Data Catalog"),
            ("BI and dashboards", "QuickSight", "Power BI", "Looker"),
        ),
        phase_foundations=(
            "Data engineering starts with movement, shape, and time semantics before tool choice.",
            "Platform quality depends on repeatable ingestion, transformation, and governed access paths.",
        ),
        phase_core=(
            "Implement processing engines, streaming paths, and analytical stores as complementary layers, not interchangeable services.",
            "Treat schema, lineage, and data quality as architectural controls rather than documentation tasks.",
        ),
        phase_advanced=(
            "Use lakehouse and streaming state patterns carefully because throughput and correctness often trade against each other.",
            "Keep analyst-facing consumption separate from raw and operational data paths.",
        ),
        phase_system_design=(
            "Reference architecture: ingestion plane, processing plane, governed storage, and consumption interfaces.",
            "Scaling considerations: skew, backpressure, late data, catalog drift, and warehouse concurrency.",
            "Cost considerations: cluster idling, scan-heavy query patterns, redundant copies, and uncontrolled BI sprawl.",
        ),
    ),
    DomainConfig(
        key="ai",
        folder_name="AWS AI Knowledge Base",
        title="AWS AI Knowledge Base",
        description="Managed AI services, SageMaker, generative AI platforms, MLOps, and AI governance patterns.",
        ownership_patterns=(
            (r"^aws ai/", 15),
            (r"23_machine learning", 12),
            (r"16_machine learning", 12),
            (r"machine learning", 10),
            (r"generative ai", 12),
            (r"bedrock", 12),
            (r"sagemaker", 11),
            (r"rekognition", 9),
            (r"textract", 9),
            (r"comprehend", 9),
            (r"polly", 9),
            (r"transcribe", 9),
            (r"translate", 9),
            (r"lex", 9),
            (r"personalize", 9),
            (r"kendra", 9),
            (r"amazon q", 8),
            (r"prompt", 7),
        ),
        topics=(
            TopicConfig("01", "AI_Service_Foundations", "Managed AI service landscape, common patterns, and service selection fundamentals", ("ai", "machine learning", "rekognition", "textract", "comprehend", "polly", "translate", "lex", "personalize", "kendra")),
            TopicConfig("02", "SageMaker_ML_Lifecycle", "SageMaker data prep, training, tuning, deployment, and managed ML workflow design", ("sagemaker", "training", "endpoint", "feature store", "labeling", "pipeline", "notebook", "inference")),
            TopicConfig("03", "Generative_AI_Bedrock", "Bedrock, foundation models, prompt patterns, retrieval, and generative AI application design", ("bedrock", "generative", "foundation model", "prompt", "rag", "embedding", "model")),
            TopicConfig("04", "MLOps_Deployment_Runtime", "Model deployment, inference operations, monitoring, and MLOps runtime concerns", ("mlops", "deployment", "inference", "monitoring", "model registry", "drift", "runtime")),
            TopicConfig("05", "AI_Governance_Security", "Responsible AI, governance, access control, evaluation, and platform safety patterns", ("governance", "security", "responsible", "evaluation", "guardrail", "policy", "compliance")),
        ),
        concept_patterns={
            "Managed AI Service Selection": ("rekognition", "textract", "comprehend", "polly", "translate", "lex", "personalize", "kendra"),
            "Model Development Lifecycle": ("training", "dataset", "feature", "sagemaker", "label", "experiment"),
            "Inference and Serving": ("endpoint", "inference", "real-time", "batch transform", "deployment"),
            "Generative AI Architecture": ("bedrock", "foundation model", "prompt", "embedding", "retrieval", "agent"),
            "MLOps and Operationalization": ("mlops", "registry", "pipeline", "monitoring", "drift"),
            "AI Governance and Safety": ("guardrail", "evaluation", "responsible", "security", "compliance"),
        },
        feature_hints=("sagemaker", "bedrock", "prompt", "embedding", "inference", "model registry", "drift", "rekognition", "textract", "comprehend", "polly", "translate", "lex", "kendra"),
        hidden_signals=(
            ("Operational guidance / best-practice signal", ("best practice", "should", "must", "always", "never")),
            ("Constraint or limitation signal", ("cannot", "can't", "only", "limit", "required")),
            ("Model lifecycle signal", ("training", "dataset", "feature", "tuning", "inference")),
            ("Generative architecture signal", ("bedrock", "foundation model", "prompt", "embedding", "retrieval")),
            ("Governance and safety signal", ("guardrail", "evaluation", "responsible", "security", "policy")),
        ),
        cross_cloud_rows=(
            ("Managed AI building blocks", "Rekognition / Textract / Comprehend / Polly / Translate / Lex", "Azure AI services", "Vertex AI APIs / Document AI / Vision / Speech / Translation"),
            ("Managed ML platform", "SageMaker", "Azure Machine Learning", "Vertex AI"),
            ("Generative AI platform", "Bedrock", "Azure OpenAI + AI Studio", "Vertex AI Generative AI"),
            ("Feature, training, and inference lifecycle", "SageMaker pipelines and endpoints", "Azure ML pipelines and endpoints", "Vertex pipelines and endpoints"),
            ("AI governance and safety", "Bedrock guardrails / IAM / service controls", "Azure AI content safety / policy / Entra", "Vertex AI safety settings / IAM / policy"),
            ("Enterprise AI search and retrieval", "Kendra / Bedrock retrieval patterns", "Azure AI Search", "Vertex AI Search / Discovery Engine"),
        ),
        phase_foundations=(
            "AI architecture begins with the problem shape: prebuilt intelligence, supervised ML, or generative retrieval-based systems.",
            "Model quality, governance, and serving paths must be designed together.",
        ),
        phase_core=(
            "Implement data preparation, training, inference, and application integration as one lifecycle rather than isolated service calls.",
            "Use managed AI services when the operational burden of bespoke ML is not justified.",
        ),
        phase_advanced=(
            "Treat generative AI retrieval, model choice, and guardrails as first-class architecture trade-offs.",
            "MLOps maturity depends on repeatable promotion, evaluation, and runtime monitoring loops.",
        ),
        phase_system_design=(
            "Reference architecture: data and feature plane, model lifecycle plane, inference plane, and governance controls.",
            "Scaling considerations: training cost, endpoint concurrency, model drift, and retrieval latency.",
            "Cost considerations: persistent endpoints, large-context inference, duplicated experimentation, and unmanaged feature stores.",
        ),
    ),
    DomainConfig(
        key="observability_stack",
        folder_name="AWS Observability Knowledge Base",
        title="AWS Observability Knowledge Base",
        description="Metrics, logs, traces, audit trails, automation, and investigation workflows across AWS estates.",
        ownership_patterns=(
            (r"monitoring & audit", 14),
            (r"11_monitoring", 13),
            (r"cloudwatch", 9),
            (r"cloudtrail", 9),
            (r"\bconfig\b", 8),
            (r"x-ray", 9),
            (r"eventbridge", 8),
            (r"vpc flow logs", 8),
            (r"traffic mirroring", 8),
            (r"opentelemetry", 8),
            (r"athena", 5),
            (r"opensearch", 5),
            (r"logs", 6),
            (r"metrics", 6),
            (r"alarms", 6),
            (r"synthetics", 6),
        ),
        topics=(
            TopicConfig("01", "Metrics_Logs_Alarms", "CloudWatch metrics, logs, dashboards, alarms, agents, and operational alerting", ("cloudwatch", "metrics", "logs", "alarms", "dashboard", "agent", "insights")),
            TopicConfig("02", "Audit_Config_Compliance", "CloudTrail, Config, audit trails, state recording, and compliance visibility", ("cloudtrail", "config", "audit", "recorder", "trail", "conformance", "compliance")),
            TopicConfig("03", "Tracing_Event_Driven_Automation", "X-Ray, EventBridge, and automation loops triggered from telemetry", ("x-ray", "eventbridge", "trace", "sampling", "instrumentation", "automation", "events")),
            TopicConfig("04", "Log_Analytics_Investigation", "Athena, OpenSearch, query workflows, and investigation patterns over telemetry", ("athena", "opensearch", "query", "investigation", "live tail", "filter", "analytics")),
            TopicConfig("05", "Network_Observability_Telemetry", "VPC Flow Logs, traffic mirroring, synthetic probes, and network visibility", ("vpc flow logs", "traffic mirroring", "network", "synthetics", "reachability", "telemetry")),
        ),
        concept_patterns={
            "Operational Monitoring": ("cloudwatch", "metrics", "alarms", "dashboard", "monitor"),
            "Audit Logging": ("cloudtrail", "audit", "trail", "api call", "config"),
            "Distributed Tracing and Events": ("x-ray", "trace", "eventbridge", "sampling", "instrumentation"),
            "Log Analytics and Investigation": ("athena", "opensearch", "query", "filter", "live tail", "insights"),
            "Network Telemetry": ("vpc flow logs", "traffic mirroring", "synthetics", "network", "reachability"),
            "Retention and Forensics": ("retention", "historical", "forensic", "archive", "event data store"),
        },
        feature_hints=("cloudwatch", "cloudtrail", "config", "x-ray", "eventbridge", "athena", "opensearch", "flow logs", "traffic mirroring", "alarms", "metrics", "logs"),
        hidden_signals=(
            ("Operational guidance / best-practice signal", ("best practice", "should", "must", "always", "never")),
            ("Constraint or limitation signal", ("cannot", "can't", "only", "limit", "required")),
            ("Telemetry and visibility signal", ("metrics", "logs", "trace", "visibility", "insights")),
            ("Investigation and forensic signal", ("investigate", "forensic", "query", "audit", "trail")),
            ("Event-driven remediation signal", ("eventbridge", "automation", "alarm", "trigger", "remediation")),
        ),
        cross_cloud_rows=(
            ("Metrics and dashboards", "CloudWatch", "Azure Monitor", "Cloud Monitoring"),
            ("Audit trail and config state", "CloudTrail / Config", "Activity Log / Resource Graph / Policy", "Cloud Audit Logs / Asset Inventory / Config Validator"),
            ("Tracing", "X-Ray / OpenTelemetry on AWS", "Application Insights / Azure Monitor OpenTelemetry", "Cloud Trace / OpenTelemetry"),
            ("Log analytics", "CloudWatch Logs Insights / Athena / OpenSearch", "Log Analytics / Data Explorer / Sentinel", "Cloud Logging / BigQuery / Chronicle patterns"),
            ("Event-driven automation", "EventBridge", "Event Grid / Logic Apps", "Eventarc / Pub/Sub / Workflows"),
            ("Network telemetry", "VPC Flow Logs / Traffic Mirroring / synthetics", "NSG Flow Logs / Connection Monitor", "VPC Flow Logs / Packet Mirroring / Network Intelligence"),
        ),
        phase_foundations=(
            "Observability quality depends on the relationship between telemetry generation, retention, and response workflows.",
            "Metrics, logs, traces, and audit data answer different questions and should not be conflated.",
        ),
        phase_core=(
            "Implement monitoring, audit, and query workflows as complementary controls tied to operational decisions.",
            "Treat event routing and log analytics as part of investigation design, not optional reporting extras.",
        ),
        phase_advanced=(
            "Use tracing and event-driven automation to shorten mean time to detect and mean time to remediate.",
            "Keep network telemetry distinct enough to preserve packet and path fidelity during outages.",
        ),
        phase_system_design=(
            "Reference architecture: telemetry producers, aggregation layers, analytics plane, and response targets.",
            "Scaling considerations: metric cardinality, log retention costs, cross-account aggregation, and query fan-out.",
            "Cost considerations: excessive high-cardinality metrics, duplicate log pipelines, and over-retention without use cases.",
        ),
    ),
    DomainConfig(
        key="cost_control",
        folder_name="AWS Cost Control Knowledge Base",
        title="AWS Cost Control Knowledge Base",
        description="Billing visibility, budgeting, commitment models, optimization, and financial governance in AWS.",
        ownership_patterns=(
            (r"13_cost control", 15),
            (r"aws budget setup", 10),
            (r"cost explorer", 12),
            (r"cost anomaly", 12),
            (r"trusted advisor", 9),
            (r"pricing", 8),
            (r"billing", 8),
            (r"budget", 9),
            (r"savings plan", 9),
            (r"reserved", 8),
            (r"spot", 7),
            (r"compute optimizer", 8),
            (r"cost allocation", 8),
        ),
        topics=(
            TopicConfig("01", "Billing_Budgets_Visibility", "Billing data, budgets, explorer workflows, anomaly detection, and spend visibility", ("billing", "budget", "cost explorer", "anomaly", "visibility", "report", "dashboard")),
            TopicConfig("02", "Pricing_Commitments_Optimization", "Pricing models, commitments, savings plans, reserved capacity, and purchase strategy", ("pricing", "savings plan", "reserved", "spot", "commitment", "purchase", "discount")),
            TopicConfig("03", "Advisor_Governance_Chargeback", "Trusted Advisor, cost allocation, governance, quotas, and accountability patterns", ("trusted advisor", "cost allocation", "tag", "governance", "chargeback", "showback", "quota")),
        ),
        concept_patterns={
            "Spend Visibility": ("billing", "budget", "cost explorer", "anomaly", "visibility"),
            "Commitment Strategy": ("savings plan", "reserved", "spot", "pricing", "discount"),
            "Optimization Governance": ("trusted advisor", "allocation", "tag", "governance", "chargeback"),
            "Consumption Accountability": ("showback", "chargeback", "owner", "tag", "allocation"),
            "Service Cost Trade-offs": ("cost", "pricing", "optimize", "waste", "rightsizing"),
        },
        feature_hints=("budget", "billing", "cost explorer", "anomaly", "pricing", "savings plan", "reserved", "spot", "trusted advisor", "allocation"),
        hidden_signals=(
            ("Operational guidance / best-practice signal", ("best practice", "should", "must", "always", "never")),
            ("Constraint or limitation signal", ("cannot", "can't", "only", "limit", "required")),
            ("Financial governance signal", ("budget", "billing", "governance", "allocation", "chargeback")),
            ("Commitment and optimization signal", ("savings plan", "reserved", "spot", "discount", "optimize")),
            ("Waste-detection signal", ("anomaly", "advisor", "waste", "idle", "unused")),
        ),
        cross_cloud_rows=(
            ("Budgeting and cost visibility", "Budgets / Cost Explorer / Cost Anomaly Detection", "Cost Management + Budgets", "Cloud Billing + Budgets + Recommender"),
            ("Commitment discounts", "Savings Plans / Reserved / Spot", "Reservations / Savings plan patterns / Spot VMs", "Committed use discounts / reservations / Spot VMs"),
            ("Governance and accountability", "Cost allocation tags / Trusted Advisor", "Management groups / tags / advisor tooling", "Labels / billing export / Recommender governance"),
            ("Optimization recommendations", "Trusted Advisor / Compute Optimizer", "Advisor / Cost recommendations", "Recommender"),
        ),
        phase_foundations=(
            "Cost control begins with visibility, ownership, and purchase-model awareness.",
            "Financial architecture quality depends on tying spend to workload intent and accountability.",
        ),
        phase_core=(
            "Implement billing telemetry and budget controls before relying on optimization recommendations.",
            "Use commitment models only when workload steadiness and ownership are understood.",
        ),
        phase_advanced=(
            "Treat chargeback and allocation tagging as governance systems, not bookkeeping details.",
            "Optimization quality depends on removing idle design choices, not just accepting discounts.",
        ),
        phase_system_design=(
            "Reference architecture: billing visibility layer, optimization controls, and owner accountability loops.",
            "Scaling considerations: multi-account rollups, inconsistent tags, and decentralized procurement behavior.",
            "Cost considerations: overcommitting steady-state discounts, missing anomaly baselines, and invisible shared costs.",
        ),
    ),
    DomainConfig(
        key="disaster_recovery",
        folder_name="AWS Disaster Recovery Knowledge Base",
        title="AWS Disaster Recovery Knowledge Base",
        description="RTO/RPO strategy, backup, recovery, resilience, and disaster recovery execution patterns.",
        ownership_patterns=(
            (r"disaster recovery", 15),
            (r"elastic disaster recovery", 14),
            (r"\bdrs\b", 12),
            (r"aws backup", 12),
            (r"pilot light", 10),
            (r"warm standby", 10),
            (r"active-active", 9),
            (r"restore", 8),
            (r"failover", 8),
            (r"backup", 8),
            (r"resilience", 7),
            (r"cross-region", 7),
        ),
        topics=(
            TopicConfig("01", "DR_Strategies_Core", "RTO, RPO, failover models, pilot light, warm standby, and DR strategy framing", ("disaster recovery", "rto", "rpo", "pilot light", "warm standby", "active active", "failover")),
            TopicConfig("02", "Backup_Restore_Recovery", "AWS Backup, restore workflows, retention, and recoverability operations", ("aws backup", "backup", "restore", "vault", "retention", "recovery point")),
            TopicConfig("03", "Elastic_DR_Resilience", "Elastic Disaster Recovery, cross-region resilience, and environment recovery execution", ("elastic disaster recovery", "drs", "cross-region", "recovery", "replication", "cutover")),
            TopicConfig("04", "Service_Level_DR_Patterns", "Service-specific resilience patterns across storage, databases, and workload recovery", ("replication", "multi-region", "service-level", "database", "storage", "backup copy")),
        ),
        concept_patterns={
            "Recovery Objectives": ("rto", "rpo", "recovery", "failover", "dr"),
            "Backup and Restore Operations": ("backup", "restore", "vault", "retention", "recovery point"),
            "Resilience Topologies": ("pilot light", "warm standby", "active active", "cross-region", "multi-region"),
            "Cutover and Recovery Execution": ("cutover", "drs", "replication", "recovery", "restore"),
            "Service-Level Recovery Design": ("database", "storage", "service", "copy", "replica"),
        },
        feature_hints=("dr", "rto", "rpo", "backup", "restore", "vault", "pilot light", "warm standby", "elastic disaster recovery", "cross-region"),
        hidden_signals=(
            ("Operational guidance / best-practice signal", ("best practice", "should", "must", "always", "never")),
            ("Constraint or limitation signal", ("cannot", "can't", "only", "limit", "required")),
            ("Recovery-planning signal", ("rto", "rpo", "failover", "pilot light", "warm standby")),
            ("Restore and recoverability signal", ("backup", "restore", "vault", "recovery point", "cutover")),
            ("Resilience topology signal", ("cross-region", "multi-region", "active active", "replication")),
        ),
        cross_cloud_rows=(
            ("Backup orchestration", "AWS Backup", "Azure Backup", "Backup and DR services"),
            ("Disaster recovery replication", "Elastic Disaster Recovery", "Azure Site Recovery", "DR replication ecosystems / Backup and DR"),
            ("Recovery topology patterns", "Pilot light / warm standby / active-active", "Cold / warm / active-active patterns", "Cold / warm / multi-region active patterns"),
            ("Cross-region resilience", "Multi-region copies and failover patterns", "Paired regions and cross-region replication", "Multi-region failover and global load balancing patterns"),
        ),
        phase_foundations=(
            "Disaster recovery quality is measured by recovery objectives and realism of recovery execution.",
            "Backup without tested restore and cutover paths is not a recovery strategy.",
        ),
        phase_core=(
            "Implement recovery topologies only after workload criticality, tolerance, and dependency chains are explicit.",
            "Centralize restore governance while preserving service-level recovery detail where needed.",
        ),
        phase_advanced=(
            "Use replication and warm environments carefully because hidden dependency drift degrades recovery confidence.",
            "Separate resilience marketing terms from actual runbook execution steps.",
        ),
        phase_system_design=(
            "Reference architecture: protected assets, backup and replication controls, and rehearsed cutover workflows.",
            "Scaling considerations: dependency ordering, regional capacity, stale runbooks, and restore contention.",
            "Cost considerations: always-warm environments, unmanaged backup growth, and unused replica estates.",
        ),
    ),
    DomainConfig(
        key="migration",
        folder_name="AWS Migration Knowledge Base",
        title="AWS Migration Knowledge Base",
        description="Assessment, strategy, tooling, execution, and hybrid transfer workflows for cloud migration.",
        ownership_patterns=(
            (r"14_migration", 15),
            (r"disaster recovery & migrations", 12),
            (r"application migration service", 12),
            (r"\bmgn\b", 11),
            (r"database migration service", 11),
            (r"\bdms\b", 10),
            (r"app2container", 10),
            (r"vmware cloud", 10),
            (r"transferring large datasets", 10),
            (r"on-premises", 9),
            (r"migration evaluator", 9),
            (r"snow family", 8),
            (r"datasync", 7),
            (r"storage gateway", 7),
            (r"transfer family", 7),
            (r"migrations", 8),
        ),
        topics=(
            TopicConfig("01", "Migration_Strategies_Assessment", "7Rs thinking, discovery, assessment, landing targets, and migration planning", ("migration", "7r", "assessment", "discovery", "evaluator", "on-premises", "strategy")),
            TopicConfig("02", "Data_Database_Migration", "DMS, database migration, schema movement, and large-scale data transfer planning", ("dms", "database migration", "rds migrations", "aurora migrations", "large datasets", "schema", "transfer")),
            TopicConfig("03", "Server_App_Migration", "MGN, App2Container, VMware Cloud, platform cutover, and application move strategies", ("mgn", "application migration", "app2container", "vmware cloud", "app", "server", "cutover")),
            TopicConfig("04", "Hybrid_Transfer_Execution", "Snow family, DataSync, Storage Gateway, Transfer Family, and hybrid movement execution", ("snow", "datasync", "storage gateway", "transfer family", "hybrid", "bulk transfer", "gateway")),
        ),
        concept_patterns={
            "Migration Strategy and Discovery": ("migration", "assessment", "discovery", "strategy", "7r"),
            "Database and Data Movement": ("dms", "database migration", "schema", "transfer", "datasets"),
            "Application and Server Relocation": ("mgn", "app2container", "vmware", "server", "application"),
            "Hybrid Transfer Execution": ("snow", "datasync", "storage gateway", "transfer family", "bulk"),
            "Cutover and Landing Zone Readiness": ("cutover", "landing", "target", "wave", "readiness"),
        },
        feature_hints=("migration", "assessment", "dms", "mgn", "app2container", "vmware cloud", "snow family", "datasync", "storage gateway", "transfer family"),
        hidden_signals=(
            ("Operational guidance / best-practice signal", ("best practice", "should", "must", "always", "never")),
            ("Constraint or limitation signal", ("cannot", "can't", "only", "limit", "required")),
            ("Migration-planning signal", ("assessment", "discovery", "strategy", "wave", "landing")),
            ("Cutover and execution signal", ("cutover", "replication", "sync", "migration", "transfer")),
            ("Hybrid movement signal", ("snow", "datasync", "gateway", "on-premises", "bulk transfer")),
        ),
        cross_cloud_rows=(
            ("Migration assessment", "Migration Evaluator / strategy tooling", "Azure Migrate", "Migration Center / assessment tooling"),
            ("Server and app migration", "MGN / App2Container / VMware Cloud on AWS", "Azure Migrate / App Service migration / VMware Solution", "Migrate to Virtual Machines / Anthos / VMware Engine"),
            ("Database migration", "DMS", "Database Migration Service", "Database Migration Service"),
            ("Bulk and hybrid transfer", "Snow Family / DataSync / Storage Gateway / Transfer Family", "Data Box / File Sync / SFTP patterns", "Transfer Appliance / Storage Transfer Service / Migrate for file data"),
        ),
        phase_foundations=(
            "Migration quality depends on assessment accuracy, target-state clarity, and cutover realism.",
            "Tooling should follow strategy, not substitute for it.",
        ),
        phase_core=(
            "Implement database, application, and bulk-transfer paths as separate workstreams with explicit dependencies.",
            "Treat landing zone and cutover readiness as first-class architecture gates.",
        ),
        phase_advanced=(
            "Use replication and hybrid movement tooling carefully so migration convenience does not hide state drift or rollback weakness.",
            "Wave design should reflect dependency boundaries, not just team ownership.",
        ),
        phase_system_design=(
            "Reference architecture: assessment, replication and transfer plane, landing targets, and cutover governance.",
            "Scaling considerations: dependency discovery, migration wave coordination, bulk transfer windows, and rollback confidence.",
            "Cost considerations: duplicated environments, prolonged coexistence, and overuse of heavyweight migration tooling.",
        ),
    ),
)


GLOBAL_SERVICE_PATTERNS: dict[str, tuple[str, ...]] = {
    "Amazon EC2": ("ec2",),
    "Elastic Load Balancing": ("load balancer", "alb", "nlb", "gwlb", "elb"),
    "Auto Scaling": ("auto scaling", "asg"),
    "Amazon ECS": ("ecs",),
    "Amazon ECR": ("ecr",),
    "Amazon EKS": ("eks",),
    "AWS Lambda": ("lambda",),
    "API Gateway": ("api gateway",),
    "AWS CloudFormation": ("cloudformation", "stack"),
    "AWS CDK": ("cdk",),
    "AWS SAM": ("sam", "serverless application model"),
    "AWS Elastic Beanstalk": ("beanstalk",),
    "AWS Batch": ("batch",),
    "Amazon S3": ("s3",),
    "Amazon EBS": ("ebs",),
    "Amazon EFS": ("efs",),
    "Amazon FSx": ("fsx",),
    "AWS DataSync": ("datasync",),
    "AWS Storage Gateway": ("storage gateway",),
    "AWS Transfer Family": ("transfer family",),
    "Amazon Glacier": ("glacier",),
    "Amazon RDS": ("rds",),
    "Amazon Aurora": ("aurora",),
    "Amazon DynamoDB": ("dynamodb",),
    "Amazon ElastiCache": ("elasticache",),
    "Amazon MemoryDB": ("memorydb",),
    "Amazon DocumentDB": ("documentdb",),
    "Amazon Neptune": ("neptune",),
    "Amazon Keyspaces": ("keyspaces",),
    "Amazon Timestream": ("timestream",),
    "Amazon EMR": ("emr",),
    "AWS Glue": ("glue",),
    "Amazon Athena": ("athena",),
    "Amazon Redshift": ("redshift",),
    "Amazon MSK": ("msk", "managed streaming for apache kafka"),
    "Amazon Kinesis": ("kinesis",),
    "Amazon Data Firehose": ("firehose",),
    "Amazon Managed Service for Apache Flink": ("flink",),
    "Amazon OpenSearch": ("opensearch",),
    "Amazon QuickSight": ("quicksight",),
    "SageMaker": ("sagemaker",),
    "Amazon Bedrock": ("bedrock",),
    "Amazon Rekognition": ("rekognition",),
    "Amazon Textract": ("textract",),
    "Amazon Comprehend": ("comprehend",),
    "Amazon Polly": ("polly",),
    "Amazon Transcribe": ("transcribe",),
    "Amazon Translate": ("translate",),
    "Amazon Lex": ("lex",),
    "Amazon Personalize": ("personalize",),
    "Amazon Kendra": ("kendra",),
    "Amazon CloudWatch": ("cloudwatch",),
    "AWS CloudTrail": ("cloudtrail",),
    "AWS Config": ("config",),
    "AWS X-Ray": ("x-ray",),
    "Amazon EventBridge": ("eventbridge",),
    "Amazon VPC Flow Logs": ("vpc flow logs",),
    "VPC Traffic Mirroring": ("traffic mirroring",),
    "AWS Budgets": ("budget",),
    "AWS Cost Explorer": ("cost explorer",),
    "AWS Cost Anomaly Detection": ("cost anomaly",),
    "Trusted Advisor": ("trusted advisor",),
    "AWS Backup": ("aws backup",),
    "Elastic Disaster Recovery": ("elastic disaster recovery", "drs"),
    "AWS Application Migration Service": ("application migration service", "mgn"),
    "AWS Database Migration Service": ("database migration service", "dms"),
    "AWS Snow Family": ("snow family", "snowball", "snowmobile"),
    "VMware Cloud on AWS": ("vmware cloud",),
}


def compile_patterns(patterns: tuple[tuple[str, int], ...]) -> tuple[tuple[re.Pattern[str], int], ...]:
    return tuple((re.compile(expr, flags=re.IGNORECASE), weight) for expr, weight in patterns)


COMPILED_DOMAIN_PATTERNS = {cfg.key: compile_patterns(cfg.ownership_patterns) for cfg in DOMAIN_CONFIGS}
DOMAIN_BY_KEY = {cfg.key: cfg for cfg in DOMAIN_CONFIGS}


def list_candidate_transcript_files() -> list[Path]:
    files: list[Path] = []
    for path in OUTPUTS_DIR.rglob("*.txt"):
        rel = path.relative_to(OUTPUTS_DIR)
        root_name = rel.parts[0] if rel.parts else ""
        if root_name in EXCLUDED_SOURCE_ROOTS:
            continue
        files.append(path)
    return sorted(files)


def score_with_patterns(text: str, patterns: tuple[tuple[re.Pattern[str], int], ...]) -> int:
    score = 0
    for pattern, weight in patterns:
        if pattern.search(text):
            score += weight
    return score


def assign_domain_ownership(files: list[Path]) -> tuple[dict[str, list[Path]], dict[str, list[tuple[Path, str]]], dict[str, dict[str, int]]]:
    owned: dict[str, list[Path]] = defaultdict(list)
    referrals: dict[str, list[tuple[Path, str]]] = defaultdict(list)
    score_debug: dict[str, dict[str, int]] = {}

    for file_path in files:
        rel_text = file_path.relative_to(OUTPUTS_DIR).as_posix().lower()
        scores = {
            domain_key: score_with_patterns(rel_text, patterns)
            for domain_key, patterns in COMPILED_DOMAIN_PATTERNS.items()
        }
        scores = {domain_key: score for domain_key, score in scores.items() if score > 0}
        if not scores:
            continue

        best_domain, best_score = sorted(scores.items(), key=lambda item: (-item[1], item[0]))[0]
        owned[best_domain].append(file_path)
        score_debug[file_path.relative_to(OUTPUTS_DIR).as_posix()] = scores

        threshold = max(7, best_score - 3)
        for domain_key, score in sorted(scores.items(), key=lambda item: (-item[1], item[0])):
            if domain_key == best_domain or score < threshold:
                continue
            referrals[domain_key].append((file_path, best_domain))

    for domain_key in owned:
        owned[domain_key] = sorted(set(owned[domain_key]))
    for domain_key in referrals:
        referrals[domain_key] = sorted(set(referrals[domain_key]), key=lambda item: (item[1], item[0].as_posix()))

    return owned, referrals, score_debug


def enforce_ai_complete_scope(
    files: list[Path],
    owned: dict[str, list[Path]],
    referrals: dict[str, list[tuple[Path, str]]],
) -> tuple[dict[str, list[Path]], dict[str, list[tuple[Path, str]]]]:
    ai_files = sorted(
        file_path
        for file_path in files
        if file_path.relative_to(OUTPUTS_DIR).parts
        and file_path.relative_to(OUTPUTS_DIR).parts[0].lower() == AI_SOURCE_ROOT
    )
    ai_file_set = set(ai_files)

    owned["ai"] = ai_files
    for domain_key, domain_files in list(owned.items()):
        if domain_key == "ai":
            continue
        owned[domain_key] = [file_path for file_path in domain_files if file_path not in ai_file_set]

    for domain_key, domain_referrals in list(referrals.items()):
        referrals[domain_key] = [
            (file_path, owner)
            for file_path, owner in domain_referrals
            if file_path not in ai_file_set
        ]

    return owned, referrals


def keyword_score(text: str, keywords: tuple[str, ...]) -> int:
    normalized = text.lower()
    score = 0
    for keyword in keywords:
        if keyword.lower() in normalized:
            score += 1
    return score


def assign_topic(file_path: Path, topics: tuple[TopicConfig, ...]) -> TopicConfig:
    rel_text = file_path.relative_to(OUTPUTS_DIR).as_posix().lower()
    scored = [(topic, keyword_score(rel_text, topic.keywords)) for topic in topics]
    best_topic, best_score = sorted(scored, key=lambda item: (-item[1], item[0].id))[0]
    if best_score > 0:
        return best_topic
    return topics[0]


def load_units(file_path: Path) -> list[str]:
    raw = file_path.read_text(encoding="utf-8", errors="ignore")
    text = re.sub(r"\s+", " ", raw.strip())
    if not text:
        return []
    return [segment.strip() for segment in re.split(r"(?<=[.!?])\s+(?=[A-Z0-9\[])", text) if segment.strip()]


def detect_labels(text: str, patterns: dict[str, tuple[str, ...]]) -> list[str]:
    lower_text = text.lower()
    found = []
    for label, keywords in patterns.items():
        if any(keyword in lower_text for keyword in keywords):
            found.append(label)
    return sorted(set(found))


def detect_services(text: str) -> list[str]:
    lower_text = text.lower()
    found = []
    for label, keywords in GLOBAL_SERVICE_PATTERNS.items():
        if any(keyword in lower_text for keyword in keywords):
            found.append(label)
    return sorted(set(found))


def hidden_meaning(text: str, domain: DomainConfig) -> str:
    lower_text = text.lower()
    tags = []
    for label, keywords in domain.hidden_signals:
        if any(keyword in lower_text for keyword in keywords):
            tags.append(label)
    if not tags:
        return f"Implicitly contributes {domain.key.replace('_', ' ')} behavior detail."
    return "; ".join(tags) + "."


def topic_referrals(referrals: list[tuple[Path, str]], topic: TopicConfig) -> list[tuple[Path, str]]:
    selected = []
    for file_path, owner in referrals:
        rel_text = file_path.relative_to(OUTPUTS_DIR).as_posix().lower()
        if keyword_score(rel_text, topic.keywords) > 0:
            selected.append((file_path, owner))
    return selected


def summarize_scope_line(items: list[str], fallback: str) -> str:
    if not items:
        return fallback
    return ", ".join(items[:6]) + (" ..." if len(items) > 6 else "")


def unique_preserve_order(values: list[str], limit: int | None = None) -> list[str]:
    seen = set()
    result = []
    for value in values:
        if value in seen:
            continue
        seen.add(value)
        result.append(value)
        if limit is not None and len(result) >= limit:
            break
    return result


def best_lines_for_keywords(all_records: list[dict[str, object]], keywords: tuple[str, ...], limit: int) -> list[dict[str, object]]:
    ranked = []
    for record in all_records:
        line = str(record["line"])
        line_lower = line.lower()
        hits = sum(1 for keyword in keywords if keyword in line_lower)
        if hits:
            ranked.append((hits, len(line), record))
    ranked.sort(key=lambda item: (-item[0], -item[1]))
    return [record for _, _, record in ranked[:limit]]


def build_real_material(domain: DomainConfig, topic: TopicConfig, all_records: list[dict[str, object]], concepts: set[str]) -> list[str]:
    topic_name = topic.title.replace("_", " ")
    module_specs = (
        (
            f"{topic_name} Mental Model",
            (
                f"Use {topic_name.lower()} decisions to shape blast radius, access paths, and operational ownership.",
                "Study service behavior first, then map it into production architecture and exam-ready design language.",
            ),
            topic.keywords[:4],
        ),
        (
            "Core Services and Building Blocks",
            (
                "Core services should be understood through control planes, data paths, and failure boundaries.",
                "Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.",
            ),
            topic.keywords[2:6] or topic.keywords,
        ),
        (
            "Operational and Architecture Patterns",
            (
                "Patterns matter when scale, governance, or reliability turns basic service use into system design.",
                "Prefer design implications and trade-offs over memorizing isolated features.",
            ),
            tuple(unique_preserve_order(list(topic.keywords) + ["architecture", "design", "performance", "security", "cost"])),
        ),
    )

    lines = []
    lines.append(f"## Real Material - Architect Learning Build ({domain.title.replace('AWS ', '').replace(' Knowledge Base', '')}: {topic_name})")
    lines.append("")
    lines.append(f"This section is the study-first architecture guide for {topic.scope.lower()}.")
    lines.append("")
    lines.append("### Phase 1 - Foundations")
    lines.append("")

    for module_name, module_bullets, module_keywords in module_specs:
        selected_records = best_lines_for_keywords(all_records, module_keywords, limit=24)
        if not selected_records:
            selected_records = all_records[:24]

        selected_sources = unique_preserve_order([str(record["source"]) for record in selected_records], limit=10)
        selected_concepts = unique_preserve_order(
            [concept for record in selected_records for concept in record["concepts"]], limit=8
        )
        note_lines = unique_preserve_order([str(record["line"]) for record in selected_records], limit=12)

        lines.append(f"#### Module: {module_name}")
        for bullet in module_bullets:
            lines.append(f"- {bullet}")
        lines.append("")
        lines.append("##### Source Transcript Details")
        lines.append(f"- Module focus: {module_name}")
        lines.append("- Primary transcript files:")
        for source in selected_sources:
            lines.append(f"- outputs/{source}")
        lines.append("- Top concept clusters from transcript metadata:")
        for concept in selected_concepts:
            lines.append(f"- {concept}")
        lines.append("- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.")
        lines.append("")
        lines.append("##### Source Coverage Stats")
        lines.append(f"- Total transcript files in topic: {len(unique_preserve_order([str(record['source']) for record in all_records]))}")
        lines.append(f"- Module-selected transcript files: {len(selected_sources)}")
        lines.append(f"- Key insight candidates scanned (topic): {len(all_records)}")
        lines.append(f"- Key insights inside selected files: {len(selected_records)}")
        lines.append(f"- Unique concept tags in selected files: {len(selected_concepts)}")
        lines.append("")
        lines.append("##### Transcript-Enriched Learning Notes")
        for note in note_lines:
            lines.append(f"- {note}")
        lines.append("")
        lines.append("##### Polished Architect Notes")
        for note in note_lines[:12]:
            polished = note[0].lower() + note[1:] if note else note
            lines.append(f"- Transcript signals that {polished}")
        lines.append("")
        lines.append("##### Architect Synthesis (Transcript-Derived)")
        for concept in selected_concepts[:5]:
            lines.append(f"- Treat {concept} as a first-class architecture control, with explicit ownership and failure-mode design.")
        for note in note_lines[:5]:
            implication = note[0].lower() + note[1:] if note else note
            lines.append(f"- Design implication: {implication}")
        lines.append("")

    lines.append("### Phase 2 - Core Services")
    for service in unique_preserve_order([service for record in all_records for service in record["services"] if service != "(none explicit)"], limit=5):
        lines.append(f"- {service} should be understood in terms of request path, control plane, and operational boundary.")
    lines.append("")
    lines.append("### Phase 3 - Advanced Patterns")
    top_concepts = sorted(concepts)[:5]
    if top_concepts:
        for concept in top_concepts:
            lines.append(f"- Pattern emphasis: {concept} becomes valuable when requirements move from feature use to system design discipline.")
    else:
        lines.append("- Pattern emphasis: use architecture trade-offs to turn transcript details into repeatable operating models.")
    lines.append("")
    lines.append("### Phase 4 - System Design (Production)")
    lines.append("#### Reference Architecture")
    lines.append(f"- Design {topic_name.lower()} with explicit service boundaries, operational controls, and recovery expectations.")
    lines.append("#### Scaling Considerations")
    lines.append(f"- Scaling risk appears when {topic_name.lower()} decisions are made service-by-service without a whole-system operating model.")
    lines.append("#### Cost Considerations")
    lines.append("- The main cost driver is usually misalignment between service choice, operations, and workload behavior.")
    lines.append("")
    return lines


def build_cross_cloud(domain: DomainConfig) -> list[str]:
    lines = ["## Cross-Cloud Mapping (Concept-First)", "", "| Underlying Concept | AWS | Azure | GCP |", "|---|---|---|---|"]
    for concept, aws, azure, gcp in domain.cross_cloud_rows:
        lines.append(f"| {concept} | {aws} | {azure} | {gcp} |")
    lines.append("")
    lines.append("### Trade-offs and Decision Notes")
    lines.append(f"- {domain.title.replace('AWS ', '')} is strongest when design decisions are expressed as control objectives rather than vendor-only terminology.")
    lines.append("- Cross-cloud portability improves when service choice, failure behavior, and governance model are documented together.")
    lines.append("- Cloud-native implementations should still preserve comparable intent across AWS, Azure, and GCP.")
    return lines


def deep_expansion(domain: DomainConfig, services: set[str], concepts: set[str]) -> list[str]:
    lines = [f"## Step 3 - Deep Expansion ({domain.title.replace('AWS ', '').replace(' Knowledge Base', '')} Concepts)"]
    lines.append("")
    lines.append("### Core Services in This Topic")
    for service in sorted(services)[:10]:
        lines.append(f"- {service}: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.")
    lines.append("")
    lines.append("### Architect-Level Concept Expansion")
    for concept in sorted(concepts)[:10]:
        lines.append(f"- {concept}: treat this as a design lever that changes topology, risk posture, or operational workflow.")
    lines.append("")
    return lines


def build_topic_file(domain: DomainConfig, topic: TopicConfig, owned_files: list[Path], referred_files: list[tuple[Path, str]]) -> dict[str, object]:
    out_dir = OUTPUTS_DIR / domain.folder_name
    out_dir.mkdir(parents=True, exist_ok=True)
    out_file = out_dir / f"{topic.id}_{topic.title}.md"

    all_records: list[dict[str, object]] = []
    concepts: set[str] = set()
    services: set[str] = set()
    features: set[str] = set()
    use_cases: list[str] = []
    constraints: list[str] = []
    patterns: list[str] = []

    for file_path in owned_files:
        rel_source = file_path.relative_to(OUTPUTS_DIR).as_posix()
        for line_no, unit in enumerate(load_units(file_path), start=1):
            record_concepts = detect_labels(unit, domain.concept_patterns)
            if not record_concepts:
                record_concepts = [f"{domain.title.replace('AWS ', '').replace(' Knowledge Base', '')} Operational Context"]
            record_services = detect_services(unit)
            if not record_services:
                record_services = ["(none explicit)"]

            concepts.update(record_concepts)
            services.update([service for service in record_services if service != "(none explicit)"])

            lower_unit = unit.lower()
            for feature in domain.feature_hints:
                if feature in lower_unit:
                    features.add(feature)
            if any(marker in lower_unit for marker in ("for example", "use case", "when", "to allow", "to secure", "to route", "to migrate", "to recover", "to optimize")):
                use_cases.append(f"{file_path.name}:{line_no}: {unit}")
            if any(marker in lower_unit for marker in ("must", "should", "only", "cannot", "can't", "required", "limit", "quota", "best practice")):
                constraints.append(f"{file_path.name}:{line_no}: {unit}")
            if any(marker in lower_unit for marker in ("architecture", "pattern", "design", "workflow", "topology", "pipeline")):
                patterns.append(f"{file_path.name}:{line_no}: {unit}")

            all_records.append(
                {
                    "source": rel_source,
                    "line_no": line_no,
                    "line": unit,
                    "concepts": record_concepts,
                    "services": record_services,
                }
            )

    referred_summary = [
        f"outputs/{path.relative_to(OUTPUTS_DIR).as_posix()} (owned by {DOMAIN_BY_KEY[owner].title})"
        for path, owner in referred_files
    ]

    lines: list[str] = []
    lines.append(f"# {topic.id}_{topic.title}.md")
    lines.append("")
    lines.append("## Scope")
    lines.append(f"- Topic: {topic.scope}")
    lines.append(f"- Files processed: {len(owned_files)}")
    lines.append(f"- Extracted non-empty transcript lines: {len(all_records)}")
    lines.append("- Processing mode: line-by-line (sentence-level), zero-loss")
    lines.append(f"- Primary source ownership: {domain.title}")
    lines.append(f"- Cross-domain referrals: {len(referred_files)}")
    lines.append("")

    lines.extend(build_real_material(domain, topic, all_records, concepts))
    lines.append("## Cross-Domain Referrals")
    lines.append("")
    if referred_summary:
        lines.append("These transcripts are relevant to this topic but are owned by another knowledge base and are referenced here to avoid duplication.")
        lines.append("")
        for referral in referred_summary:
            lines.append(f"- {referral}")
    else:
        lines.append("- No secondary referral sources were required for this topic.")
    lines.append("")

    lines.append("## Step 1 - Line-by-Line Extraction")
    lines.append("")
    lines.append("Every non-empty line from every primary source transcript is preserved below with extraction fields.")
    lines.append("")

    current_source = None
    for record in all_records:
        if record["source"] != current_source:
            current_source = record["source"]
            lines.append(f"### File: outputs/{current_source}")
            lines.append("")
        lines.append(f"Line {record['line_no']}:")
        lines.append(f"- Concepts: {', '.join(record['concepts'])}")
        lines.append(f"- Services: {', '.join(record['services'])}")
        lines.append(f"- Key Insights: {record['line']}")
        lines.append(f"- Hidden/Implicit Meaning: {hidden_meaning(str(record['line']), domain)}")
        lines.append("")

    lines.append("## Step 2 - Consolidation")
    lines.append("")
    lines.append("### 1. Concepts List")
    if concepts:
        for concept in sorted(concepts):
            lines.append(f"- {concept}")
    else:
        lines.append("- (No explicit concepts detected)")
    lines.append("")
    lines.append("### 2. Services List")
    if services:
        for service in sorted(services):
            lines.append(f"- {service}")
    else:
        lines.append("- (No explicit services detected)")
    lines.append("")
    lines.append("### 3. Features List")
    if features:
        for feature in sorted(features):
            lines.append(f"- {feature}")
    else:
        lines.append("- (No explicit feature hints detected)")
    lines.append("")
    lines.append("### 4. Use Cases")
    if use_cases:
        for item in unique_preserve_order(use_cases, limit=40):
            lines.append(f"- {item}")
    else:
        lines.append("- (No explicit use-case markers detected)")
    lines.append("")
    lines.append("### 5. Constraints / Limitations")
    if constraints:
        for item in unique_preserve_order(constraints, limit=40):
            lines.append(f"- {item}")
    else:
        lines.append("- (No explicit constraints detected)")
    lines.append("")
    lines.append("### 6. Patterns / Architectures")
    if patterns:
        for item in unique_preserve_order(patterns, limit=40):
            lines.append(f"- {item}")
    else:
        lines.append("- (No explicit pattern markers detected)")
    lines.append("")

    lines.extend(deep_expansion(domain, services, concepts))
    lines.extend(build_cross_cloud(domain))
    lines.append("")
    lines.append("## Phase-wise Architect-Level Organization")
    lines.append("")
    lines.append("### Phase 1 - Foundations")
    for bullet in domain.phase_foundations:
        lines.append(f"- {bullet}")
    lines.append("")
    lines.append("### Phase 2 - Core Services")
    for bullet in domain.phase_core:
        lines.append(f"- {bullet}")
    lines.append("")
    lines.append("### Phase 3 - Advanced Patterns")
    for bullet in domain.phase_advanced:
        lines.append(f"- {bullet}")
    lines.append("")
    lines.append("### Phase 4 - System Design")
    for bullet in domain.phase_system_design:
        lines.append(f"- {bullet}")
    lines.append("")

    out_file.write_text("\n".join(lines), encoding="utf-8")
    return {
        "file": out_file,
        "concepts": sorted(concepts),
        "services": sorted(services),
        "line_count": len(all_records),
        "owned_sources": [file_path.relative_to(OUTPUTS_DIR).as_posix() for file_path in owned_files],
        "referred_sources": referred_summary,
    }


def build_master_index(domain: DomainConfig, topic_results: list[dict[str, object]]) -> None:
    out_dir = OUTPUTS_DIR / domain.folder_name
    master_file = out_dir / "00_Master_Index.md"

    concept_to_files: dict[str, list[str]] = defaultdict(list)
    service_to_files: dict[str, list[str]] = defaultdict(list)
    total_lines = 0

    for result in topic_results:
        file_name = Path(str(result["file"])).name
        total_lines += int(result["line_count"])
        for concept in result["concepts"]:
            concept_to_files[concept].append(file_name)
        for service in result["services"]:
            service_to_files[service].append(file_name)

    lines = []
    lines.append(f"# {domain.title} - Master Index")
    lines.append("")
    lines.append("This knowledge base follows the same zero-loss architecture used by the existing networking and security knowledge bases.")
    lines.append("")
    lines.append("## Structure")
    lines.append(f"- {len(topic_results)} deep-dive files organized by topic")
    lines.append("- Each file contains: Scope, Real Material, referrals, zero-loss extraction, consolidation, deep expansion, cross-cloud mapping, and phase-wise system design")
    lines.append("- Overlap rule enforced: every transcript has one owning domain, with secondary relevance captured as referrals")
    lines.append("- Cross-cloud interpretation included for AWS, Azure, and GCP concept mapping")
    lines.append("")
    lines.append("## Deep-Dive Files")
    lines.append("| # | File | Topic |")
    lines.append("|---|------|-------|")
    for result in topic_results:
        file_name = Path(str(result["file"])).name
        topic_label = file_name.replace(".md", "").split("_", 1)[1].replace("_", " ")
        lines.append(f"| {file_name.split('_', 1)[0]} | {file_name} | {topic_label} |")
    lines.append("")
    lines.append("## Status")
    lines.append("- [x] All deep-dive files created")
    lines.append("- [x] Single-owner transcript assignment applied")
    lines.append("- [x] Cross-domain referrals included")
    lines.append("- [x] Zero-loss extraction and consolidation generated")
    lines.append("- [x] Cross-cloud mapping included in every file")
    lines.append("")
    lines.append("## Start Here")
    for result in topic_results:
        file_name = Path(str(result["file"])).name
        lines.append(f"- {file_name}")
    lines.append("")
    lines.append("## Output Stats")
    lines.append("| File | Extracted Lines |")
    lines.append("|---|---:|")
    for result in topic_results:
        file_name = Path(str(result["file"])).name
        lines.append(f"| {file_name} | {result['line_count']} |")
    lines.append(f"| **Total** | **{total_lines}** |")
    lines.append("")
    lines.append("## Reverse Index (Auto-Generated)")
    lines.append("")
    lines.append("### Concept -> Files")
    for concept in sorted(concept_to_files):
        lines.append(f"- {concept}: {', '.join(sorted(set(concept_to_files[concept])))}")
    lines.append("")
    lines.append("### Service -> Files")
    for service in sorted(service_to_files):
        lines.append(f"- {service}: {', '.join(sorted(set(service_to_files[service])))}")
    lines.append("")

    master_file.write_text("\n".join(lines), encoding="utf-8")


def build_domain(domain: DomainConfig, owned: dict[str, list[Path]], referrals: dict[str, list[tuple[Path, str]]]) -> dict[str, object]:
    topic_files: dict[str, list[Path]] = defaultdict(list)
    for file_path in owned.get(domain.key, []):
        topic = assign_topic(file_path, domain.topics)
        topic_files[topic.id].append(file_path)

    topic_results: list[dict[str, object]] = []
    for topic in domain.topics:
        owned_files = sorted(topic_files.get(topic.id, []))
        topic_referred = topic_referrals(referrals.get(domain.key, []), topic)
        topic_results.append(build_topic_file(domain, topic, owned_files, topic_referred))

    build_master_index(domain, topic_results)
    return {
        "title": domain.title,
        "folder": domain.folder_name,
        "topics": [Path(str(result["file"])).name for result in topic_results],
        "line_total": sum(int(result["line_count"]) for result in topic_results),
    }


def write_ownership_manifest(owned: dict[str, list[Path]], referrals: dict[str, list[tuple[Path, str]]], score_debug: dict[str, dict[str, int]]) -> None:
    manifest_path = ROOT / "cache" / "domain_kb_source_ownership.json"
    manifest = {
        "owned": {
            domain_key: [file_path.relative_to(OUTPUTS_DIR).as_posix() for file_path in files]
            for domain_key, files in sorted(owned.items())
        },
        "referrals": {
            domain_key: [
                {
                    "path": file_path.relative_to(OUTPUTS_DIR).as_posix(),
                    "owner": owner,
                }
                for file_path, owner in files
            ]
            for domain_key, files in sorted(referrals.items())
        },
        "scores": score_debug,
    }
    manifest_path.write_text(json.dumps(manifest, indent=2), encoding="utf-8")


def main() -> None:
    all_files = list_candidate_transcript_files()
    owned, referrals, score_debug = assign_domain_ownership(all_files)
    owned, referrals = enforce_ai_complete_scope(all_files, owned, referrals)
    write_ownership_manifest(owned, referrals, score_debug)

    summary = []
    for domain in DOMAIN_CONFIGS:
        summary.append(build_domain(domain, owned, referrals))

    summary_path = ROOT / "cache" / "domain_kb_build_summary.json"
    summary_path.write_text(json.dumps(summary, indent=2), encoding="utf-8")

    for item in summary:
        print(f"Built {item['title']} -> {item['folder']} ({len(item['topics'])} files, {item['line_total']} lines)")


if __name__ == "__main__":
    main()