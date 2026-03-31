# Root Stack Orchestration: AWS Compute Platform

This root stack demonstrates **module orchestration** and **cross-module wiring**.

Instead of manually deploying networking → security → compute separately, this stack:
1. Orchestrates all modules as a **single deployment unit**
2. Wires module outputs to inputs automatically
3. Enables one-command `terraform apply` for full environment

## Single Command Deployment

```bash
cd platforms/github-iac-terraform/aws-infrastructure/aws-compute-platform

# Plan full environment
terraform plan -var-file=env/dev/terraform.tfvars

# Deploy full environment (VPC + Security + EC2 + RDS, etc.)
terraform apply -var-file=env/dev/terraform.tfvars -auto-approve
```

**Result**: All modules deployed with correct dependencies, in parallel where possible.

---

## Module Dependency Flow

```
aws-compute-platform/main.tf (ORCHESTRATOR)
    │
    ├─→ module "vpc"
    │        └─→ outputs: vpc_id, private_subnets[], public_subnets[]
    │
    ├─→ module "security_groups" (USES vpc_id from above)
    │        └─→ outputs: app_sg_id, db_sg_id, cache_sg_id
    │
    ├─→ module "ec2_app_tier" (USES public_subnets + app_sg_id from above)
    │        └─→ outputs: instance_ids, sg_id
    │
    ├─→ module "rds_database" (USES private_subnets + db_sg_id from above)
    │        └─→ outputs: db_endpoint, db_port
    │
    └─→ module "elasticache" (USES private_subnets + cache_sg_id from above)
             └─→ outputs: cache_endpoint

INTERDEPENDENCIES MANAGED BY TERRAFORM AUTOMATICALLY:
  terraform apply → creates VPC → security groups → compute + database + cache
  terraform destroy → destroys in reverse order
```

---

## Key Files

- `main.tf` - Module definitions with wiring (outputs → inputs)
- `variables.tf` - Input variables for the entire stack
- `outputs.tf` - Outputs from orchestrated modules
- `locals.tf` - Common tags, naming conventions
- `providers.tf` - AWS provider config
- `env/dev/terraform.tfvars` - Dev environment values
- `env/staging/terraform.tfvars` - Staging values
- `env/prod/terraform.tfvars` - Production values

---

## Compared to Individual Module Deployment

### ❌ Without Orchestration (Current)
```bash
# Manual deployment in correct order
cd aws-infrastructure/networking/vpc
terraform apply -var-file=env/dev/terraform.tfvars
# Copy vpc_id from output manually
cd ../../compute/security/security-groups
terraform apply -var-file=env/dev/terraform.tfvars -var="vpc_id=vpc-12345"
# Copy sg_id from output manually
cd ../../iaas/ec2
terraform apply -var-file=env/dev/terraform.tfvars -var="vpc_id=vpc-12345" -var="sg_id=sg-67890"
# If VPC creation fails partway, SGs and EC2 are orphaned
# Manual cleanup required
```

### ✅ With Orchestration (New)
```bash
cd aws-compute-platform
terraform apply -var-file=env/dev/terraform.tfvars
# DONE. All modules deployed correctly, in order, with wiring automatic.
# If any module fails, terraform rollback is atomic across all.
dev / staging / prod use the same orchestration → consistency
```

---

## Module Wiring Examples

### Example 1: VPC → Security Groups

**networking/vpc/outputs.tf** (PRODUCER)
```hcl
output "vpc_id" {
  value       = aws_vpc.main.id
  description = "VPC ID for security group attachment"
}

output "private_subnets" {
  value       = aws_subnet.private[*].id
  description = "Private subnet IDs for database placement"
}
```

**aws-compute-platform/main.tf** (CONSUMER)
```hcl
module "vpc" {
  source = "../networking/vpc"
  
  availability_zones = var.availability_zones
  cidr_block        = var.vpc_cidr
  environment       = var.environment
}

module "security_groups" {
  source = "../security/security-groups"
  
  vpc_id = module.vpc.vpc_id  # ← WIRING: Takes VPC output as input
  environment = var.environment
  
  depends_on = [module.vpc]  # Optional: Terraform figures this out automatically
}
```

---

### Example 2: Security Groups → EC2

**security/security-groups/outputs.tf** (PRODUCER)
```hcl
output "app_sg_id" {
  value = aws_security_group.app.id
}
```

**aws-compute-platform/main.tf** (CONSUMER)
```hcl
module "ec2_app_tier" {
  source = "../compute/iaas/ec2"
  
  subnet_id = module.vpc.public_subnets[0]  # ← Multiple wiring
  security_group_id = module.security_groups.app_sg_id  # ← Wiring
  
  instance_type = var.instance_type
  environment   = var.environment
}
```

---

### Example 3: EC2 → RDS (DNS Registration)

**compute/iaas/ec2/outputs.tf** (PRODUCER)
```hcl
output "instance_ids" {
  value = aws_instance.main[*].id
}

output "instance_private_ips" {
  value = aws_instance.main[*].private_ip
}
```

**compute/database/rds/variables.tf** (CONSUMER)
```hcl
variable "app_instance_security_groups" {
  type = list(string)
  description = "App tier security group IDs to grant RDS access"
}
```

**aws-compute-platform/main.tf** (ORCHESTRATOR)
```hcl
module "ec2_app" {
  source = "../compute/iaas/ec2"
  # ... config ...
}

module "rds_database" {
  source = "../compute/database/rds"
  
  # Wiring: RDS ingress rule trusts app tier
  app_instance_security_groups = [module.security_groups.app_sg_id]
  database_subnet_group_name   = module.vpc.db_subnet_group_name
  
  # RDS knows to wait for app SG because depends_on is auto-detected
}

# Later, app tier connects to RDS via:
module "ec2_app" {
  # ...
  db_host = module.rds_database.db_endpoint  # ← Wiring: Pass DB endpoint to app
  db_port = module.rds_database.db_port
}
```

---

## Deployment Checklist

After setting up root stack, verify:

- [ ] `terraform init` works (state backend configured)
- [ ] `terraform validate` passes (syntax correct)
- [ ] `terraform plan` shows all modules in correct order
- [ ] `terraform apply` completes without errors
- [ ] Modules are created in dependency order (VPC first, etc.)
- [ ] Outputs visible: `terraform output`
- [ ] Can destroy cleanly: `terraform destroy` reverses order
- [ ] Branch protection gates pushes (forces PR review)
- [ ] CI workflow tests plan before merge

---

## Next Steps

1. ✅ Create root stacks in each cloud (aws-compute-platform, azure-compute-platform, gcp-compute-platform)
2. ✅ Update individual modules to export outputs
3. ✅ Wire module outputs → inputs in root stacks
4. ✅ Test end-to-end: plan → apply → destroy
5. ✅ Document in runbooks (linked from README)
6. ✅ Update CI to validate root stacks on PR
