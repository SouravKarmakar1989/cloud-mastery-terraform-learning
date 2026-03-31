# Quick Reference Card: CI + Root Stack Orchestration

## 1-Minute Summary

✅ **CI Workflow** (`.github/workflows/compute-modules-plan.yml`)
- Auto-tests compute modules on PR
- Shows plan + Infracost estimate in PR comment
- Blocks merge if tests fail

✅ **Branch Protection** (`.github/BRANCH_PROTECTION.md`)
- Prevents direct pushes to main
- Requires PR + CI pass + code review
- Manual setup in GitHub UI (5 min)

✅ **Root Stack** (`aws-compute-platform/`)
- One-command deployment: `terraform apply -var-file=env/dev/terraform.tfvars`
- Orchestrates VPC → SGs → EC2 → RDS → ElastiCache
- Automatic dependency ordering

✅ **Module Wiring** (`main.tf` lines 1-150)
- VPC outputs → SG inputs
- SG outputs → EC2/RDS/Cache inputs
- Terraform manages dependencies automatically

✅ **Ansible/Puppet Guide** (`ANSIBLE_PUPPET_GUIDE.md`)
- Terraform creates infrastructure
- Ansible configures OS + software
- Puppet enforces config continuously

---

## Common Commands

### Initialize Root Stack (one time per environment)

```bash
cd platforms/github-iac-terraform/aws-infrastructure/aws-compute-platform

# Dev
terraform init -backend-config=env/dev/backend.hcl

# Staging
terraform init -backend-config=env/staging/backend.hcl

# Prod
terraform init -backend-config=env/prod/backend.hcl
```

### Plan Infrastructure

```bash
# Dev
terraform plan -var-file=env/dev/terraform.tfvars

# Staging
terraform plan -var-file=env/staging/terraform.tfvars

# Prod
terraform plan -var-file=env/prod/terraform.tfvars
```

### Deploy Infrastructure

```bash
# Dev (auto-approve for testing)
terraform apply -var-file=env/dev/terraform.tfvars

# Staging/Prod (manual review required)
terraform apply -var-file=env/staging/terraform.tfvars
terraform apply -var-file=env/prod/terraform.tfvars
```

### Destroy Infrastructure

```bash
# Destroys in reverse order (safe)
terraform destroy -var-file=env/dev/terraform.tfvars
```

### View Outputs

```bash
# All outputs
terraform output

# Specific output
terraform output vpc_id
terraform output alb_dns_name
terraform output ec2_instance_ids

# JSON (for scripting)
terraform output -json
```

---

## Troubleshooting Quick Answers

| Problem | Solution |
|---------|----------|
| S3 state bucket doesn't exist | Create it: `aws s3api create-bucket --bucket cloud-mastery-tf-state-dev --region us-east-1` |
| `terraform init` fails | Check AWS credentials: `aws sts get-caller-identity` |
| Plan shows 100 changes? | Likely first run after new state. Review carefully before apply. |
| Module source not found | Verify path to module exists: `ls ../compute/iaas/ec2` |
| CI workflow not triggering | Check paths in `.github/workflows/compute-modules-plan.yml` match file locations |
| Branch protection `main` not working | Did you click "Save" after creating the rule? Check Settings → Branches |
| Instances have no public IPs | Check `env/*/terraform.tfvars` has correct public subnet setup |
| Can't SSH to instances | Verify security group allows ingress on port 22 from your IP |

---

## File Reference Card

### You Need to Read These

| File | What It Explains | Time |
|------|-----------------|------|
| `IMPLEMENTATION_SUMMARY.md` | Overview of everything | 5 min |
| `ROOT_STACK_ORCHESTRATION.md` | How orchestration works | 10 min |
| `aws-compute-platform/README.md` | How to use root stack | 15 min |
| `ANSIBLE_PUPPET_GUIDE.md` | Full CI/CD pipeline roadmap | 20 min |
| `ARCHITECTURE_DIAGRAM.md` | Visual diagrams of all flows | 10 min |

### Reference (Don't need to read, just copy code)

| File | What It's For |
|------|---------------|
| `.github/BRANCH_PROTECTION.md` | Copy setup steps to GitHub UI |
| `.github/workflows/compute-modules-plan.yml` | CI job definition (already working) |
| `aws-compute-platform/main.tf` | Copy to create similar modules for Azure/GCP |
| `aws-compute-platform/env/*/terraform.tfvars` | Copy + modify for your values |

---

## Module Dependency Checklist

Before running `terraform apply`, verify:

- [ ] Backend S3 bucket exists (or create with `aws s3api create-bucket`)
- [ ] DynamoDB lock table exists (or create in AWS console)
- [ ] AWS credentials configured (`aws sts get-caller-identity` works)
- [ ] SSH key pair created (if `ec2_key_name` set)
- [ ] VPC CIDR doesn't conflict with other networks
- [ ] EC2 instance type available in region
- [ ] No resources with same name already exist

---

## Git Workflow (PR → CI → Merge → Deploy)

```
1. Create feature branch
   git checkout -b feature/my-change

2. Edit Terraform files
   vim platforms/.../main.tf

3. Test locally
   terraform validate
   terraform plan

4. Commit and push
   git add .
   git commit -m "Add feature"
   git push origin feature/my-change

5. GitHub Actions triggers CI
   ✓ compute-modules-plan.yml runs
   ✓ Shows plan + infracost on PR

6. Code review + approval
   Team member reviews PR comment

7. Merge PR
   GitHub handles merge

8. Terraform apply (manual or auto)
   terraform apply -var-file=env/prod/terraform.tfvars

9. Verify deployment
   terraform output
   # Check all resources exist
```

---

## Module Wiring Examples (Copy-Paste Ready)

### VPC Output

```hcl
# networking/vpc/outputs.tf
output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnets" {
  value = aws_subnet.public[*].id
}

output "private_subnets" {
  value = aws_subnet.private[*].id
}
```

### Security Group Input (Uses VPC Output)

```hcl
# security/security-groups/variables.tf
variable "vpc_id" {
  type = string
}

# security/security-groups/main.tf
resource "aws_security_group" "app" {
  vpc_id = var.vpc_id  # Takes VPC ID as input
}

# security/security-groups/outputs.tf
output "app_sg_id" {
  value = aws_security_group.app.id
}
```

### EC2 Input (Uses VPC + SG Outputs)

```hcl
# aws-compute-platform/main.tf

module "vpc" {
  source = "../networking/vpc"
}

module "security_groups" {
  source = "../security/security-groups"
  vpc_id = module.vpc.vpc_id  # ← WIRING
}

module "ec2_app_tier" {
  source = "../compute/iaas/ec2"
  
  subnet_id         = module.vpc.public_subnets[0]  # ← WIRING
  security_group_id = module.security_groups.app_sg_id  # ← WIRING
}
```

Terraform automatically:
- Waits for VPC before creating SGs
- Waits for SGs before creating EC2
- Destroys in reverse order (EC2 → SGs → VPC)

---

## Environment Configuration

### Dev (Minimal - Testing)

```hcl
aws_region           = "us-east-1"
environment          = "dev"
vpc_cidr             = "10.0.0.0/16"
ec2_instance_count   = 1
ec2_instance_type    = "t3.micro"
enable_elasticache   = false
```

**Cost**: ~$5-10/month

### Staging (Production-like)

```hcl
aws_region           = "us-east-1"
environment          = "staging"
vpc_cidr             = "10.1.0.0/16"
availability_zones   = ["us-east-1a", "us-east-1b"]
ec2_instance_count   = 2
ec2_instance_type    = "t3.small"
enable_elasticache   = true
```

**Cost**: ~$20-30/month

### Production (High Availability)

```hcl
aws_region           = "us-east-1"
environment          = "prod"
vpc_cidr             = "10.10.0.0/16"
availability_zones   = ["us-east-1a", "us-east-1b", "us-east-1c"]
ec2_instance_count   = 3
ec2_instance_type    = "t3.medium"
enable_elasticache   = true
```

**Cost**: ~$100-150/month

---

## Monitoring Checklist

After `terraform apply`, verify:

```bash
# Check VPC created
aws ec2 describe-vpcs --query 'Vpcs[?Tags[?Key==`Project`]].VpcId'

# Check instances running
aws ec2 describe-instances \
  --filters "Name=instance-state-name,Values=running" \
  --query 'Reservations[].Instances[].PrivateIpAddress'

# Check RDS endpoint
terraform output rds_endpoint

# Check ALB DNS
terraform output alb_dns_name
# Try: curl -I http://<alb_dns_name>

# Check security groups
aws ec2 describe-security-groups \
  --filters "Name=tag:Environment,Values=dev"
```

---

## Next Steps in Order

### Week 1
1. ✅ Read `IMPLEMENTATION_SUMMARY.md`
2. ✅ Set up branch protection (`.github/BRANCH_PROTECTION.md`)
3. ✅ Test CI: Create PR with minor change
4. ✅ Test root stack: `terraform plan -var-file=env/dev/terraform.tfvars`

### Week 2-3
5. Create similar root stacks for Azure + GCP
6. Update Makefile to reference root stacks
7. Document in team wiki

### Month 2
8. Create `ansible/` directory with playbooks
9. Create `ansible-deploy.yml` GitHub Actions workflow
10. Test end-to-end: Terraform create → Ansible deploy

### Month 3
11. Add Puppet master + agents
12. Write Puppet manifests for continuous enforcement
13. Test auto-recovery scenarios

---

## Critical Files Location

| What You Need | File Path |
|---------------|-----------|
| CI Workflow | `.github/workflows/compute-modules-plan.yml` |
| Branch Protection Setup | `.github/BRANCH_PROTECTION.md` |
| Root Stack Code | `platforms/github-iac-terraform/aws-infrastructure/aws-compute-platform/` |
| Root Stack Guide | `platforms/github-iac-terraform/aws-infrastructure/aws-compute-platform/README.md` |
| Concepts Explained | `ROOT_STACK_ORCHESTRATION.md` |
| Integration Roadmap | `ANSIBLE_PUPPET_GUIDE.md` |
| Full Architecture | `ARCHITECTURE_DIAGRAM.md` |
| This Quick Ref | `QUICK_REFERENCE.md` |

---

## One-Liner Cheat Sheet

```bash
# Deploy dev environment
cd aws-compute-platform && terraform init -backend-config=env/dev/backend.hcl && terraform apply -var-file=env/dev/terraform.tfvars

# Get all outputs
terraform output -json | jq .

# Destroy everything
terraform destroy -var-file=env/dev/terraform.tfvars

# Check AWS credentials
aws sts get-caller-identity

# Create S3 state bucket
aws s3api create-bucket --bucket cloud-mastery-tf-state-prod --region us-east-1

# Get EC2 IPs
aws ec2 describe-instances --query 'Reservations[].Instances[].PrivateIpAddress'

# SSH to instance
ssh ec2-user@<private-ip> -i <key.pem>
```

---

## Support Quick Links

| Issue | Documentation |
|-------|---|
| "How do I deploy?" | `aws-compute-platform/README.md` → Quick Start |
| "Why is plan showing 100 changes?" | `aws-compute-platform/README.md` → Troubleshooting |
| "How does module wiring work?" | `ROOT_STACK_ORCHESTRATION.md` → Module Wiring Examples |
| "When do I use Terraform vs Ansible?" | `ANSIBLE_PUPPET_GUIDE.md` → Tool Selection Matrix |
| "What's the full deployment pipeline?" | `ARCHITECTURE_DIAGRAM.md` → Full Deployment Pipeline |
| "How do I set up branch protection?" | `.github/BRANCH_PROTECTION.md` → Setup Steps |
| "Why did CI workflow fail?" | `.github/workflows/compute-modules-plan.yml` → Check comments + logs |
