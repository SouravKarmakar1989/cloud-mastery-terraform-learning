# Terraform + Ansible + Puppet: IaC Orchestration Patterns

This guide explains how **Terraform, Ansible, and Puppet** fit together in your infrastructure-as-code solution, and when to use each.

---

## The Problem They Solve

| Tool | Solves | Analogy |
|------|--------|---------|
| **Terraform** | "How do I create infrastructure (VPCs, instances, databases)?" | Architect designing buildings |
| **Ansible** | "How do I configure the OS and software inside the infrastructure?" | Contractor building interiors |
| **Puppet** | "How do I ensure configuration stays consistent over time?" | Janitor ensuring maintenance |

---

## Quick Comparison

```
TERRAFORM (Infrastructure Provisioning)
  ├─ Creates: VPC, EC2, RDS, ELB, Security Groups
  ├─ Declarative: "I want this state"
  ├─ Idempotent: Safe to run multiple times
  ├─ Output: Cloud resources with IP addresses, DNS names
  └─ Example: EC2 instance with name "web-server-1" in VPC 10.0.0.0/16

        ↓ (passes EC2 IPs/DNS to next layer)

ANSIBLE (Configuration Management)
  ├─ Configures: OS, packages, services, application code
  ├─ Imperative: "Run these commands in order"
  ├─ Agentless: Uses SSH, no daemon required
  ├─ Input: IPs/DNS names from Terraform outputs
  └─ Example: Install Docker, start app container on those EC2 instances

        ↓ (app now running, but what if drift occurs?)

PUPPET (Continuous Enforcement)
  ├─ Enforces: Desired config continuously
  ├─ Declarative: "OS should always have X package version"
  ├─ Agent-based: Puppet agent runs on each node
  ├─ Auto-corrects: If config drifts, Puppet fixes it
  └─ Example: If someone uninstalls Docker, Puppet reinstalls it automatically
```

---

## Real-World Workflow

### Scenario: Deploy a 3-Tier Web App

#### Step 1: Terraform (Infrastructure Day 0)

```bash
# Create the infrastructure
terraform apply -var-file=env/prod/terraform.tfvars

# Output:
# - VPC: vpc-12345
# - EC2 Instances: 10.0.1.5, 10.0.1.6, 10.0.2.7 (app tier)
# - RDS Endpoint: db.c1234567.us-east-1.rds.amazonaws.com
# - Load Balancer: myapp-alb-987654.us-east-1.elb.amazonaws.com
```

**Result**: Infrastructure exists, but instances have no software.

#### Step 2: Ansible (Configuration Day 0)

```bash
# Use Terraform outputs to create Ansible inventory
terraform output -json | jq '.ec2_instance_private_ips.value[]' > inventory.ini

# Configure all instances
ansible-playbook -i inventory.ini site.yml

# site.yml does:
# - Update OS packages
# - Install Docker + Docker Compose
# - Copy app code from Git
# - Set environment variables (RDS endpoint, API keys)
# - Start application container
```

**Result**: App is running, serving traffic via load balancer.

#### Step 3: Puppet (Continuous Enforcement Day 1+)

```
Puppet ensures:
  - Docker daemon always running
  - App always restarted if it crashes
  - Log rotation happens weekly
  - Security patches auto-applied
  - SSH configuration complies with policy
  
If a server drifts:
  - Human accidentally stops Docker
  - Puppet detects drift (15 min interval)
  - Puppet auto-starts Docker
  - Alert sent to DevOps team
  - No manual intervention needed
```

---

## Your Current Architecture: Terraform-Centric

```
┌─────────────────────────────────────────────────────────────────┐
│ Terraform (You Have This)                                       │
│ ─────────────────────────────────────────────────────────────── │
│ ✓ Root stack orchestration (aws-compute-platform)              │
│ ✓ Cross-module wiring (VPC → SGs → EC2)                        │
│ ✓ Environment management (dev/staging/prod)                    │
│ ✓ CI/CD gates (plan + Infracost on PR)                         │
│ ✓ Branch protection (master/main requires PR)                  │
│                                                                  │
│ Output: Instances with public IPs, RDS endpoint, ALB DNS       │
└─────────────────────────────────────────────────────────────────┘
                              ↓
                    ¿ What's missing?
                              ↓
┌─────────────────────────────────────────────────────────────────┐
│ Ansible (Optional - Next Layer)                                │
│ ─────────────────────────────────────────────────────────────── │
│ ✗ NOT implemented yet                                           │
│ ✗ How to install Docker on those EC2 instances?               │
│ ✗ How to deploy app code to instances?                        │
│ ✗ How to configure RDS credentials in app config?             │
│                                                                  │
│ This is where Ansible comes in                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

## Integration Pattern: Terraform → Ansible

### How It Works

```
1. Terraform creates resources + outputs IPs
2. Ansible reads those IPs from Terraform state
3. Ansible runs playbooks against those IPs
4. Application is now running on infrastructure

┌──────────────────────────────────────────────────────────────┐
│ Terraform                                                    │
│ $ terraform apply                                            │
│ Output: 10.0.1.5, 10.0.1.6, 10.0.2.7 (EC2 private IPs)  │
└──────────────────────────────────────────────────────────────┘
              ↓ (Terraform exports inventory)
┌──────────────────────────────────────────────────────────────┐
│ Ansible                                                      │
│ $ ansible-playbook -i inventory deploy-app.yml              │
│ Tasks:                                                       │
│   - name: Update all packages                                │
│     apt: update_cache=yes                                    │
│                                                              │
│   - name: Install Docker                                     │
│     apt: name=docker.io state=present                        │
│                                                              │
│   - name: Deploy app from Git                                │
│     git:                                                     │
│       repo: https://github.com/myorg/app                     │
│       dest: /opt/app                                         │
│                                                              │
│   - name: Start app container                                │
│     docker_container:                                        │
│       name: myapp                                            │
│       image: myapp:latest                                    │
│       env:                                                   │
│         DB_HOST: db.c1234567.us-east-1.rds.amazonaws.com │
│         DB_PORT: "3306"                                      │
│       ports:                                                 │
│         - "8000:8000"                                        │
└──────────────────────────────────────────────────────────────┘
                        ↓ (App deployed)
                    Requests → ALB → EC2 instances
```

---

## Practical Implementation: Terraform + Ansible

### Step 1: Update Terraform to Output Ansible Inventory

**`aws-compute-platform/outputs.tf`** (ADD THIS):

```hcl
output "ansible_inventory" {
  value = {
    all = {
      hosts = {
        for idx, ip in module.ec2_app_tier.instance_private_ips :
        "web-${idx + 1}" => {
          ansible_host = ip
          ansible_user = "ec2-user"  # For Amazon Linux
          role         = "webserver"
        }
      }
      vars = {
        ansible_python_interpreter = "/usr/bin/python3"
        db_host                     = "localhost"  # Change if RDS uncommented
        db_port                     = 3306
      }
    }
  }
}
```

### Step 2: Export Terraform State to Ansible

```bash
# After terraform apply, export inventory
cd aws-compute-platform
terraform output -json ansible_inventory | jq '.value' > ../../../ansible/inventory.json

# Or use Terraform's JSON template
terraform output -json | jq -r '.[].value.ansible_inventory' > ../../../ansible/inventory.yml
```

### Step 3: Create Ansible Playbook

**`ansible/site.yml`**:

```yaml
---
- name: Deploy web application
  hosts: all
  become: yes
  
  tasks:
    - name: Update all packages
      yum:
        name: "*"
        state: latest
    
    - name: Install Docker
      yum:
        name: docker
        state: present
    
    - name: Start Docker service
      systemd:
        name: docker
        enabled: yes
        state: started
    
    - name: Clone application
      git:
        repo: "https://github.com/myorg/myapp.git"
        dest: "/opt/myapp"
        version: "main"
    
    - name: Build application image
      docker_image:
        name: myapp
        build:
          path: "/opt/myapp"
          dockerfile: Dockerfile
    
    - name: Start application container
      docker_container:
        name: myapp
        image: myapp:latest
        state: started
        restart_policy: always
        ports:
          - "8000:8000"
        env:
          DB_HOST: "{{ db_host }}"
          DB_PORT: "{{ db_port }}"
          DB_NAME: "myapp"
```

### Step 4: Run Ansible

```bash
cd ansible

# Test connectivity (ping all hosts)
ansible -i inventory.yml all -m ping

# Deploy application
ansible-playbook -i inventory.yml site.yml -v

# Deploy to specific host
ansible-playbook -i inventory.yml site.yml -l web-1

# Dry-run (check what would happen)
ansible-playbook -i inventory.yml site.yml --check
```

---

## When to Add Puppet?

Add Puppet when you need **continuous enforcement** (not just initial setup).

### Signs You Need Puppet

- ✓ Configuration must stay consistent over 6+ months
- ✓ Multiple teams touching the same servers
- ✓ Compliance requirements (SOC2, PCI-DSS)
- ✓ Auto-recovery when config drifts
- ✓ Audit trail of all config changes

### Puppet Workflow

```
┌────────────────────────────────────────────────┐
│ Puppet Master (Central Policy Server)          │
│ - Defines desired state for all nodes          │
│ - Audit logs all changes                       │
│ - Reports compliance status                    │
└────────────────────────────────────────────────┘
              ↑              ↑              ↑
      (check-in) (check-in) (check-in)
      every 30 min
              ↓              ↓              ↓
┌────────────┐  ┌────────────┐  ┌────────────┐
│ web-1 node │  │ web-2 node │  │ web-3 node │
│ (Puppet    │  │ (Puppet    │  │ (Puppet    │
│  agent)    │  │  agent)    │  │  agent)    │
└────────────┘  ├────────────┤  └────────────┘
     ||         │ web-2 drift
     ||         │ detected:
    ✓ OK        │ SSH config
   (in sync)    │ changed
                │ Puppet fixes
```

Example Puppet manifest:

```puppet
# /etc/puppetlabs/code/environments/production/manifests/site.pp

node 'web-1', 'web-2', 'web-3' {
  class { '::docker': }  # Ensure Docker always installed
  
  docker::run { 'myapp':
    image   => 'myapp:latest',
    ports   => ['8000:8000'],
    env     => [
      'DB_HOST=db.c1234567.us-east-1.rds.amazonaws.com',
      'DB_PORT=3306',
    ],
    restart_policy => 'always',
  }
  
  # Enforce SSH configuration
  sshd_config { 'PermitRootLogin':
    ensure => present,
    value  => 'no',  # SSH key only
  }
}
```

---

## Tool Selection Matrix

| Scenario | Terraform | Ansible | Puppet |
|----------|-----------|---------|--------|
| "Create VPC + EC2" | ✅ **Use** | ❌ | ❌ |
| "Install Docker on instances" | ❌ | ✅ **Use** | ❌ |
| "Ensure Docker always running" | ❌ | ❌ | ✅ **Use** |
| "Deploy app code to instances" | ❌ | ✅ **Use** | ❌ |
| "SSH only with keys (enforce)" | ❌ | ⚠️ Maybe | ✅ **Use** |
| "Rotate SSL certificates auto" | ❌ | ❌ | ✅ **Use** |
| "Update packages weekly" | ❌ | ⚠️ Maybe | ✅ **Use** |
| "Create RDS database" | ✅ **Use** | ❌ | ❌ |
| "Configure RDS parameters" | ✅ **Use** | ❌ | ❌ |
| "Initial app deployment" | ❌ | ✅ **Use** | ❌ |
| "Continuous app health" | ❌ | ❌ | ✅ **Use** |

---

## Your Current Gap Analysis

### What You Have (✅)
- Terraform root stacks for orchestration
- Cross-module wiring (outputs → inputs)
- CI/CD gates on PR
- Branch protection on main

### What You're Missing (⚠️)
- **Ansible integration**: No playbooks to configure instances after creation
- **App deployment**: How does application code get to instances?
- **Health enforcement**: If Docker crashes, no auto-recovery without Puppet

### Recommended Next Steps

1. **Short term (1-2 weeks)**: Add Ansible
   - Create `ansible/` directory
   - Write playbooks for app deployment
   - Integrate Terraform outputs → Ansible inventory
   - Test end-to-end: Terraform create → Ansible deploy

2. **Medium term (1-2 months)**: Implement Ansible CI/CD
   - Add Ansible linting to CI workflow
   - Create `ansible-deploy.yml` workflow (post-Terraform apply)
   - Test on dev environment first

3. **Long term (2-3 months)**: Add Puppet
   - Set up Puppet master
   - Write manifests for continuous enforcement
   - Move toward "self-healing" infrastructure

---

## Example: Full Deployment Pipeline

```bash
# 1. Developer commits to feature branch
git checkout -b feature/add-cache-layer
# Edit aws-compute-platform/main.tf (uncomment ElastiCache module)

# 2. Create PR
git push origin feature/add-cache-layer
# GitHub Actions triggers:
#   ✓ terraform plan (shows new ElastiCache resources)
#   ✓ infracost estimate (shows cost increase)
#   ✓ security scan
# PR comment shows plan output

# 3. Review and approve PR
# Code reviewer sees ElastiCache addition is safe
# Approves PR

# 4. Merge to main
# More GitHub Actions triggered:
#   ✓ terraform apply (creates ElastiCache)
#   ✓ ansible-deploy.yml (configures app tier to use cache)
#   ✓ run smoke tests (verify app + cache working)
# (Optionally) Puppet continuous checks for drift

# 5. Later: Puppet auto-recovery
# If ElastiCache goes down:
#   - Puppet detects the issue
#   - Puppet restarts it automatically
#   - Alert sent to ops team
#   - No manual intervention needed
```

---

## Summary

| Tool | Purpose | Activation |
|------|---------|------------|
| **Terraform** | Create infrastructure | Now (implemented) |
| **Ansible** | Configure + deploy app | Next (add in 1-2 weeks) |
| **Puppet** | Continuous enforcement | Later (add in 2-3 months) |

**Architecture Flow**:
```
Developer Commit
       ↓
Git PR created
       ↓
CI gates pass (Terraform plan + linting)
       ↓
Code review approved
       ↓
Merge to main
       ↓
Terraform apply (infrastructure created)
       ↓
Ansible playbook (app deployed to instances)
       ↓
Puppet agent (continuous config enforcement)
       ↓
Application running + healthy
```

---

## Next: Implementation Steps

1. **Create `ansible/` directory structure** (see below)
2. **Write deployment playbook** (`ansible/site.yml`)
3. **Export Terraform outputs to Ansible** (Python script)
4. **Create GitHub Actions workflow** (`ansible-deploy.yml`)
5. **Add to CI/CD pipeline** (runs after Terraform)

Would you like me to create the Ansible directory structure and playbooks next?

---

## Quick Reference: Ansible Directory Structure

```
ansible/
├── ansible.cfg              # Ansible configuration
├── inventory.yml            # Hosts generated from Terraform
├── site.yml                 # Main playbook
├── roles/
│   ├── docker/              # Role: Install & configure Docker
│   │   ├── defaults/
│   │   ├── tasks/
│   │   ├── files/
│   │   └── templates/
│   ├── app/                 # Role: Deploy application
│   │   ├── defaults/
│   │   ├── tasks/
│   │   └── templates/
│   └── monitoring/          # Role: Configure monitoring
│       ├── defaults/
│       └── tasks/
├── group_vars/
│   └── all.yml              # Variables for all hosts
├── host_vars/
│   └── web-1.yml            # Host-specific variables
└── scripts/
    └── generate_inventory.py # Script: Terraform state → Inventory
```
