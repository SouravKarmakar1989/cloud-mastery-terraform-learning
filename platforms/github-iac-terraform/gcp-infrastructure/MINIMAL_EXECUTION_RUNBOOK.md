# GCP Minimal-First Execution Runbook

This runbook defines the lowest-cost path to stand up the platform incrementally, validate state wiring, and avoid high fixed-cost services early.

## Goal

Stand up only baseline infrastructure first, then layer services in small, testable batches.

## Phase 0: Prerequisites

1. Create or choose a GCS tfstate bucket.
2. Replace `REPLACE_WITH_TFSTATE_BUCKET` in all module backend files you plan to run.
3. Set `project_id`, `region`, and `prefix` in each selected module `env/<env>/terraform.tfvars`.

## Phase 1: Foundation (lowest cost)

1. `gcp-minimal`
2. `network/core`
3. `security/secret-manager`
4. `observability/cloud-logging`

Validation:

- Confirm `network/core` outputs exist in state:
  - `vpc_id`, `vpc_name`, `subnet_ids`, `subnet_names`

## Phase 2: Minimal compute/data

1. `compute/serverless/cloud-functions` or `compute/container/cloud-run`
2. `storage/cloud-storage`
3. `database/firestore` (optional)
4. `database/memorystore` (optional, uses network remote state by default)

## Phase 3: Integration and edge

1. `integration`
2. `compute/workflows`
3. `cdn-lb` (when exposing global endpoint)

## Phase 4: Higher-cost advanced services (opt-in)

Enable only when needed:

- `compute/container/gke`
- `storage/filestore`
- `database/cloud-spanner`
- `databricks` (Dataproc)
- `apigee`

## Cost-Aware Service Notes

- Low baseline: `gcp-minimal`, `network/core`, `secret-manager`, `cloud-logging`, `cloud-run`, `cloud-functions`, `cloud-storage`.
- Medium baseline: `cloud-sql-*`, `memorystore`, `cdn-lb`.
- Higher fixed cost: `filestore`, `spanner`, `gke` (node-based), `dataproc`, `apigee`.

## Module Command Template

```powershell
terraform init -backend-config=env/dev/backend.hcl
terraform plan -var-file=env/dev/terraform.tfvars
terraform apply -var-file=env/dev/terraform.tfvars
```

## Suggested Dev Environment Bring-Up Sequence

1. `gcp-minimal`
2. `network/core`
3. `security/secret-manager`
4. `observability/cloud-logging`
5. `compute/container/cloud-run`
6. `storage/cloud-storage`
7. `integration`
8. `cdn-lb` (optional)

## Safe Rollback Strategy

Destroy in reverse dependency order:

1. Edge/integration (`cdn-lb`, `apigee`, `integration`)
2. App/compute modules
3. Data modules
4. Observability/security
5. `network/core`
6. `gcp-minimal`
