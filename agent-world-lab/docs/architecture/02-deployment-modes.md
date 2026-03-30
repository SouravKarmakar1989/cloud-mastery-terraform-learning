# Deployment Modes

## Mode A: Single-cloud minimal lab (default)

- Primary cloud: Azure
- Hosting: Azure Container Apps
- Persistence: Azure Table Storage and Blob Storage
- Optional services disabled by default: advanced observability, vector store, advanced model integrations
- Goal: lowest practical cost and fastest learning setup

## Mode B: Cross-cloud hybrid lab (default secondary AWS)

- Primary cloud: Azure
- Secondary cloud: AWS
- Pattern: app/control plane on Azure, selected tool adapters on AWS
- Goal: learn hybrid execution and policy boundaries without full multi-cloud cost

## Mode C: Full multi-cloud learning deployment

- Active clouds: Azure + AWS + GCP
- Full provider adapter paths enabled with feature flags
- Optional advanced services enabled only when explicitly needed
- Goal: broad enterprise-pattern learning across clouds

## Feature flags

- `enable_azure_foundry`
- `enable_bedrock_agentcore`
- `enable_gcp_advanced`
- `enable_vector_store`
- `enable_observability_stack`

All flags default to `false` unless required by the selected mode.
