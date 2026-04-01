# Numeric Cost Estimation Runbook (Pre-Deploy)

This runbook gives a repeatable way to get numeric monthly cost estimates per module before deployment.

## Recommended Tool

Use Infracost for Terraform-aware cost estimation.

## One-Time Setup

1. Install Infracost CLI.
2. Set API key:

```powershell
$env:INFRACOST_API_KEY = "<your_infracost_api_key>"
```

## Per-Module Estimate (Dev Example)

Run from module root (example: `compute/container/ecs-fargate`).

```powershell
terraform init -backend=false
terraform plan -var-file=env/dev/terraform.tfvars -out=tfplan.binary
terraform show -json tfplan.binary > tfplan.json
infracost breakdown --path tfplan.json --format table
```

## Generate JSON Output for Approval Workflow

```powershell
infracost breakdown --path tfplan.json --format json --out-file infracost.json
```

Use `infracost.json` in pull request checks or approval gates.

## Compare Environments

Run same flow with different var files:

- `env/dev/terraform.tfvars`
- `env/staging/terraform.tfvars`
- `env/prod/terraform.tfvars`

This provides granular resource-level monthly deltas by environment.

## Governance Recommendation

1. Add an Infracost CI step in deploy workflows.
2. Fail or require approval when estimated monthly delta exceeds threshold.
3. Store report artifact for audit and chargeback.

## Notes

- `COST_BREAKDOWN.md` in each module explains granular component drivers.
- Infracost provides numeric estimates from the actual Terraform plan.
