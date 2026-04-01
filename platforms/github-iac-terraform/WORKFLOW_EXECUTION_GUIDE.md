# Workflow Execution Guide

This guide explains how GitHub workflows in this repository execute Terraform commands (`init`, `plan`, `apply`, `destroy`), and how those workflows are tied to the module structure under `platforms/github-iac-terraform`.

## 1. How workflows are related to github-iac-terraform

All Terraform workflows run from the repository root and then change into module directories under:

- `platforms/github-iac-terraform/aws-infrastructure/...`
- `platforms/github-iac-terraform/azure-infrastructure/...`
- `platforms/github-iac-terraform/gcp-infrastructure/...`

In each workflow, this is done with `working-directory` (or `cd`) so commands run against the selected module.

Example (AWS apply workflow):

```yaml
working-directory: platforms/github-iac-terraform/aws-infrastructure/${{ inputs.module }}
```

That means if `inputs.module = aws-minimal`, Terraform runs inside:

`platforms/github-iac-terraform/aws-infrastructure/aws-minimal`

## 2. Workflow inventory and responsibilities

| Workflow | Trigger | Purpose |
|---|---|---|
| `.github/workflows/ci.yml` | `pull_request`, `push` (main/master) | Security + quality gate (fmt/validate/scans), no infrastructure apply |
| `.github/workflows/compute-modules-plan.yml` | `pull_request` on compute paths | Plan-only for changed compute modules + Infracost comments |
| `.github/workflows/aws-terraform-apply.yml` | `workflow_dispatch` | Manual deploy for AWS module |
| `.github/workflows/aws-terraform-destroy.yml` | `workflow_dispatch` | Manual destroy for AWS module |
| `.github/workflows/azure-terraform-apply.yml` | `workflow_dispatch` | Manual deploy for Azure module (plan job then apply job) |
| `.github/workflows/azure-terraform-destroy.yml` | `workflow_dispatch` | Manual destroy for Azure module |
| `.github/workflows/gcp-terraform-apply.yml` | `workflow_dispatch` | Manual deploy for GCP module |
| `.github/workflows/gcp-terraform-destroy.yml` | `workflow_dispatch` | Manual destroy for GCP module |
| `.github/workflows/tf-drift-detect.yml` | `schedule`, `workflow_dispatch` | Drift detection (`plan -detailed-exitcode`) |
| `.github/workflows/rg-destroy.yml` | `workflow_dispatch` | Azure Resource Group hard-delete (CLI), not Terraform |

## 3. Terraform command lifecycle in workflows

Every deploy/destroy workflow follows this pattern:

1. Checkout repository
2. Authenticate cloud provider using OIDC
3. Install Terraform
4. Run Terraform in module directory

### `terraform init` in workflows

Purpose in workflow context:

- Downloads provider plugins
- Initializes backend
- Connects to remote state for chosen environment

Typical workflow command:

```bash
terraform init -backend-config=env/<environment>/backend.hcl
```

This picks environment-specific backend settings from each module, for example:

- `env/dev/backend.hcl`
- `env/staging/backend.hcl`
- `env/prod/backend.hcl`

### `terraform plan` in workflows

Purpose in workflow context:

- Calculates infrastructure diff before change
- Supports optional target resource (`-target=...`) in apply workflows
- In drift workflow, uses `-detailed-exitcode`

Typical command:

```bash
terraform plan -var-file=env/<environment>/terraform.tfvars
```

With target:

```bash
terraform plan -var-file=env/<environment>/terraform.tfvars -target=<resource>
```

With drift detection:

```bash
terraform plan -var-file=env/<environment>/terraform.tfvars -detailed-exitcode -no-color
```

Exit code behavior in drift workflow:

- `0`: no changes
- `1`: error
- `2`: drift/change detected

### `terraform apply` in workflows

Purpose in workflow context:

- Executes planned changes in selected module/environment

Typical command:

```bash
terraform apply -auto-approve -var-file=env/<environment>/terraform.tfvars
```

Notes:

- Azure apply workflow separates `plan` and `apply` into two jobs.
- `apply` job is gated by GitHub Environment (`environment: ${{ inputs.environment }}`), allowing prod reviewer approvals.

### `terraform destroy` in workflows

Purpose in workflow context:

- Destroys resources for selected module/environment

Typical command:

```bash
terraform destroy -auto-approve -var-file=env/<environment>/terraform.tfvars
```

Optional target is supported in destroy workflows as well.

## 4. End-to-end flow by workflow type

### A) CI gate workflow (`ci.yml`)

This workflow validates code quality and security. It does not apply infrastructure.

Main Terraform parts:

- `terraform fmt -check -recursive`
- `terraform init -backend=false`
- `terraform validate`

Important detail:

- `-backend=false` avoids remote state access in CI lint/validate checks.

### B) Compute PR plan workflow (`compute-modules-plan.yml`)

Flow:

1. Detect changed compute modules in PR
2. Build matrix per cloud/module
3. For each changed module:
   - `terraform init`
   - `terraform plan -out=tfplan`
   - `terraform show -json tfplan`
   - Infracost breakdown
4. Post module-specific plan/cost comments to PR
5. Final `Compute Modules Plan Gate` job enforces pass/fail

This is a plan-only review workflow. No apply happens here.

### C) Apply workflows (AWS/Azure/GCP)

Flow:

1. Manual trigger from Actions tab (`workflow_dispatch`)
2. Select module + environment (+ optional target resource)
3. OIDC auth to cloud
4. `terraform init` with environment backend
5. `terraform plan`
6. `terraform apply`

Azure special behavior:

- Two jobs: `plan` then `apply`
- `apply` can require environment approval in prod

### D) Destroy workflows (AWS/Azure/GCP)

Flow:

1. Manual trigger from Actions tab
2. Select module + environment (+ optional target)
3. OIDC auth
4. `terraform init`
5. `terraform destroy`

### E) Drift workflow (`tf-drift-detect.yml`)

Flow:

1. Scheduled weekdays + manual trigger
2. Matrix across selected Azure modules
3. `terraform init`
4. `terraform plan -detailed-exitcode`
5. If any module indicates drift, workflow fails and opens GitHub issue

## 5. How workflow inputs map to module files

When a workflow input chooses `environment = dev`, the workflow uses:

- Backend config: `env/dev/backend.hcl`
- Variable values: `env/dev/terraform.tfvars`

When `module` is selected, workflow executes in that module directory.

So a single run is effectively:

```bash
cd platforms/github-iac-terraform/<cloud>-infrastructure/<module>
terraform init -backend-config=env/<env>/backend.hcl
terraform plan/apply/destroy -var-file=env/<env>/terraform.tfvars
```

## 6. Local Makefile vs GitHub workflow parity

Local commands in `platforms/github-iac-terraform/Makefile` intentionally mirror workflow logic.

Equivalent examples:

- Local:
  - `make plan MOD=security/key-vault ENV=dev`
- Workflow behavior:
  - module path selected in dispatch input
  - same `init` + `plan` pattern in workflow

Why this matters:

- Reproducing a workflow issue locally is straightforward
- CI/CD and local execution stay consistent

## 7. Required repository settings for workflows

To work correctly, workflows depend on:

- OIDC permissions in workflow (`id-token: write`)
- Repository variables for cloud identity values
- Repository or environment secrets (for Infracost and some cloud settings)
- Branch protection requiring gate jobs (for PR quality enforcement)

For PR gating, use status checks such as:

- `CI Gate` (from `ci.yml`)
- `Compute Modules Plan Gate` (from `compute-modules-plan.yml`)

## 8. Common troubleshooting map

### Init fails

Typical causes:

- Wrong/missing backend file under `env/<environment>/backend.hcl`
- OIDC role/identity misconfiguration
- Missing provider credentials/variables

### Plan fails

Typical causes:

- Missing required vars in `terraform.tfvars`
- Syntax/validation errors in module
- Dependency references missing outputs/inputs

### Apply fails after plan succeeds

Typical causes:

- Cloud quotas/policy restrictions
- RBAC permissions insufficient for create/update action
- Resource naming collision or regional constraints

### Drift workflow opens issues unexpectedly

Typical causes:

- Out-of-band manual cloud changes
- Environment var-file drift from actual deployed resources
- Provider behavior changes on computed fields

## 9. Practical mental model

Use this model when reading any workflow:

1. Trigger decides when run happens (PR/manual/schedule)
2. Inputs decide module + environment
3. Auth step gets short-lived cloud token via OIDC
4. `init` connects Terraform to correct remote state
5. `plan` previews changes
6. `apply` or `destroy` executes changes (if that workflow includes it)
7. Gate/report step controls merge visibility and audit trail

If you want, this guide can be expanded with sequence diagrams for each individual workflow file.