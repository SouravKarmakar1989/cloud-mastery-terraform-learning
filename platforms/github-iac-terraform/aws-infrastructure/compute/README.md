# AWS Compute Infrastructure (Deploy-Ready)

This folder contains deploy-ready Terraform modules for AWS compute aligned to Azure compute parity and AWS compute knowledge coverage.

## Module Families

- `iaas`: `ec2`, `asg`
- `networking`: `elb-alb`, `elb-nlb`, `elb-gwlb`
- `container`: `ecr`, `ecs-fargate`, `ecs-ec2`, `eks`, `app-runner`
- `serverless`: `lambda-runtime`, `api-gateway`, `step-functions`, `appsync`
- `paas`: `elastic-beanstalk`
- `specialized`: `batch`, `hpc-primitives`, `outposts-ready`
- `edge`: `static-site`
- `iac`: `cloudformation-bootstrap`, `cdk-bootstrap`, `sam-pipeline`
- `ops`: `ssm-ec2-profile`, `cloudwatch-xray`

## Standard Module Layout

Every module includes:

- `versions.tf`
- `providers.tf`
- `locals.tf`
- `variables.tf`
- `main.tf`
- `outputs.tf`
- `env/dev/backend.hcl`
- `env/dev/terraform.tfvars`
- `env/staging/backend.hcl`
- `env/staging/terraform.tfvars`
- `env/prod/backend.hcl`
- `env/prod/terraform.tfvars`
- `COST_BREAKDOWN.md`

## Deployment Pattern (per module)

Run from inside a module directory.

```powershell
terraform init -backend-config=env/dev/backend.hcl
terraform plan -var-file=env/dev/terraform.tfvars
terraform apply -var-file=env/dev/terraform.tfvars
```

Use `staging` or `prod` files for higher environments.

## Cost Planning Before Deploy

Before every deployment, review:

- module-level `COST_BREAKDOWN.md`
- centralized `COST_INDEX.md` in this folder
- numeric estimation workflow in `COST_ESTIMATION_RUNBOOK.md`

Cost docs include:

- granular component-level cost drivers
- workload-specific cost checklist
- key capacity assumptions to validate before apply

## Important Notes

- Several modules default to AWS default VPC/subnets to enable first deployment quickly.
- For production, replace default networking assumptions with dedicated VPC module outputs.
- Tagging convention is applied consistently via `locals.common_tags`.
