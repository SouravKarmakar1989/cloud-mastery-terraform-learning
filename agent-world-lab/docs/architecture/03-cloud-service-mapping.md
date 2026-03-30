# Cloud Service Mapping

## Azure (Mode A baseline)

- Resource Group for logical isolation
- Azure Container Apps for API and web containers
- Storage Account with Table + Blob for low-cost persistence
- Key Vault optional via feature flag
- Log Analytics and App Insights optional via feature flag
- Azure AI Foundry integration optional via feature flag

Why: Azure Container Apps and Storage primitives provide low-ops and low-cost deployment while preserving enterprise deployment patterns.

## AWS (Mode B secondary default)

- API Gateway HTTP API + Lambda for secondary tool endpoints
- S3 for object storage
- DynamoDB on-demand as optional persistence adapter
- Bedrock/AgentCore integration optional via feature flag
- CloudWatch for baseline logging

Why: pay-per-use services reduce idle spend while enabling realistic cross-cloud adapter learning.

## GCP (Mode C expansion)

- Cloud Run for containerized adapter/service endpoints
- Cloud Storage for object persistence
- Firestore as optional persistence adapter
- Secret Manager optional
- Cloud Logging baseline

Why: Cloud Run and managed storage keep operational complexity and cost low for learning deployments.

## Shared guidance

- Keep one primary control plane in low-cost modes
- Enable secondary clouds only for required learning scenarios
- Enforce consistent naming/tags/labels and policy controls across providers
