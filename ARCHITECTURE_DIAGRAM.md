# Architecture Diagram: CI/CD + Root Stack Orchestration

## Full Deployment Pipeline

```
┌──────────────────────────────────────────────────────────────────────┐
│ DEVELOPER WORKFLOW                                                   │
└──────────────────────────────────────────────────────────────────────┘

1. LOCAL DEVELOPMENT
   ├─ Developer edits Terraform in aws-compute-platform/
   ├─ Runs: terraform fmt -recursive
   ├─ Runs: terraform validate
   └─ Commits: git commit -m "Add cache layer"

2. PUSH TO GITHUB
   └─ git push origin feature/add-cache

3. PULL REQUEST CREATED
   └─ Triggers GitHub Actions workflows


┌──────────────────────────────────────────────────────────────────────┐
│ CI/CD PIPELINE (Parallel Execution)                                  │
└──────────────────────────────────────────────────────────────────────┘

                        ┌─ compute-modules-plan.yml
       PR Opened ───→   ├─ Detects changed modules
                        └─ Runs for: AWS / Azure / GCP


       AWS Compute Modules           Azure Compute Modules       GCP Compute Modules
       (Matrix Jobs)                 (Matrix Jobs)               (Matrix Jobs)
       
       For each changed:             For each changed:           For each changed:
       ├─ terraform plan             ├─ terraform plan          ├─ terraform plan
       ├─ terraform show -json       ├─ terraform show -json    ├─ terraform show -json
       ├─ infracost breakdown        ├─ infracost breakdown     ├─ infracost breakdown
       ├─ post to PR ✓               ├─ post to PR ✓           ├─ post to PR ✓
       └─ status: PASS/FAIL          └─ status: PASS/FAIL      └─ status: PASS/FAIL
       
       (Parallel: max 5 at a time)
                        ↓
                    All pass?
                        ├─ Yes → plan-gate passes (PR can merge)
                        └─ No → Specific failures shown in PR comment


┌──────────────────────────────────────────────────────────────────────┐
│ BRANCH PROTECTION GATE                                               │
└──────────────────────────────────────────────────────────────────────┘

       PR Status Checks:
       ├─ ✓ secret-scan (Gitleaks)
       ├─ ✓ tf-lint (format + validate)
       ├─ ✓ iac-scan (Checkov)
       ├─ ✓ sast (Semgrep)
       ├─ ✓ sca (Trivy)
       ├─ ✓ ci-gate ← aggregator job
       ├─ ✓ aws-compute-plan (if changes)
       ├─ ✓ azure-compute-plan (if changes)
       ├─ ✓ gcp-compute-plan (if changes)
       └─ ✓ plan-gate ← aggregator job
       
       Branch Protection Enforces:
       ├─ All status checks PASS (above)
       ├─ At least 1 code review APPROVE
       ├─ Branch up-to-date with main
       └─ No bypass for admins


┌──────────────────────────────────────────────────────────────────────┐
│ CODE REVIEW (Human Step)                                             │
└──────────────────────────────────────────────────────────────────────┘

       Team Member Views PR:
       ├─ Sees terraform plan output (in code diff)
       ├─ Sees infracost estimate (in PR comment)
       │  Example: "New resources: +$5.50/month"
       ├─ Reviews security implications
       ├─ Approves or requests changes
       └─ Approves PR ✓


┌──────────────────────────────────────────────────────────────────────┐
│ MERGE TO MAIN                                                        │
└──────────────────────────────────────────────────────────────────────┘

       Developer clicks "Squash and Merge"
            ↓
       Branch protection verified:
       ├─ All checks passed ✓
       ├─ Reviews approved ✓
       ├─ Up-to-date ✓
            ↓
       Merge committed to main
            ↓
       (Optional: Trigger apply workflow)


┌──────────────────────────────────────────────────────────────────────┐
│ INFRASTRUCTURE DEPLOYMENT (terraform apply)                          │
└──────────────────────────────────────────────────────────────────────┘

       Manual or Automated Apply:
            │
            ├─→ cd aws-compute-platform
            ├─→ terraform init -backend-config=env/prod/backend.hcl
            ├─→ terraform apply -var-file=env/prod/terraform.tfvars
            │
            └─→ Dependency Order (Terraform enforced):
                
                ┌─ Module 1: VPC
                │  └─ Outputs: vpc_id, public_subnets[], private_subnets[]
                │
                ├─ Module 2: Security Groups (waits for VPC)
                │  └─ Inputs: vpc_id ← from VPC
                │  └─ Outputs: app_sg_id, db_sg_id, cache_sg_id
                │
                ├─ Module 3: Load Balancer (waits for VPC + SGs)
                │  └─ Inputs: subnet_ids ← from VPC
                │  └─ Inputs: security_group_id ← from SGs
                │
                ├─ Module 4: EC2 Instances (waits for all above)
                │  └─ Inputs: subnet_id ← from VPC
                │  └─ Inputs: security_group_id ← from SGs
                │  └─ Outputs: instance_ids, instance_ips
                │
                ├─ Module 5: RDS Database (waits for all above)
                │  └─ Inputs: subnet_ids ← from VPC
                │  └─ Inputs: security_group_id ← from SGs
                │
                └─ Module 6: ElastiCache (waits for all above)
                   └─ Inputs: subnet_ids ← from VPC
                   └─ Inputs: security_group_id ← from SGs
                
                Result: Full environment deployed with correct ordering


┌──────────────────────────────────────────────────────────────────────┐
│ CONFIGURATION MANAGEMENT (Ansible - Future)                          │
└──────────────────────────────────────────────────────────────────────┘

       After Terraform completes:
       
       Terraform Outputs:
       ├─ vpc_id
       ├─ ec2_instance_ids: [i-abc123, i-def456, i-ghi789]
       ├─ alb_dns_name: my-alb-987654.us-east-1.elb.amazonaws.com
       └─ db_endpoint: mydb.c9876543.us-east-1.rds.amazonaws.com
       
            ↓ (Convert to Ansible inventory)
       
       Ansible Playbook:
       ├─ Connect to EC2 instances (via IPs from Terraform)
       ├─ Install Docker
       ├─ Clone application code
       ├─ Build container image
       ├─ Start application container
       ├─ Pass RDS endpoint as environment variable
       └─ Application now running


┌──────────────────────────────────────────────────────────────────────┐
│ CONTINUOUS ENFORCEMENT (Puppet - Future)                             │
└──────────────────────────────────────────────────────────────────────┘

       Production Running:
       
       Puppet Agent (on each EC2 instance):
       ├─ Checks-in every 30 minutes
       ├─ Verifies current state vs desired state
       ├─ Reports to Puppet Master (central server)
       ├─ Auto-corrects if drift detected
       └─ Sends alert if fix couldn't auto-restore
       
       Example: Someone accidental stops Docker
       ├─ Puppet detects: Docker service != running
       ├─ Puppet auto-starts Docker
       ├─ Alert sent to ops: "Docker was down, restarted"
       ├─ Manual follow-up investigation (why did it stop?)
       └─ Root cause fixed in Puppet manifests


┌──────────────────────────────────────────────────────────────────────┐
│ CLEANUP (Destroy Infrastructure)                                     │
└──────────────────────────────────────────────────────────────────────┘

       When done (e.g., test environment):
       
       terraform destroy -var-file=env/dev/terraform.tfvars
       
       Destroy Order (REVERSE of apply):
       
       ├─ Module 6: Destroy ElastiCache
       ├─ Module 5: Destroy RDS Database
       ├─ Module 4: Destroy EC2 Instances
       ├─ Module 3: Destroy Load Balancer
       ├─ Module 2: Destroy Security Groups
       └─ Module 1: Destroy VPC
       
       Result: All resources deleted in correct order (no orphans)
```

---

## Module Dependency Graph

```
                       ┌─────────────────────────────────────┐
                       │   Root Stack Orchestrator           │
                       │  aws-compute-platform/main.tf       │
                       └─────────────────────────────────────┘
                                    │
                    ┌───────────────┼───────────────┐
                    │               │               │
                    ▼               ▼               ▼
          ┌──────────────────┐  ┌──────────────────┐  ┌──────────────────┐
          │  VPC Module      │  │  Locals/Tags     │  │  Variables       │
          │  (Foundation)    │  │  (Common config) │  │  (Inputs)        │
          ├──────────────────┤  ├──────────────────┤  ├──────────────────┤
          │ Input:           │  │ - project_name   │  │ - vpc_cidr       │
          │ - cidr_block     │  │ - environment    │  │ - region         │
          │ - az_count       │  │ - common_tags    │  │ - instance_type  │
          │                  │  │                  │  │                  │
          │ Output:          │  │                  │  │                  │
          │ - vpc_id ❌──┐   │  │                  │  │                  │
          │ - public_sn │   │  │                  │  │                  │
          │ - private_sn│   │  │                  │  │                  │
          └──────────────────┘  └──────────────────┘  └──────────────────┘
                    │                                        │
                    │ (WIRING)                               │
                    ▼                                        │
          ┌──────────────────────────────────────┐          │
          │  Security Groups Module              │          │
          │  (Network Access Control)            │◄─────────┘
          ├──────────────────────────────────────┤
          │ Input:                               │
          │ - vpc_id ← FROM VPC OUTPUT           │───┐
          │ - allowed_cidrs                      │   │
          │                                      │   │
          │ Output:                              │   │
          │ - app_sg_id ❌──┐                   │   │
          │ - db_sg_id  ❌──┼──┐                │   │
          │ - cache_sg_id ────┼──┐              │   │
          └──────────────────────────────────────┘   │
                    │                                │
        ┌───────────┼────────────┬──────────────┐   │
        │           │            │              │   │
        ▼           ▼            ▼              ▼   │
    ┌────────┐ ┌────────┐ ┌──────────┐ ┌──────────┐ │
    │ ALB    │ │ EC2    │ │ RDS      │ │ Cache    │ │
    ├────────┤ ├────────┤ ├──────────┤ ├──────────┤ │
    │ Input: │ │ Input: │ │ Input:   │ │ Input:   │ │
    │ subnets│ │ subnets│ │ subnets  │ │ subnets  │ │
    │ sg_id  │ │ sg_id  │ │ sg_id    │ │ sg_id    │ │◄────┘
    │← V/SG  │ │← V/SG  │ │← V/SG    │ │← V/SG    │ │
    │        │ │        │ │          │ │          │ │
    │Output: │ │Output: │ │ Output:  │ │ Output:  │ │
    │ dns    │ │ ids/ips│ │ endpoint │ │ endpoint │ │
    └────────┘ └────────┘ └──────────┘ └──────────┘ │
        │           │            │              │   │
        └───────────┴────────────┴──────────────┘   │
                    │                               │
                    ▼                               │
        ┌─────────────────────────────────────┐    │
        │ Root Stack Outputs                  │    │
        │ (for downstream use or display)     │    │
        ├─────────────────────────────────────┤    │
        │ - vpc_id                            │    │
        │ - alb_dns_name                      │    │
        │ - ec2_instance_ids                  │    │
        │ - db_endpoint                       │    │
        │ - cache_endpoint                    │    │
        │ - security_group_ids                │    │
        └─────────────────────────────────────┘    │
                                                    │
        ❌ = Output (wired to dependent module)     │
        ← V/SG = Wiring: VPC + Security Group IDs ─┘
```

---

## File Structure Overview

```
cloud-mastery-terraform-learning/
│
├── .github/
│   ├── workflows/
│   │   ├── ci.yml ........................... EXISTING (general CI gate)
│   │   ├── compute-modules-plan.yml ........ NEW (module plan + infracost)
│   │   └── ...
│   │
│   └── BRANCH_PROTECTION.md ............... NEW (setup guide)
│
├── platforms/github-iac-terraform/
│   │
│   ├── aws-infrastructure/
│   │   ├── compute/ ........................ EXISTING (individual modules)
│   │   │   ├── iaas/ec2/
│   │   │   ├── paas/elastic-beanstalk/
│   │   │   ├── serverless/lambda/
│   │   │   └── ...
│   │   │
│   │   ├── aws-minimal/ ................... EXISTING (smoke test)
│   │   │
│   │   └── aws-compute-platform/ .......... NEW (root stack orchestration)
│   │       ├── main.tf .................... Module definitions + wiring
│   │       ├── variables.tf ............... Input variables
│   │       ├── outputs.tf ................. Wired module outputs
│   │       ├── versions.tf
│   │       ├── providers.tf
│   │       ├── locals.tf
│   │       ├── README.md .................. Comprehensive guide
│   │       │
│   │       └── env/
│   │           ├── dev/
│   │           │   ├── terraform.tfvars ... Dev values (1 micro)
│   │           │   └── backend.hcl ........ Dev state backend
│   │           ├── staging/
│   │           │   ├── terraform.tfvars ... Staging values (2 small)
│   │           │   └── backend.hcl ........ Staging state backend
│   │           └── prod/
│   │               ├── terraform.tfvars ... Prod values (3 medium)
│   │               └── backend.hcl ........ Prod state backend
│   │
│   ├── azure-infrastructure/
│   │   ├── compute/ ........................ EXISTING (individual modules)
│   │   └── azure-compute-platform/ ....... FUTURE (similar structure)
│   │
│   └── gcp-infrastructure/
│       ├── compute/ ........................ EXISTING (individual modules)
│       └── gcp-compute-platform/ ......... FUTURE (similar structure)
│
├── IMPLEMENTATION_SUMMARY.md ............... NEW (this file summary)
├── ROOT_STACK_ORCHESTRATION.md ............ NEW (concepts & examples)
└── ANSIBLE_PUPPET_GUIDE.md ................ NEW (integration roadmap)
```

---

## Cost & Performance Implications

### Infrastructure Cost (Monthly)

| Environment | Configuration | Estimated Cost |
|------------|---------------|-----------------|
| **Dev** | 1 × t3.micro, 2 AZs | ~$5-10 |
| **Staging** | 2 × t3.small, 2 AZs | ~$20-30 |
| **Prod** | 3 × t3.medium, 3 AZs | ~$100-150 |

Costs include: compute (EC2), networking (VPC/ALB), database (RDS optional).
Excludes: data transfer, storage, support plans.

### CI/CD Performance

| Operation | Duration | Notes |
|-----------|----------|-------|
| terraform plan (one module) | 30-60s | Cached after first run |
| Infracost breakdown | 10-20s | API call to pricing |
| Parallel matrix (5 modules) | ~60s | Runs in parallel |
| Full CI gate (all jobs) | 2-3 min | Secret scan + linting + plans |
| Branch protection feedback | Immediate | Status appears on PR instantly |

---

## Next: Quick Action Items

1. **Set up branch protection** (5 min)
   - See `.github/BRANCH_PROTECTION.md`

2. **Test CI workflow** (10 min)
   - Create test PR with minor change
   - Watch `compute-modules-plan.yml` trigger
   - See Infracost comment on PR

3. **Test root stack** (15 min)
   - `cd aws-compute-platform`
   - `terraform init -backend-config=env/dev/backend.hcl`
   - `terraform plan -var-file=env/dev/terraform.tfvars`
   - Review plan output

4. **Read architecture docs** (20 min)
   - `ROOT_STACK_ORCHESTRATION.md`
   - `ANSIBLE_PUPPET_GUIDE.md`

Total: **~50 minutes to get up to speed**
