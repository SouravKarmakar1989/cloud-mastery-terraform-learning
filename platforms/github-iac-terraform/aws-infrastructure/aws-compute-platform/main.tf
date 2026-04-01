# ─────────────────────────────────────────────────────────────────────────────
# AWS COMPUTE PLATFORM ROOT STACK ORCHESTRATION
# ─────────────────────────────────────────────────────────────────────────────
#
# This root stack demonstrates:
# 1. MODULE ORCHESTRATION: Coordinating multiple compute modules as one unit
# 2. CROSS-MODULE WIRING: Module outputs → inputs, managed automatically by Terraform
#
# Single command deployment:
#   terraform apply -var-file=env/dev/terraform.tfvars
#
# Result: VPC → Security Groups → EC2 + RDS + ElastiCache, all wired, all deployed
#
# Dependencies managed automatically:
#   terraform apply creates in order: VPC → SGs → compute resources
#   terraform destroy reverses the order (compute → SGs → VPC)
#
# ─────────────────────────────────────────────────────────────────────────────

# ── Module 1: VPC (Networking Foundation) ──────────────────────────────────
# PRODUCES: vpc_id, public_subnets[], private_subnets[]
# CONSUMED BY: security groups, EC2, RDS, ElastiCache

module "vpc" {
  source = "../networking/vpc"

  cidr_block         = var.vpc_cidr
  availability_zones = var.availability_zones
  environment        = var.environment
  project            = var.project

  tags = local.common_tags
}

# ── Module 2: Security Groups (Network Access Control) ────────────────────
# CONSUMES: vpc_id (from VPC module)
# PRODUCES: app_sg_id, db_sg_id, cache_sg_id, alb_sg_id
# CONSUMED BY: EC2, RDS, ElastiCache, ALB

module "security_groups" {
  source = "../security/security-groups"

  vpc_id = module.vpc.vpc_id  # ← CROSS-MODULE WIRING: VPC → Security Groups

  environment        = var.environment
  project            = var.project
  ec2_allowed_cidrs  = var.ec2_allowed_ssh_cidrs

  tags = local.common_tags

  depends_on = [module.vpc]  # Optional: Terraform auto-figures this out
}

# ── Module 3: Application Load Balancer (Entry Point) ───────────────────
# CONSUMES: public_subnets[], alb_sg_id
# PRODUCES: alb_dns_name, alb_sg_id, target_group_arn

module "load_balancer" {
  source = "../compute/networking/elb-alb"

  vpc_id             = module.vpc.vpc_id
  subnet_ids         = module.vpc.public_subnets
  security_group_id  = module.security_groups.alb_sg_id  # ← WIRING
  
  environment = var.environment
  project     = var.project

  tags = local.common_tags

  depends_on = [module.vpc, module.security_groups]
}

# ── Module 4: EC2 App Tier (Compute - IaaS) ───────────────────────────────
# CONSUMES: public_subnets[], app_sg_id, target_group_arn
# PRODUCES: instance_ids[], instance_private_ips[]
# These instances will auto-discover RDS via DNS

module "ec2_app_tier" {
  source = "../compute/iaas/ec2"

  # Cross-module wiring: Use outputs from other modules
  subnet_id         = module.vpc.public_subnets[0]           # ← WIRING: VPC subnets
  security_group_id = module.security_groups.app_sg_id       # ← WIRING: Security groups
  key_name          = var.ec2_key_name

  instance_type = var.ec2_instance_type
  instance_count = var.ec2_instance_count
  
  environment = var.environment
  project     = var.project

  tags = local.common_tags

  depends_on = [module.vpc, module.security_groups]
}

# ── Module 5: RDS Database (Data Persistence) ─────────────────────────────
# CONSUMES: private_subnets[], db_sg_id
# PRODUCES: db_endpoint, db_port
# The app tier (EC2) will connect to this via private endpoint

# Placeholder: RDS module assumed at ../compute/database/rds
# Uncomment when RDS module is available:

# module "rds_database" {
#   source = "../compute/database/rds"
#
#   # Cross-module wiring: Database in private subnets only
#   subnet_ids        = module.vpc.private_subnets           # ← WIRING: Private subnets
#   security_group_id = module.security_groups.db_sg_id      # ← WIRING: DB security group
#
#   # Grant app tier access to database
#   # (RDS security group ingress rule allows app_sg_id)
#   app_instance_security_groups = [module.security_groups.app_sg_id]
#
#   engine        = var.rds_engine
#   engine_version = var.rds_engine_version
#   environment   = var.environment
#   project       = var.project
#
#   tags = local.common_tags
#
#   depends_on = [module.vpc, module.security_groups, module.ec2_app_tier]
# }

# ── Module 6: ElastiCache (In-Memory Cache) ────────────────────────────────
# CONSUMES: private_subnets[], cache_sg_id
# PRODUCES: cache_endpoint
# The app tier (EC2) will connect to this via private endpoint

# Placeholder: ElastiCache module assumed at ../compute/cache/elasticache
# Uncomment when available and enable_elasticache = true:

# module "elasticache" {
#   count  = var.enable_elasticache ? 1 : 0
#   source = "../compute/cache/elasticache"
#
#   # Cross-module wiring: Cache in private subnets only
#   subnet_ids        = module.vpc.private_subnets           # ← WIRING: Private subnets
#   security_group_id = module.security_groups.cache_sg_id   # ← WIRING: Cache security group
#
#   node_type   = var.cache_node_type
#   environment = var.environment
#   project     = var.project
#
#   tags = local.common_tags
#
#   depends_on = [module.vpc, module.security_groups]
# }

# ─────────────────────────────────────────────────────────────────────────────
# ORCHESTRATION FLOW
# ─────────────────────────────────────────────────────────────────────────────
#
# terraform apply with this config creates resources in this order:
#
#  1. VPC
#       ↓ (waits for VPC to complete)
#  2. Security Groups (uses vpc.vpc_id)
#  3. Load Balancer (uses vpc.public_subnets + security_groups.alb_sg_id)
#  4. EC2 Instances (uses all above outputs)
#  5. RDS (uses vpc.private_subnets + security_groups.db_sg_id)
#  6. ElastiCache (optional, uses vpc + security_groups)
#
# If any module fails:
#   - Terraform rollsback what it created
#   - Manual intervention is minimal (state is clean)
#
# terraform destroy reverses the order automatically
#
# ─────────────────────────────────────────────────────────────────────────────
