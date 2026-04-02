# GCP Infrastructure Orchestration

This folder mirrors the Azure infrastructure hierarchy and provides GCP best-match service modules with environment-specific state separation.

## Structure

- Core platform:
  - `gcp-minimal`
  - `network/core`, `network/dns`, `network/armor`
  - `security/secret-manager`
  - `observability/cloud-logging`, `observability/cloud-trace`
- Compute:
  - `compute/container/*`
  - `compute/iaas/*`
  - `compute/paas/*`
  - `compute/serverless/*`
  - `compute/static-web`, `compute/workflows`
- Data + AI:
  - `database/*`, `storage/*`
  - `data-analytics`, `data-pipeline`, `databricks`
  - `ai-services/*`, `vertex-ai/genAI-agentic`
- Integration and edge:
  - `integration`, `apigee`, `cdn-lb`

## Terraform State Convention

Every module has independent remote state files by environment:

- `env/dev/backend.hcl`
- `env/staging/backend.hcl`
- `env/prod/backend.hcl`

Each backend file uses:

- `bucket = "REPLACE_WITH_TFSTATE_BUCKET"`
- `prefix = "<module-path>/<env>"`

Example:

- `network/core/dev` state prefix is `network/core/dev`

## Cross-Module Remote State Wiring

The following modules can consume outputs from `network/core`:

- `compute/container/gke`
- `compute/iaas/compute-engine`
- `database/memorystore`
- `storage/filestore`

Shared variables for these modules:

- `use_network_remote_state` (default `true`)
- `network_state_bucket` (default placeholder)
- `network_state_prefix` (default `network/core`)

Additional selectors:

- `compute/container/gke`: `subnet_name` (default `snet-gke`)
- `compute/iaas/compute-engine`: `subnet_name` (default `snet-vm`)

Expected `network/core` outputs:

- `vpc_id`
- `vpc_name`
- `subnet_ids`
- `subnet_names`

## Recommended Apply Order

1. `gcp-minimal`
2. `network/core`
3. `security/secret-manager`
4. `observability/cloud-logging`
5. `observability/cloud-trace`
6. `storage/cloud-storage`
7. `database/*` (as needed)
8. `compute/*` (as needed)
9. `integration`
10. `apigee`
11. `cdn-lb`

## Standard Execution Pattern

From a module directory (example uses `dev`):

```powershell
terraform init -backend-config=env/dev/backend.hcl
terraform plan -var-file=env/dev/terraform.tfvars
terraform apply -var-file=env/dev/terraform.tfvars
```

## Notes

- Keep the same `project_id`, `region`, and `prefix` conventions across modules per environment.
- For cost control, prefer the minimal path in `MINIMAL_EXECUTION_RUNBOOK.md` before enabling larger modules (GKE, Filestore, Spanner, Dataproc).
