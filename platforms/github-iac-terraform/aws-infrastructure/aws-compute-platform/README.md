# AWS Compute Platform Root Stack

**Module Orchestration for One-Command Environment Deployment**

This root stack demonstrates how to orchestrate multiple Terraform modules into a single, reproducible deployment unit. Deploy a complete AWS environment (VPC → Security Groups → EC2 → RDS → ElastiCache) with one command.

---

## Quick Start

### Dev Environment (Fastest)

```bash
cd platforms/github-iac-terraform/aws-infrastructure/aws-compute-platform

# Initialize (one time)
terraform init -backend-config=env/dev/backend.hcl

# Plan (see what will be created)
terraform plan -var-file=env/dev/terraform.tfvars

# Apply (deploy everything)
terraform apply -var-file=env/dev/terraform.tfvars

# Clean up (destroy everything)
terraform destroy -var-file=env/dev/terraform.tfvars
```

### Staging Environment

```bash
terraform init -backend-config=env/staging/backend.hcl
terraform apply -var-file=env/staging/terraform.tfvars
```

### Production Environment

```bash
terraform init -backend-config=env/prod/backend.hcl
terraform apply -var-file=env/prod/terraform.tfvars -auto-approve=false  # Manual review required
```

---

## What Gets Deployed

| Component | Module | Purpose | Dev | Staging | Prod |
|-----------|--------|---------|-----|---------|------|
| VPC | `../networking/vpc` | Network foundation | ✓ | ✓ | ✓ |
| Security Groups | `../security/security-groups` | Network access control | ✓ | ✓ | ✓ |
| Load Balancer | `../compute/networking/elb-alb` | Public entry point | ✓ | ✓ | ✓ |
| EC2 Instances | `../compute/iaas/ec2` | Compute (IaaS) | ✓ (1) | ✓ (2) | ✓ (3) |
| RDS Database | `../compute/database/rds` | Managed DB | ✗ | ✗ | ✗ |
| ElastiCache | `../compute/cache/elasticache` | In-memory cache | ✗ | ✓ | ✓ |

**Status**: VPC, Security Groups, Load Balancer, and EC2 are active. RDS and ElastiCache are commented out in `main.tf` — uncomment to activate.

---

## Module Dependency Graph

```
VPC (foundation)
  ├─→ Security Groups (uses VPC ID)
  │    ├─→ Load Balancer (uses VPC + SG IDs)
  │    ├─→ EC2 Instances (uses VPC + SG IDs)
  │    └─→ RDS (uses VPC + SG IDs) [commented out]
  └─→ ElastiCache (uses VPC + SG IDs) [commented out]

Terraform tracks these automatically → applies in correct order
```

---

## Configuration per Environment

### Dev (Minimal Resources)

- **VPC CIDR**: 10.0.0.0/16
- **AZs**: 2 (us-east-1a, us-east-1b)
- **Instances**: t3.micro, count=1
- **SSH Access**: 0.0.0.0/0 (⚠️ Open to world - dev only!)
- **Database**: Disabled
- **Cache**: Disabled

**Cost**: ~$5/month

### Staging (Production-Like)

- **VPC CIDR**: 10.1.0.0/16
- **AZs**: 2 (us-east-1a, us-east-1b)
- **Instances**: t3.small, count=2
- **SSH Access**: VPN/corporate network (10.0.0.0/8)
- **Database**: MySQL 8.0
- **Cache**: ElastiCache t3.micro

**Cost**: ~$20-30/month

### Production (High Availability)

- **VPC CIDR**: 10.10.0.0/16
- **AZs**: 3 (us-east-1a, us-east-1b, us-east-1c)
- **Instances**: t3.medium, count=3
- **SSH Access**: Bastion host only (10.0.0.0/8)
- **Database**: MySQL 8.0, multi-AZ
- **Cache**: ElastiCache t3.small, multi-node

**Cost**: ~$100-150/month

---

## Outputs After Deployment

Once applied, view the deployed infrastructure:

```bash
# Show all outputs
terraform output

# Show specific output
terraform output vpc_id
terraform output alb_dns_name
terraform output ec2_instance_ids

# JSON format (useful for scripting)
terraform output -json | jq .
```

**Key outputs**:
- `vpc_id` — VPC identifier
- `alb_dns_name` — Public endpoint (load balancer)
- `ec2_instance_ids` — EC2 instance IDs
- `db_security_group_id` — Security group for database access

---

## Cross-Module Wiring Examples

### Example 1: VPC → Security Groups

**`main.tf` (ORCHESTRATOR)**
```hcl
module "vpc" { ... }

module "security_groups" {
  source = "../security/security-groups"
  vpc_id = module.vpc.vpc_id  # ← WIRING: VPC output → SG input
}
```

**How it works**:
1. VPC module creates `aws_vpc.main` and exports `output "vpc_id"`
2. Security Groups module receives `var.vpc_id`
3. Security Groups module uses it to create `aws_security_group.app` in that VPC
4. Terraform auto-manages the dependency (VPC created first)

### Example 2: EC2 → Load Balancer → RDS

**`main.tf` (ORCHESTRATOR)**
```hcl
module "ec2_app_tier" {
  subnet_id         = module.vpc.public_subnets[0]           # ← From VPC
  security_group_id = module.security_groups.app_sg_id       # ← From SG module
}

module "load_balancer" {
  security_group_id = module.security_groups.alb_sg_id       # ← From SG module
  subnet_ids        = module.vpc.public_subnets              # ← From VPC
}

module "rds_database" {
  subnet_ids        = module.vpc.private_subnets             # ← From VPC
  security_group_id = module.security_groups.db_sg_id        # ← From SG module
  # App tier can connect to RDS via private network
}
```

---

## Advanced: Customizing for Your Environment

### Add a new EC2 Instance Pool

1. Duplicate `ec2_app_tier` module config (lines ~80-100 in `main.tf`)
2. Rename: `ec2_background_workers`
3. Change variables:
   ```hcl
   module "ec2_background_workers" {
     source = "../compute/iaas/ec2"
     
     instance_type    = "t3.large"  # More CPU for background jobs
     instance_count   = 2
     security_group_id = module.security_groups.worker_sg_id  # Different SG
   }
   ```
4. `terraform plan` shows the new resources
5. `terraform apply` creates them

### Enable RDS Database

Uncomment lines ~115-130 in `main.tf`:
```hcl
module "rds_database" {
  source = "../compute/database/rds"
  
  subnet_ids        = module.vpc.private_subnets
  security_group_id = module.security_groups.db_sg_id
  
  engine         = var.rds_engine
  engine_version = var.rds_engine_version
  # ... other config
}
```

Then add to `env/*/terraform.tfvars`:
```hcl
rds_allocated_storage = 20
rds_db_name           = "appdb"
rds_username          = "admin"
```

Run:
```bash
terraform plan -var-file=env/dev/terraform.tfvars
# Shows new RDS resources
terraform apply -var-file=env/dev/terraform.tfvars
```

---

## Validation Checklist

Before deploying to production:

- [ ] `terraform validate` passes (syntax OK)
- [ ] `terraform plan` shows expected resources (review carefully)
- [ ] All modules are accessible (source paths correct)
- [ ] Required environment variables set (AWS_REGION, AWS_PROFILE, etc.)
- [ ] S3 bucket + DynamoDB table exist for state backend
- [ ] SSH key pair created (if `ec2_key_name` set)
- [ ] Security groups restrict access appropriately
- [ ] Branch protection enabled (PR required before merge)
- [ ] CI workflow passes on related PR changes

---

## Troubleshooting

### Error: Module source not found

```
Error: no matching version found
  │ for source ../compute/iaas/ec2
```

**Cause**: The module path is wrong or the directory doesn't exist

**Fix**: Verify the module exists:
```bash
ls ../compute/iaas/ec2
```

Should show: `main.tf`, `variables.tf`, `outputs.tf`, etc.

### Error: vpc_id output not found

```
Error: Unsupported attribute
  on main.tf line 42, in module "security_groups":
  3: vpc_id = module.vpc.vpc_id
     ├────────────────────
     │ module.vpc is object with attributes...
     │ (output "vpc_id" is not...)
```

**Cause**: VPC module doesn't export `vpc_id`

**Fix**: Check VPC module's `outputs.tf` and use correct output name

### Instances not connecting to database

**Cause**: Security group isn't configured to allow traffic

**Fix**: Ensure RDS security group has ingress rule:
```hcl
ingress {
  from_port       = 3306
  to_port         = 3306
  protocol        = "tcp"
  security_groups = [module.security_groups.app_sg_id]
}
```

---

## Next Steps

1. ✅ Test deployment with `terraform apply -var-file=env/dev/terraform.tfvars`
2. ✅ Verify outputs: `terraform output`
3. ✅ Test SSH: `ssh -i key.pem ec2-user@<public-ip>`
4. ✅ Destroy to clean up: `terraform destroy`
5. ✅ Create similar root stacks for Azure and GCP
6. ✅ Update CI workflow to validate root stacks on PR

---

## Related Documentation

- [Root Stack Orchestration](/ROOT_STACK_ORCHESTRATION.md) — Conceptual overview
- [Branch Protection](/.github/BRANCH_PROTECTION.md) — PR workflow enforcement
- [CI Workflows](/.github/workflows/compute-modules-plan.yml) — Automated testing on PR
